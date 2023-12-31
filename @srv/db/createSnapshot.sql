﻿/***************************************************************************
Snapshot script:
	The script enables a quick creation of snapshots for databases. 
	It has two run modes defined by the optional parameter @exec_mode.
	  @exec_mode=0 (default) means printing the create snapshot statement and
	  @exec_mode=1 means creation of the snapshot database.
	  @database is mandatory input parameter.
	Tested on SQL Server 2008 and 2012.

Usage:
	EXEC [dbo].[Create_UserDb_Snapshot] @database = 'AdventureWorksDW2012'
	EXEC [dbo].[Create_UserDb_Snapshot] @database = 'AdventureWorksDW2012', @exec_mode=0
	EXEC [dbo].[Create_UserDb_Snapshot] @database = 'CWNET', @exec_mode=1

Date created:	2014-Mar-12
Author:			Igor Micev (igor.micev@hotmail.com; igor.micev@outlook.com)
***************************************************************************/

USE [master]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Create_UserDb_Snapshot]') AND [type] in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[Create_UserDb_Snapshot]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[Create_UserDb_Snapshot]
@database varchar(50),
@exec_mode bit=0
as
begin	
	 set nocount on
	 declare @err_text nvarchar(200)
	 if @database in ('master','model','tempdb')
	 begin
		set @err_text = 'Snapshot is not allowed for master, model and tempdb databases.'
		RAISERROR(@err_text,10,1)
		return;
	 end	
	 if object_id('tempdb..#usr_db_files_tbl') is not null
	    drop table #usr_db_files_tbl	
	 create table #usr_db_files_tbl(
		  [logicalName] varchar(100),
		  [physicalName] varchar(200)
	  )
	 insert into #usr_db_files_tbl(logicalName,physicalName)
	 select [mf].[name],[mf].[physical_name]
	 from sys.master_files as [mf]
	 where [mf].[database_id]=db_id(@database) and [mf].[type]=0 and [mf].[name] not in ('master','model','tempdb')

	 if (select count(*) from #usr_db_files_tbl)=0
	 begin
		set @err_text = 'The specified database does not exist.' 
		RAISERROR(@err_text,10,1) 
		return;
	 end
	 
	 declare @dyn_sql nvarchar(max)
	 declare @extension varchar(20)='snap'+right(replace(replace(replace(convert(varchar(20),getdate(),113),'-',''),':',''),' ',''),4)
	 declare @curLogicalName varchar(100), @curPhysicalName varchar(200)
	 
	 declare snap_cursor cursor for
	 select [t].[logicalName], [t].[physicalName] from #usr_db_files_tbl as [t]
	 open snap_cursor

	 declare @snapDbName nvarchar(100)
	 set @snapDbName=@database+'_snapshot_'+replace(replace(replace(convert(varchar(20),getdate(),113),'-',''),':',''),' ','')

	 fetch next from snap_cursor into @curLogicalName,@curPhysicalName
	 set @dyn_sql='CREATE DATABASE '+@snapDbName+' ON '+char(10)
	 while (@@FETCH_STATUS=0)
	 begin
		set @dyn_sql+='(name='''+@curLogicalName+''', filename='''+replace(replace(@curPhysicalName,right(@curPhysicalName,4),'.'+@extension),right(@curPhysicalName,4),'.'+@extension)+''')' 
		fetch next from snap_cursor into @curLogicalName,@curPhysicalName
		if (@@FETCH_STATUS=0)
		 set @dyn_sql+=', '+char(10)
	 end

	 set @dyn_sql+=char(10)
	 set @dyn_sql+='AS SNAPSHOT OF '+@database+char(10)
	 
	 if @exec_mode=convert(bit,0)
	  print char(10)+@dyn_sql
	 
	 if @exec_mode=convert(bit,1)
	 begin
		  begin try
		   exec sp_executesql @dyn_sql
		   print 'Snapshot database: '+@snapDbName+' created successfully.'
		  end try
		  begin catch
		   set @err_text = 'Snapshot for database '+@database+' cannot be created.'
		   RAISERROR(@err_text,16,1) 
		  end catch
	 end
	 
	 close snap_cursor
	 deallocate snap_cursor
	 drop table #usr_db_files_tbl
	 WAITFOR DELAY '00:00:01';
	 return;

end
