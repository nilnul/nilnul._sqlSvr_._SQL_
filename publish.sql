USE [master]
GO
/****** Object:  Database [nilnul3]    Script Date: 2013/10/6 11:12:57 ******/
CREATE DATABASE [nilnul3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NilNul2', FILENAME = N'D:\wyt\360yun\work130918\sln\nilnul._db\sqlSrvDbFile\nilnul.mdf' , SIZE = 26624KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NilNul2_log', FILENAME = N'D:\wyt\360yun\work130918\sln\nilnul._db\sqlSrvDbFile\nilnul_log.ldf' , SIZE = 52416KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
GO
ALTER DATABASE [nilnul3] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [nilnul3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [nilnul3] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [nilnul3] SET ANSI_NULLS ON 
GO
ALTER DATABASE [nilnul3] SET ANSI_PADDING ON 
GO
ALTER DATABASE [nilnul3] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [nilnul3] SET ARITHABORT ON 
GO
ALTER DATABASE [nilnul3] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [nilnul3] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [nilnul3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [nilnul3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [nilnul3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [nilnul3] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [nilnul3] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [nilnul3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [nilnul3] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [nilnul3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [nilnul3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [nilnul3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [nilnul3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [nilnul3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [nilnul3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [nilnul3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [nilnul3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [nilnul3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [nilnul3] SET RECOVERY FULL 
GO
ALTER DATABASE [nilnul3] SET  MULTI_USER 
GO
ALTER DATABASE [nilnul3] SET PAGE_VERIFY NONE  
GO
ALTER DATABASE [nilnul3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [nilnul3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [nilnul3] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [nilnul3]
GO
/****** Object:  Schema [hbue]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [hbue]
GO
/****** Object:  Schema [hbue.course]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [hbue.course]
GO
/****** Object:  Schema [hbue.tinglanyuan.highrise]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [hbue.tinglanyuan.highrise]
GO
/****** Object:  Schema [nilnul]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul]
GO
/****** Object:  Schema [nilnul._web]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul._web]
GO
/****** Object:  Schema [nilnul._web.login]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul._web.login]
GO
/****** Object:  Schema [nilnul.accounting]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.accounting]
GO
/****** Object:  Schema [nilnul.accounting.balance]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.accounting.balance]
GO
/****** Object:  Schema [nilnul.accounting.balance.sumByCurrency]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.accounting.balance.sumByCurrency]
GO
/****** Object:  Schema [nilnul.accounting.entry]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.accounting.entry]
GO
/****** Object:  Schema [nilnul.accounting.journal]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.accounting.journal]
GO
/****** Object:  Schema [nilnul.buy]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.buy]
GO
/****** Object:  Schema [nilnul.car]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.car]
GO
/****** Object:  Schema [nilnul.char]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.char]
GO
/****** Object:  Schema [nilnul.chemistry]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.chemistry]
GO
/****** Object:  Schema [nilnul.chemistry.experiment.equipment]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.chemistry.experiment.equipment]
GO
/****** Object:  Schema [nilnul.chemistry.instrument]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.chemistry.instrument]
GO
/****** Object:  Schema [nilnul.china.gov.citizenId]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.china.gov.citizenId]
GO
/****** Object:  Schema [nilnul.chinese]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.chinese]
GO
/****** Object:  Schema [nilnul.commerce]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.commerce]
GO
/****** Object:  Schema [nilnul.dev]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.dev]
GO
/****** Object:  Schema [nilnul.edu]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.edu]
GO
/****** Object:  Schema [nilnul.edu.university]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.edu.university]
GO
/****** Object:  Schema [nilnul.edu.university.class]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.edu.university.class]
GO
/****** Object:  Schema [nilnul.email]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.email]
GO
/****** Object:  Schema [nilnul.email.server]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.email.server]
GO
/****** Object:  Schema [nilnul.english]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.english]
GO
/****** Object:  Schema [nilnul.english.def]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.english.def]
GO
/****** Object:  Schema [nilnul.film]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.film]
GO
/****** Object:  Schema [nilnul.finance]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.finance]
GO
/****** Object:  Schema [nilnul.finance.creditCard]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.finance.creditCard]
GO
/****** Object:  Schema [nilnul.geography]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.geography]
GO
/****** Object:  Schema [nilnul.human]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.human]
GO
/****** Object:  Schema [nilnul.human.contact]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.human.contact]
GO
/****** Object:  Schema [nilnul.human.lang.chinese]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.human.lang.chinese]
GO
/****** Object:  Schema [nilnul.human.lang.en]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.human.lang.en]
GO
/****** Object:  Schema [nilnul.human.lang.en.def]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.human.lang.en.def]
GO
/****** Object:  Schema [nilnul.human.physical]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.human.physical]
GO
/****** Object:  Schema [nilnul.human.social]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.human.social]
GO
/****** Object:  Schema [nilnul.login]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.login]
GO
/****** Object:  Schema [nilnul.net.login]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.net.login]
GO
/****** Object:  Schema [nilnul.num.natural]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.num.natural]
GO
/****** Object:  Schema [nilnul.obj]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.obj]
GO
/****** Object:  Schema [nilnul.org]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.org]
GO
/****** Object:  Schema [nilnul.phone]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.phone]
GO
/****** Object:  Schema [nilnul.phone.call]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.phone.call]
GO
/****** Object:  Schema [nilnul.pic]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.pic]
GO
/****** Object:  Schema [nilnul.publish]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.publish]
GO
/****** Object:  Schema [nilnul.publishing]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.publishing]
GO
/****** Object:  Schema [nilnul.publishing.book]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.publishing.book]
GO
/****** Object:  Schema [nilnul.quiz]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.quiz]
GO
/****** Object:  Schema [nilnul.relation]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.relation]
GO
/****** Object:  Schema [nilnul.research]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.research]
GO
/****** Object:  Schema [nilnul.research.conference]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.research.conference]
GO
/****** Object:  Schema [nilnul.research.conference.proceeding]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.research.conference.proceeding]
GO
/****** Object:  Schema [nilnul.research.journal]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.research.journal]
GO
/****** Object:  Schema [nilnul.research.journal.submit]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.research.journal.submit]
GO
/****** Object:  Schema [nilnul.research.publish]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.research.publish]
GO
/****** Object:  Schema [nilnul.social]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.social]
GO
/****** Object:  Schema [nilnul.social.org]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.social.org]
GO
/****** Object:  Schema [nilnul.song]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.song]
GO
/****** Object:  Schema [nilnul.sqlSrv]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.sqlSrv]
GO
/****** Object:  Schema [nilnul.task]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.task]
GO
/****** Object:  Schema [nilnul.time]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.time]
GO
/****** Object:  Schema [nilnul.uinteger]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.uinteger]
GO
/****** Object:  Schema [nilnul.web]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.web]
GO
/****** Object:  Schema [nilnul.web.user]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnul.web.user]
GO
/****** Object:  Schema [nilnulCom]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnulCom]
GO
/****** Object:  Schema [nilnulCom.web.user]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [nilnulCom.web.user]
GO
/****** Object:  Schema [wangyoutian]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [wangyoutian]
GO
/****** Object:  Schema [wangyoutian.task]    Script Date: 2013/10/6 11:12:58 ******/
CREATE SCHEMA [wangyoutian.task]
GO
/****** Object:  StoredProcedure [dbo].[PurgeOverdueRegisterHash]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PurgeOverdueRegisterHash]
	
AS

delete [nilnul.net.login].RegisterHash
where time<dateadd(hour,-72,getDate())
	
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[selectHumanByName]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[selectHumanByName] 
	-- Add the parameters for the stored procedure here
	@name nvarchar(255) = '' 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	select * from nilnul.Human2
	where name like '%'+@name+'%'
END

GO
/****** Object:  StoredProcedure [nilnul.accounting].[Journal_Insert]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [nilnul.accounting].[Journal_Insert]
	@description nvarchar(500)

AS
	
	insert [nilnul.accounting].[Journal](
		[description]

	
	)values(
	@description
	
	)
	select SCOPE_IDENTITY()

RETURN 0

GO
/****** Object:  StoredProcedure [nilnul.accounting.balance].[BalanceAndSumByCurrency]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [nilnul.accounting.balance].[BalanceAndSumByCurrency]
	
AS
	
exec [nilnul.accounting.balance.sumByCurrency].[Select]

exec [nilnul.accounting.balance].[Select]




RETURN 0

GO
/****** Object:  StoredProcedure [nilnul.accounting.balance].[Select]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [nilnul.accounting.balance].[Select]
	
AS
	SELECT * from [nilnul.accounting].[Balance]
	order by entity
RETURN 0

GO
/****** Object:  StoredProcedure [nilnul.accounting.balance.sumByCurrency].[Select]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [nilnul.accounting.balance.sumByCurrency].[Select]
	
AS
	SELECT * from [nilnul.accounting.balance].[SumByCurrency]
	where quantity!=0
RETURN 0

GO
/****** Object:  StoredProcedure [nilnul.accounting.entry].[Delete]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [nilnul.accounting.entry].[Delete]
	
AS
	delete [nilnul.accounting].[Entry]
RETURN 0

GO
/****** Object:  StoredProcedure [nilnul.accounting.entry].[Insert]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [nilnul.accounting.entry].[Insert]
	@journal bigint,
	@entity nvarchar(50),
	@quantity money
	,@currency nvarchar(50)='cny'
AS
	
	insert [nilnul.accounting].[Entry](
	journal
	,
	entity
	,
	quantity
		,
		currency

	
	)values(
	@journal 
	,
	@entity 
	,
	@quantity 

	,@currency 

	
	)

RETURN 0

GO
/****** Object:  StoredProcedure [nilnul.accounting.entry].[Select]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [nilnul.accounting.entry].[Select]
	
AS
	SELECT * from [nilnul.accounting].[Entry]
RETURN 0

GO
/****** Object:  StoredProcedure [nilnul.accounting.journal].[Delete]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [nilnul.accounting.journal].[Delete]
	
AS
	delete [nilnul.accounting].[Journal]
RETURN 0

GO
/****** Object:  StoredProcedure [nilnul.accounting.journal].[Insert]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [nilnul.accounting.journal].[Insert]
	@description nvarchar(500)

AS
	
	insert [nilnul.accounting].[Journal](
		[description]

	
	)values(
	@description
	
	)
	select SCOPE_IDENTITY()

RETURN 0

GO
/****** Object:  StoredProcedure [nilnul.accounting.journal].[Select]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [nilnul.accounting.journal].[Select]

AS
	SELECT * from [nilnul.accounting].[Journal]
RETURN 0

GO
/****** Object:  StoredProcedure [nilnul.human].[Add]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [nilnul.human].[Add] 
	-- Add the parameters for the stored procedure here
	@name nvarchar(150) = null, 
	@note nvarchar(max) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert [nilnul].[Human2](name,note)
	values(@name,@note)
END

GO
/****** Object:  StoredProcedure [nilnul.num.natural].[PrimeMaxRecord]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [nilnul.num.natural].[PrimeMaxRecord]
	
AS
	

declare @sn bigint
declare @num bigint

declare c cursor for
select * from [nilnul.num.natural].Prime

open c
declare @maxSn bigint
declare @maxNum bigint

fetch next from c
into @sn,@num

if @@FETCH_STATUS=0
begin
		set @maxSn=@sn
		set @maxNum=@num

		fetch next from c
		into @sn,@num


		while @@FETCH_STATUS=0
		begin
			if @maxSn<@sn 	 set @maxSn=@sn 
			if @maxNum<@num set @maxNum=@num
			fetch next from c
			into @sn,@num

			
		end
		select @maxSn sn,@maxNum num
end







GO
/****** Object:  StoredProcedure [nilnul.research.conference].[Add]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [nilnul.research.conference].[Add] 
	-- Add the parameters for the stored procedure here
	
	@note nvarchar(max) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert [nilnul.research].[Conference](note)
	values(@note)
END

GO
/****** Object:  StoredProcedure [nilnul.task].[Del]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [nilnul.task].[Del] 
	-- Add the parameters for the stored procedure here
	@p1 bigint  
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete [nilnul].[Task1]
	where id=@p1
END

GO
/****** Object:  StoredProcedure [nilnul.web.user].[GetUsername]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [nilnul.web.user].[GetUsername]
	@sessionId nvarchar(50),
	@username nvarchar(50) out
AS
	--
	exec [nilnul.web.user].PurgeOverdueSession
	set @username=(
		select top 1 username 
		from [nilnul.net.login].Session
		where sessionId=@sessionId
	)

	
RETURN 0
GO
/****** Object:  StoredProcedure [nilnul.web.user].[LogIn]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [nilnul.web.user].[LogIn]
(
	@username nvarchar(50),
	@password nvarchar(50),
	@sessionLifespanInDays int =null,
	@sessionId nvarchar(50) =null out
)
AS
BEGIN
	set nocount on
	
	select 0 from [nilnul.net.login].Login 
	where email=@username and password=@password

	if @@ROWCOUNT=0
	begin
		--set @sessionId=null
		return -1;
	end

	----now gen session
	--merge [nilnul.net.login].Session  as target
	--using (select @usename,@password) as source(username,password)
	--on target.username=source.username
	--when matched then
	 

	--delete session
	--purge 

	exec [nilnul.web.user].PurgeOverdueSession

	delete [nilnul.net.login].Session 
	where username=@username


		declare @table table(sessionId nvarchar(50))


		--create new session
		if	@sessionLifespanInDays is null
		begin
			insert [nilnul.net.login].Session(username)
			output inserted.sessionId into @table
			values(@username)
		end
		else
		begin
			insert [nilnul.net.login].Session(username,lifeSpanInDays)
			output inserted.sessionId into @table
			values(@username,@sessionLifespanInDays)

		end

		set @sessionId= (select * from @table);
		
	
END
GO
/****** Object:  StoredProcedure [nilnul.web.user].[LogOut]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [nilnul.web.user].[LogOut]
(
	
	@sessionId nvarchar(50) 
)
AS
BEGIN
	set nocount on
	exec [nilnul.web.user].PurgeOverdueSession
	delete [nilnul.net.login].Session 
	where sessionId=@sessionId
	
	
END
GO
/****** Object:  StoredProcedure [nilnul.web.user].[PurgeOverdueSession]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [nilnul.web.user].[PurgeOverdueSession]
	
	
AS
	delete [nilnul.net.login].[Session]

where  
	case 
		when lifeSpanInDays is null
			then dateadd(minute,30,createTimeUtc)
		else
			 dateadd(day,lifeSpanInDays,createTimeUtc)
	
	 end
	 < getUtcDate()


RETURN 0
GO
/****** Object:  UserDefinedFunction [dbo].[Trim]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Trim]
(
	@param1 nvarchar(Max)
)
RETURNS nvarchar(Max)
AS
BEGIN
	RETURN LTrim(RTrim(@param1))
END
GO
/****** Object:  UserDefinedFunction [nilnul.num.natural].[Prime.CompositeUpperBoundFunc]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [nilnul.num.natural].[Prime.CompositeUpperBoundFunc]
(
	
)
RETURNS bigINT
AS
BEGIN
	return (select * from [nilnul.num.natural].[Prime.CompositeUpperBound])
END
GO
/****** Object:  UserDefinedFunction [nilnul.num.natural].[Prime.MaxPrimeFunc]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [nilnul.num.natural].[Prime.MaxPrimeFunc]
(
	
)
RETURNS bigINT
AS
BEGIN
	return (select MAX(a.num) from [nilnul.num.natural].Prime a)

END
GO
/****** Object:  UserDefinedFunction [nilnul.web.user].[GetSessionId]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [nilnul.web.user].[GetSessionId]
(
	@username nvarchar(50)
	
)
RETURNS nvarchar(50)
AS
BEGIN
	RETURN (	select top 1 sessionId  from [nilnul.net.login].Session
	where username=@username)
END
GO
/****** Object:  Table [dbo].[电商Q1341$]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[电商Q1341$](
	[电商Q1341班名册] [nvarchar](255) NULL,
	[F2] [nvarchar](255) NULL,
	[F3] [nvarchar](255) NULL,
	[F4] [nvarchar](255) NULL,
	[F5] [nvarchar](255) NULL,
	[F6] [nvarchar](255) NULL,
	[F7] [nvarchar](255) NULL,
	[F8] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[计科Q1341$]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[计科Q1341$](
	[计科Q1341班名册] [nvarchar](255) NULL,
	[F2] [nvarchar](255) NULL,
	[F3] [nvarchar](255) NULL,
	[F4] [nvarchar](255) NULL,
	[F5] [nvarchar](255) NULL,
	[F6] [nvarchar](255) NULL,
	[F7] [nvarchar](255) NULL,
	[F8] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[软件Q1341$]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[软件Q1341$](
	[软件Q1341班名册] [nvarchar](255) NULL,
	[F2] [nvarchar](255) NULL,
	[F3] [nvarchar](255) NULL,
	[F4] [nvarchar](255) NULL,
	[F5] [nvarchar](255) NULL,
	[F6] [nvarchar](255) NULL,
	[F7] [nvarchar](255) NULL,
	[F8] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[软件开发Q1341$]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[软件开发Q1341$](
	[软件开发Q1341班名册] [nvarchar](255) NULL,
	[F2] [nvarchar](255) NULL,
	[F3] [nvarchar](255) NULL,
	[F4] [nvarchar](255) NULL,
	[F5] [nvarchar](255) NULL,
	[F6] [nvarchar](255) NULL,
	[F7] [nvarchar](255) NULL,
	[F8] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[网络Q1341$]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[网络Q1341$](
	[网络Q1341班名册] [nvarchar](255) NULL,
	[F2] [nvarchar](255) NULL,
	[F3] [nvarchar](255) NULL,
	[F4] [nvarchar](255) NULL,
	[F5] [nvarchar](255) NULL,
	[F6] [nvarchar](255) NULL,
	[F7] [nvarchar](255) NULL,
	[F8] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[信管Q1341$]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[信管Q1341$](
	[学号] [nvarchar](255) NULL,
	[姓名] [nvarchar](255) NULL,
	[性别] [nvarchar](255) NULL,
	[专业] [nvarchar](255) NULL,
	[政治面貌] [nvarchar](255) NULL,
	[民族] [nvarchar](255) NULL,
	[身份证号] [nvarchar](255) NULL,
	[备注] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[信管合作Q1341$]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[信管合作Q1341$](
	[信管合作Q1341班名册] [nvarchar](255) NULL,
	[F2] [nvarchar](255) NULL,
	[F3] [nvarchar](255) NULL,
	[F4] [nvarchar](255) NULL,
	[F5] [nvarchar](255) NULL,
	[F6] [nvarchar](255) NULL,
	[F7] [nvarchar](255) NULL,
	[F8] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[信管合作Q1342$]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[信管合作Q1342$](
	[信管合作Q1342班名册] [nvarchar](255) NULL,
	[F2] [nvarchar](255) NULL,
	[F3] [nvarchar](255) NULL,
	[F4] [nvarchar](255) NULL,
	[F5] [nvarchar](255) NULL,
	[F6] [nvarchar](255) NULL,
	[F7] [nvarchar](255) NULL,
	[F8] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [hbue].[Dorm]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hbue].[Dorm](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dorm] [nvarchar](50) NULL,
	[occupant] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [hbue].[Major]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hbue].[Major](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Major] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [hbue].[Student]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hbue].[Student](
	[StuId] [nvarchar](15) NOT NULL,
	[HumanId] [bigint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [hbue].[Teacher]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hbue].[Teacher](
	[Human] [bigint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [hbue.course].[Course]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hbue.course].[Course](
	[id] [bigint] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[semester] [bigint] NOT NULL,
 CONSTRAINT [PK_Course_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [hbue.course].[CourseSessions]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [hbue.course].[CourseSessions](
	[course] [int] NOT NULL,
	[session] [varchar](50) NOT NULL,
	[venue] [nchar](10) NULL,
	[teachingPlan] [nvarchar](max) NULL,
	[pptURL] [nvarchar](50) NULL,
 CONSTRAINT [PK_courseSessions] PRIMARY KEY CLUSTERED 
(
	[course] ASC,
	[session] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [nilnul].[Ascii]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [nilnul].[Ascii](
	[id] [int] NOT NULL,
	[char] [char](1) NOT NULL,
 CONSTRAINT [PK_char] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [nilnul].[BirthdayAsTask]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[BirthdayAsTask](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Owner] [nvarchar](50) NULL,
	[Human] [nvarchar](50) NULL,
 CONSTRAINT [PK_BirthdayAsTask] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[Book]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[Book](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[Car]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[Car](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[brand] [nvarchar](50) NULL,
	[compartments] [nvarchar](50) NULL,
	[displacement] [nvarchar](50) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[Definition]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[Definition](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[englishDescription] [nvarchar](500) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[Email]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[Email](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[ErrorLog]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[ErrorLog](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[time] [datetime] NULL,
	[error] [nvarchar](max) NULL,
 CONSTRAINT [PK_Error] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[File]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[File](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[Film]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[Film](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[_time] [nvarchar](50) NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[Human]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[Human](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_Human] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[Human2]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[Human2](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
 CONSTRAINT [PK__tmp_ms_x__3213E83F76CE7A46] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[Login]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[Login](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[when] [datetime] NULL,
	[note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[LostFound]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[LostFound](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[finder] [nvarchar](50) NULL,
	[thing] [nvarchar](50) NULL,
	[owner] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[Movie]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[Movie](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_Movie] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [AK_Movie_Column] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[Music]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[Music](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[music] [nvarchar](50) NULL,
	[author] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[Object]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[Object](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[entity] [nvarchar](500) NULL,
	[property] [nvarchar](500) NULL,
	[quality] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[Pair]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[Pair](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Item1] [nvarchar](50) NOT NULL,
	[Item2] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[Predicate]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[Predicate](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[predicate] [nvarchar](50) NULL,
	[arguments] [nvarchar](500) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[Publisher]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[Publisher](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Publisher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[QqGroup]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[QqGroup](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[number] [nvarchar](50) NULL,
	[objective] [nvarchar](50) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[Quote]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[Quote](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[words] [nvarchar](450) NOT NULL,
	[author] [nvarchar](50) NULL,
 CONSTRAINT [PK_Quote] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[Song]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[Song](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[Statement]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[Statement](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[statement] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[Str]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[Str](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[string] [nvarchar](max) NULL,
	[time] [nvarchar](50) NULL,
	[stamp] [timestamp] NULL,
	[note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Str] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[Table]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[Table](
	[id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[Task]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[Task](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Owner] [nvarchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[StartTime] [nvarchar](50) NULL,
	[EndTime] [nvarchar](50) NULL,
 CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[Task1]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[Task1](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[note] [nvarchar](max) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
 CONSTRAINT [PK__Task1__3213E83FF945BCD5] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul].[Time]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul].[Time](
	[id] [nvarchar](50) NOT NULL,
	[dateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Time] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.accounting].[Entry]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.accounting].[Entry](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[journal] [bigint] NULL,
	[entity] [nvarchar](500) NULL,
	[quantity] [money] NULL,
	[currency] [nvarchar](500) NULL,
	[time] [datetime2](7) NULL,
	[stamp] [timestamp] NULL,
	[note] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.accounting].[Journal]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.accounting].[Journal](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[when] [nvarchar](50) NULL,
	[description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.accounting.entry].[CreditCardBilling]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.accounting.entry].[CreditCardBilling](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[time] [nvarchar](50) NULL,
	[account] [nvarchar](50) NULL,
	[money] [nvarchar](50) NULL,
	[due] [nvarchar](50) NULL,
	[note] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.accounting.entry].[Expense]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.accounting.entry].[Expense](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[time] [nvarchar](50) NULL,
	[source] [nvarchar](50) NULL,
	[note] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.buy].[To]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.buy].[To](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[note] [nvarchar](max) NULL,
	[time] [datetime] NULL,
	[stamp] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.car].[Plate]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.car].[Plate](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[car] [nvarchar](50) NULL,
	[number] [nvarchar](50) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.char].[Unicode]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.char].[Unicode](
	[id] [int] NOT NULL,
	[char] [nvarchar](1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.chemistry].[Being]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.chemistry].[Being](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[englishName] [nvarchar](50) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.chemistry].[ChineseName]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.chemistry].[ChineseName](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[being] [bigint] NULL,
	[chineseName] [nvarchar](50) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.chemistry].[Instrument]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.chemistry].[Instrument](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[englishName] [nvarchar](50) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.chemistry.instrument].[ChineseName]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.chemistry.instrument].[ChineseName](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[instrument] [bigint] NULL,
	[chineseName] [nvarchar](50) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.china.gov.citizenId].[ProvinceCode]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.china.gov.citizenId].[ProvinceCode](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[province] [nchar](10) NULL,
	[code] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.chinese].[Def]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.chinese].[Def](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[chineseName] [nvarchar](50) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.commerce].[Commodity]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.commerce].[Commodity](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[note] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.commerce].[Price]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.commerce].[Price](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[commodity] [nvarchar](50) NULL,
	[price] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.dev].[Regex]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.dev].[Regex](
	[Regex] [nvarchar](450) NOT NULL,
	[Description] [nvarchar](2000) NULL,
	[Example] [nvarchar](2000) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.edu].[Awarded]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.edu].[Awarded](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[human] [nvarchar](50) NULL,
	[degree] [nchar](10) NULL,
	[by] [nvarchar](50) NULL,
	[when] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.edu].[Course]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [nilnul.edu].[Course](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[semester] [char](3) NULL,
	[audience] [nchar](10) NULL,
	[hbueId] [nvarchar](50) NULL,
	[creator] [nvarchar](50) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [nilnul.edu].[CourseIncludeTopics]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.edu].[CourseIncludeTopics](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[parentTopic] [nvarchar](50) NOT NULL,
	[topic] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CourseIncludeTopics] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.edu].[Enroll]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.edu].[Enroll](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[when] [nvarchar](50) NULL,
	[human] [nvarchar](50) NULL,
	[school] [nvarchar](50) NULL,
	[studentId] [nvarchar](50) NULL,
	[major] [nvarchar](50) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.edu].[Graduate]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.edu].[Graduate](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[human] [nvarchar](50) NULL,
	[university] [nvarchar](50) NULL,
	[when] [nvarchar](50) NULL,
	[note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Graduate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.edu].[QuestionAnswer]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.edu].[QuestionAnswer](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[problem] [nvarchar](4000) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.edu].[Schools]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.edu].[Schools](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Schools] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.edu].[Semester]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.edu].[Semester](
	[id] [bigint] NOT NULL,
	[startDate] [datetime] NULL,
	[endDate] [datetime] NULL,
 CONSTRAINT [PK_Semester] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.edu].[StudentId]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.edu].[StudentId](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[human] [nvarchar](50) NULL,
	[school] [nvarchar](50) NULL,
	[studentId] [nvarchar](50) NULL,
	[enrollYear] [nvarchar](50) NULL,
	[time] [datetime] NULL,
	[stamp] [timestamp] NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.edu].[TopicSub]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.edu].[TopicSub](
	[Topic] [nvarchar](50) NOT NULL,
	[subTopic] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TopicSub] PRIMARY KEY CLUSTERED 
(
	[Topic] ASC,
	[subTopic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.edu].[University]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.edu].[University](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[note] [nvarchar](max) NULL,
 CONSTRAINT [PK_University] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.edu.university].[Class]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.edu.university].[Class](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[university] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[enrollTime] [nvarchar](50) NULL,
	[major] [nvarchar](50) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.edu.university.class].[Monitor]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.edu.university.class].[Monitor](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class] [nvarchar](50) NULL,
	[position] [nvarchar](50) NULL,
	[student] [nvarchar](50) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.edu.university.class].[QqGroup]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.edu.university.class].[QqGroup](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class] [nvarchar](50) NULL,
	[qqGroup] [nvarchar](50) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.edu.university.class].[Student]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.edu.university.class].[Student](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class] [nvarchar](50) NULL,
	[student] [nvarchar](50) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.email].[Server]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.email].[Server](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.email].[Table]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.email].[Table](
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.email.server].[User]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.email.server].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[server] [int] NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.english].[Def]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.english].[Def](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[def] [nvarchar](50) NULL,
	[note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Def] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.english].[Idiom]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.english].[Idiom](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[idiom] [nvarchar](500) NOT NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.english.def].[Eq]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.english.def].[Eq](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[short] [nvarchar](50) NOT NULL,
	[long] [nvarchar](500) NOT NULL,
	[time] [datetime] NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.film].[Comment]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.film].[Comment](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[film] [nvarchar](50) NULL,
	[commenter] [nchar](10) NULL,
	[comment] [nvarchar](max) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.finance].[BankAccount]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.finance].[BankAccount](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[person] [nvarchar](50) NULL,
	[bank] [nvarchar](50) NULL,
	[accountNumber] [nchar](30) NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.finance].[CreditCard]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.finance].[CreditCard](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[bank] [nvarchar](50) NULL,
	[human] [nvarchar](50) NULL,
	[accountNumber] [nvarchar](50) NULL,
	[validThru] [nvarchar](50) NULL,
	[numberOnTheBack] [nvarchar](50) NULL,
	[time] [datetime] NULL,
	[note] [nvarchar](max) NULL,
 CONSTRAINT [PK_CreditCard] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.finance.creditCard].[BillingDayOfMonth]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.finance.creditCard].[BillingDayOfMonth](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[creditCard] [nvarchar](50) NULL,
	[billingDayOfMonth] [nvarchar](50) NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.finance.creditCard].[DueMonthly]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.finance.creditCard].[DueMonthly](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[creditCard] [bigint] NULL,
	[dueDateMonthly] [nvarchar](50) NULL,
	[note] [nvarchar](max) NULL,
 CONSTRAINT [PK_DueMonthly] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.finance.creditCard].[DuePutoffDays]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.finance.creditCard].[DuePutoffDays](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[backlogInDays] [int] NOT NULL,
	[bank] [nvarchar](50) NULL,
	[amountResidueAllowed] [nvarchar](50) NULL,
 CONSTRAINT [PK_DuePutoffDays] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.finance.creditCard].[Quota]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.finance.creditCard].[Quota](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[card] [nvarchar](50) NULL,
	[quota] [nvarchar](50) NULL,
	[time] [datetime] NULL,
	[stampe] [timestamp] NOT NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.geography].[Place]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.geography].[Place](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[englishName] [nvarchar](50) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human].[Address]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human].[Address](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[human] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[recipient] [nvarchar](50) NULL,
	[zip] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human].[Address_hbueTinglanyuan]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human].[Address_hbueTinglanyuan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[human] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[time] [datetime] NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human].[Address_hbueTinglanyuanHighrise]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human].[Address_hbueTinglanyuanHighrise](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[house] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[time] [datetime] NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human].[Birth]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human].[Birth](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[when] [nvarchar](50) NULL,
	[place] [nvarchar](50) NULL,
	[father] [nvarchar](50) NULL,
	[mother] [nvarchar](50) NULL,
	[child] [nvarchar](50) NULL,
	[time] [datetime] NULL,
	[stamp] [timestamp] NOT NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human].[Birthdate]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human].[Birthdate](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Owner] [nvarchar](50) NULL,
	[Human] [nvarchar](50) NOT NULL,
	[Birthdate] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Birthdate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human].[ChinaCitizenId]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human].[ChinaCitizenId](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[human] [nvarchar](50) NULL,
	[chinaCitizenIdNumber] [nvarchar](50) NULL,
	[note] [nvarchar](max) NULL,
	[time] [datetime] NULL,
	[stamp] [timestamp] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human].[Connection]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human].[Connection](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[first] [nvarchar](50) NULL,
	[second] [nvarchar](50) NULL,
	[connection] [nvarchar](50) NULL,
	[time] [datetime] NULL,
	[stamp] [timestamp] NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human].[Dwell]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human].[Dwell](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[human] [nvarchar](50) NULL,
	[house] [nvarchar](50) NULL,
	[time] [nvarchar](50) NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human].[Email]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human].[Email](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[human] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[time] [nvarchar](50) NULL,
	[stamp] [timestamp] NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human].[Employer]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human].[Employer](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[human] [nvarchar](50) NULL,
	[employer] [nvarchar](50) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human].[Ethnity]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human].[Ethnity](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[human] [nvarchar](50) NULL,
	[ethnity] [nvarchar](50) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human].[Gender]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human].[Gender](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[human] [nvarchar](50) NULL,
	[gender] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human].[Intelligence]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human].[Intelligence](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[human] [nvarchar](50) NULL,
	[intellegence] [nvarchar](50) NULL,
	[time] [nvarchar](50) NULL,
	[stamp] [timestamp] NOT NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human].[Marriage]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human].[Marriage](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[husband] [nvarchar](50) NULL,
	[wife] [nvarchar](50) NULL,
	[_time] [nvarchar](50) NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human].[Name]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human].[Name](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[human] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[time] [nvarchar](50) NULL,
	[stamp] [timestamp] NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human].[Note]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human].[Note](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[human] [nvarchar](50) NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human].[Properties]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human].[Properties](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[human] [nvarchar](50) NULL,
	[property] [nvarchar](50) NULL,
	[value] [nvarchar](50) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human].[Qq]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human].[Qq](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[qq] [nvarchar](50) NULL,
	[human] [nvarchar](50) NULL,
	[time] [datetime] NULL,
	[stamp] [timestamp] NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human].[Title]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human].[Title](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[human ] [nvarchar](50) NULL,
	[title] [nvarchar](50) NULL,
	[time] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human].[WebLogin]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human].[WebLogin](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[human] [nvarchar](50) NULL,
	[web] [nvarchar](50) NULL,
	[login] [nvarchar](50) NULL,
	[time] [datetime] NULL,
	[stamp] [timestamp] NOT NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human.contact].[Fax]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human.contact].[Fax](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[number] [nvarchar](50) NULL,
	[user] [nvarchar](50) NULL,
	[note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Fax] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human.lang.chinese].[CharPinyin]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human.lang.chinese].[CharPinyin](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[char] [nchar](1) NOT NULL,
	[pinyin] [nchar](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human.lang.chinese].[ChinesePinYin]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [nilnul.human.lang.chinese].[ChinesePinYin](
	[ChineseChar] [nvarchar](1) NOT NULL,
	[PinYin] [varchar](9) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [nilnul.human.lang.chinese].[Representation]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human.lang.chinese].[Representation](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[english] [nvarchar](50) NULL,
	[chinese] [nvarchar](50) NULL,
 CONSTRAINT [PK_Representation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human.physical].[WaistPerimeter]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human.physical].[WaistPerimeter](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[human] [nvarchar](50) NULL,
	[cm] [nvarchar](50) NULL,
	[time] [datetime] NULL,
	[stamp] [timestamp] NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human.physical].[Weight]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human.physical].[Weight](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[human] [nvarchar](50) NULL,
	[kg] [nvarchar](50) NULL,
	[time] [datetime] NULL,
	[stamp] [timestamp] NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.human.social].[QqPass]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.human.social].[QqPass](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[qq] [nvarchar](50) NULL,
	[pass] [nvarchar](50) NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.login].[RegisterHash]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.login].[RegisterHash](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[time] [datetime] NOT NULL,
	[hash] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NULL,
 CONSTRAINT [PK_RegisterHash] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.login].[Session]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.login].[Session](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[sessionId] [nvarchar](50) NOT NULL,
	[username] [nvarchar](50) NULL,
	[expires] [datetime] NULL,
	[createTimeUtc] [datetime] NULL,
	[lifeSpanInDays] [int] NULL,
 CONSTRAINT [PK_web.Session] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.login].[SessionLifeSpan]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.login].[SessionLifeSpan](
	[username] [nvarchar](50) NOT NULL,
	[sessionLifeSpanInMinutes] [int] NULL,
	[sessionLifeSpan] [nvarchar](50) NULL,
 CONSTRAINT [PK_SessionLifeSpan] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.login].[Uri]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.login].[Uri](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[uri] [nvarchar](500) NULL,
	[login] [nvarchar](50) NULL,
	[time] [datetime] NULL,
	[note] [nvarchar](max) NULL,
 CONSTRAINT [PK_UrlLogin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.num.natural].[Prime]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.num.natural].[Prime](
	[sn] [bigint] NOT NULL,
	[num] [bigint] NOT NULL,
 CONSTRAINT [PK_Prime] PRIMARY KEY CLUSTERED 
(
	[sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.num.natural].[Prime.CompositeUpperBound]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.num.natural].[Prime.CompositeUpperBound](
	[Val] [bigint] NOT NULL,
 CONSTRAINT [PK_Prime.CompositeUpperBound] PRIMARY KEY CLUSTERED 
(
	[Val] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.obj].[ConstructorString]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.obj].[ConstructorString](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[constructor] [nvarchar](50) NULL,
	[arguments] [nvarchar](500) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.obj].[entry]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.obj].[entry](
	[ID] [int] NOT NULL,
	[Time] [smalldatetime] NOT NULL,
	[Note] [ntext] NULL,
	[Journal] [int] NULL,
	[Entity] [nvarchar](255) NOT NULL,
	[Property] [nvarchar](50) NOT NULL,
	[Quantity] [numeric](18, 4) NOT NULL,
	[Quality] [nvarchar](255) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.obj].[entry2]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.obj].[entry2](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[time] [datetime] NULL,
	[stamp] [timestamp] NOT NULL,
	[who] [nvarchar](50) NULL,
	[why] [nvarchar](50) NULL,
	[Entity] [nvarchar](255) NOT NULL,
	[Property] [nvarchar](50) NOT NULL,
	[Quantity] [numeric](18, 4) NULL,
	[Quality] [nvarchar](255) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.obj].[journal]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.obj].[journal](
	[ID] [int] NOT NULL,
	[Time] [smalldatetime] NOT NULL,
	[Note] [ntext] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.obj].[Object2]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.obj].[Object2](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[definition] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.org].[Address]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.org].[Address](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[organization] [nvarchar](400) NULL,
	[address] [nvarchar](400) NULL,
	[time] [datetime] NULL,
	[stamp] [timestamp] NOT NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.org].[Contact]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.org].[Contact](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[entity] [nvarchar](50) NULL,
	[post] [nvarchar](50) NULL,
	[_when] [nvarchar](50) NULL,
	[_note] [datetime] NULL,
	[position] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.org].[HumanEmployedByOrganization]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.org].[HumanEmployedByOrganization](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[employer] [nvarchar](50) NULL,
	[post] [nvarchar](50) NULL,
	[human] [nvarchar](50) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.org].[Phone]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.org].[Phone](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[org] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[_when] [nvarchar](50) NULL,
	[_note] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.org].[Service]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.org].[Service](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[entity] [nvarchar](50) NULL,
	[service] [nvarchar](50) NULL,
	[_when] [nvarchar](50) NULL,
	[_note] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.phone].[Comment]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.phone].[Comment](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[number] [nvarchar](50) NULL,
	[comment] [nvarchar](max) NULL,
	[time] [datetime] NULL,
	[stamp] [timestamp] NOT NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.phone].[Sms]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.phone].[Sms](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[when] [nvarchar](50) NULL,
	[from] [nvarchar](50) NULL,
	[to] [nvarchar](50) NULL,
	[content] [nvarchar](50) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.phone].[User]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.phone].[User](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[number] [nvarchar](20) NOT NULL,
	[user] [nvarchar](max) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
 CONSTRAINT [PK_MobileNumber__User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.phone.call].[Conversation]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.phone.call].[Conversation](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[time] [nvarchar](50) NULL,
	[caller] [nvarchar](50) NULL,
	[callee] [nvarchar](50) NULL,
	[content] [nvarchar](max) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.pic].[ContainsPerson]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.pic].[ContainsPerson](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pic] [nvarchar](50) NULL,
	[human] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.publish].[Publish]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.publish].[Publish](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[publisher] [nvarchar](50) NULL,
	[when] [nvarchar](50) NULL,
	[place] [nvarchar](50) NULL,
	[time] [datetime] NULL,
	[stamp] [timestamp] NULL,
	[note] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.publishing].[Book]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.publishing].[Book](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[authors] [nvarchar](50) NULL,
	[publishedBy] [nvarchar](50) NULL,
	[publishedWhen] [nvarchar](50) NULL,
	[isbn] [nvarchar](50) NULL,
	[issn] [nvarchar](50) NULL,
	[note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.publishing.book].[Chapter]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.publishing.book].[Chapter](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[book] [nvarchar](50) NULL,
	[chapterNumber] [nvarchar](50) NULL,
	[chapterTitle] [nvarchar](50) NULL,
	[author] [nvarchar](50) NULL,
	[note] [nvarchar](50) NULL,
 CONSTRAINT [PK_Chapter] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.publishing.book].[TranslatedBook]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.publishing.book].[TranslatedBook](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[original] [nvarchar](50) NULL,
	[translators] [nvarchar](50) NULL,
	[title] [nvarchar](50) NULL,
	[publishedBy] [nvarchar](50) NULL,
	[issn] [nvarchar](50) NULL,
	[note] [nvarchar](max) NULL,
 CONSTRAINT [PK_TranslatedBook] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.quiz].[ChoiceQuiz]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.quiz].[ChoiceQuiz](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[xml] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_ChoiceQuiz] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.quiz].[ClozeQuiz]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.quiz].[ClozeQuiz](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[xml] [nvarchar](500) NOT NULL,
	[explanation] [nvarchar](500) NULL,
 CONSTRAINT [PK_ClozeQuiz] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.quiz].[DefinitionQuiz]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.quiz].[DefinitionQuiz](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[term] [nvarchar](50) NOT NULL,
	[explanation] [nvarchar](500) NOT NULL,
	[validation] [nvarchar](500) NULL,
 CONSTRAINT [PK_DefinitionQuiz] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.quiz].[OpenQuiz]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.quiz].[OpenQuiz](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[question] [nvarchar](500) NOT NULL,
	[explanation] [nvarchar](500) NOT NULL,
	[validator] [nvarchar](500) NULL,
 CONSTRAINT [PK_OpenQuiz] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.quiz].[QuestionAndAnswerTemplate]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.quiz].[QuestionAndAnswerTemplate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[xml] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.quiz].[TruthQuiz]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.quiz].[TruthQuiz](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[statement] [nvarchar](500) NOT NULL,
	[answer] [bit] NOT NULL,
	[explanation] [nvarchar](500) NULL,
 CONSTRAINT [PK_TrueOfFalseQuestionAndAnswer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.relation].[CarOwnedBy]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.relation].[CarOwnedBy](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[car] [nvarchar](50) NULL,
	[owner] [nvarchar](50) NULL,
	[time] [datetime] NULL,
	[stampt] [timestamp] NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.relation].[Change]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.relation].[Change](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[time] [datetime] NOT NULL,
	[binaryRelationTableName] [nvarchar](50) NOT NULL,
	[binaryRelationId] [bigint] NOT NULL,
	[validStill] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.relation].[RelationBinary]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.relation].[RelationBinary](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[left] [nvarchar](50) NOT NULL,
	[right] [nvarchar](50) NULL,
	[relation] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.research].[Conference]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.research].[Conference](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[note] [nvarchar](max) NULL,
 CONSTRAINT [PK__tmp_ms_x__3213E83FB2AEFB92] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.research].[Fund]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.research].[Fund](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[fund] [nvarchar](50) NULL,
	[fundNo] [nvarchar](50) NULL,
	[fundTimeSpan] [nvarchar](50) NULL,
	[budget] [nchar](10) NULL,
	[chair ] [nvarchar](50) NULL,
	[member] [nvarchar](50) NULL,
	[note] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.research].[Journal]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.research].[Journal](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NULL,
	[title] [nvarchar](150) NULL,
	[period] [nvarchar](50) NULL,
	[webaddress] [nvarchar](150) NULL,
	[issn] [nvarchar](150) NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.research].[Published]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.research].[Published](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[treatise] [nvarchar](50) NULL,
	[publishingType] [nvarchar](50) NULL,
	[publishingId] [bigint] NULL,
	[pages] [nvarchar](50) NULL,
	[note] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.research].[SubmittingProcess]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.research].[SubmittingProcess](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[journal] [bigint] NULL,
	[remark] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.research].[Treatise]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.research].[Treatise](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](500) NULL,
	[authors] [nvarchar](500) NULL,
	[abstract] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.research.conference].[Meet]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.research.conference].[Meet](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[conference] [bigint] NULL,
	[date] [nvarchar](50) NULL,
	[venue] [nvarchar](50) NULL,
	[note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Meet] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.research.conference].[Proceeding]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.research.conference].[Proceeding](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[meet] [nvarchar](50) NULL,
	[publisher] [nvarchar](50) NULL,
	[publishingTime] [nvarchar](50) NULL,
	[publishingPlace] [nvarchar](50) NULL,
	[time] [datetime] NULL,
	[stamp] [timestamp] NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.research.conference.proceeding].[ContainTreatise]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.research.conference.proceeding].[ContainTreatise](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[proceeding] [nvarchar](50) NULL,
	[treatise] [nvarchar](50) NULL,
	[time] [datetime] NULL,
	[stamp] [timestamp] NULL,
	[note] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.research.journal].[Issue]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.research.journal].[Issue](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[journal] [nvarchar](50) NULL,
	[issue] [nvarchar](50) NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.research.journal].[Rank]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.research.journal].[Rank](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[journal] [nvarchar](50) NULL,
	[indexedBy] [nvarchar](50) NULL,
	[note] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.research.journal].[Table]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.research.journal].[Table](
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.research.journal.submit].[Comment]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.research.journal.submit].[Comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[journal] [nvarchar](50) NULL,
	[comment] [nvarchar](max) NULL,
	[time] [nvarchar](50) NULL,
	[stamp] [timestamp] NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.social].[Email]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.social].[Email](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[user] [nvarchar](50) NULL,
 CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.social.org].[Addrss]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.social.org].[Addrss](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[org] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[zip] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.song].[Sing]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.song].[Sing](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[song] [bigint] NULL,
	[singer] [nvarchar](50) NULL,
	[session] [nvarchar](50) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.sqlSrv].[UserOptions]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.sqlSrv].[UserOptions](
	[Value] [int] NOT NULL,
	[Configuration] [nvarchar](255) NOT NULL,
	[Description] [ntext] NOT NULL,
	[CurrentValue] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.task].[BeginTime]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.task].[BeginTime](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[task] [bigint] NULL,
	[beginTime] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.task].[Deadline]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.task].[Deadline](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[task] [bigint] NULL,
	[deadline] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.task].[RecurringTaskGenerator]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.task].[RecurringTaskGenerator](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[recurringRules] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.task].[TaskFinished]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.task].[TaskFinished](
	[task] [bigint] NULL,
	[finished] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.time].[Order]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.time].[Order](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[smaller] [nvarchar](50) NULL,
	[bigger] [nvarchar](50) NULL,
	[_time] [datetime] NULL,
	[_note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.uinteger].[CompositeBiggerThanMaxPrime]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.uinteger].[CompositeBiggerThanMaxPrime](
	[Val] [bigint] NOT NULL,
 CONSTRAINT [PK_CompositeBiggerThanMaxPrime] PRIMARY KEY CLUSTERED 
(
	[Val] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.uinteger].[Prime]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.uinteger].[Prime](
	[sn] [bigint] NOT NULL,
	[num] [bigint] NOT NULL,
 CONSTRAINT [PK_Prime] PRIMARY KEY CLUSTERED 
(
	[sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.web].[Url]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.web].[Url](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[url] [nvarchar](500) NULL,
	[note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Url] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.web.user].[~HttpSession]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.web.user].[~HttpSession](
	[id] [bigint] NOT NULL,
	[login] [nvarchar](50) NULL,
	[expiry] [datetime] NULL,
	[hash] [nvarchar](50) NULL,
 CONSTRAINT [PK_HttpSession] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.web.user].[Error]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.web.user].[Error](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[time] [datetime] NULL,
	[error] [nvarchar](max) NULL,
 CONSTRAINT [PK_Error] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.web.user].[Login5]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.web.user].[Login5](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Login2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [nilnul.web.user].[Password]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.web.user].[Password](
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Password] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.web.user].[Person]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.web.user].[Person](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[login] [nvarchar](50) NULL,
	[person] [nvarchar](50) NULL,
 CONSTRAINT [PK_userPerson] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.web.user].[personRole]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.web.user].[personRole](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[person] [nvarchar](50) NOT NULL,
	[role] [nvarchar](50) NULL,
	[employer] [nvarchar](50) NULL,
 CONSTRAINT [PK_personRole] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.web.user].[Register]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.web.user].[Register](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[key] [nvarchar](50) NOT NULL,
	[time] [datetime] NULL,
 CONSTRAINT [PK_Register] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.web.user].[Role]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.web.user].[Role](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[person] [nvarchar](50) NOT NULL,
	[role] [nvarchar](50) NOT NULL,
	[org] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnul.web.user].[Session]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnul.web.user].[Session](
	[sessionId] [nvarchar](50) NOT NULL,
	[username] [nvarchar](50) NULL,
	[expires] [datetime] NOT NULL,
 CONSTRAINT [PK_web.Session] PRIMARY KEY CLUSTERED 
(
	[sessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [nilnulCom.web.user].[~Register_a]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nilnulCom.web.user].[~Register_a](
	[email] [nvarchar](50) NOT NULL,
	[time] [datetime] NOT NULL,
	[challenge] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Register] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [nilnul.accounting].[Balance]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [nilnul.accounting].[Balance]
	AS 	
	select entity, sum(quantity) as quantity ,currency
	
	 from [nilnul.accounting].[Entry]

	group by entity,currency
	having sum(quantity)!=0


GO
/****** Object:  View [nilnul.accounting.balance].[SumByCurrency]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [nilnul.accounting.balance].[SumByCurrency]
	AS
	 SELECT sum(quantity) quantity ,currency
	 
	 FROM [nilnul.accounting].[Balance]
	 group by currency

GO
/****** Object:  View [wangyoutian].[BirthdayAsTask]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [wangyoutian].[BirthdayAsTask]
AS
SELECT     nilnul.Human.id AS Human, nilnul.Birthdate.Birthdate
FROM         nilnul.Human INNER JOIN
                      nilnul.Birthdate ON nilnul.Human.id = nilnul.Birthdate.Human INNER JOIN
                      nilnul.BirthdayAsTask AS BirthdayAsTask_1 ON nilnul.Human.id = BirthdayAsTask_1.Human
WHERE     (BirthdayAsTask_1.Owner = N'WangYoutian') AND (nilnul.Birthdate.Owner = N'WangYoutian')

GO
/****** Object:  View [wangyoutian].[Task]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [wangyoutian].[Task]
AS



select  Description, StartTime
from nilnul.Task
where Owner=N'WangYoutian'

union

SELECT     wangyoutian.BirthdayAsTask.Human, wangyoutian.BirthdayAsTask.Birthdate
FROM         wangyoutian.BirthdayAsTask



GO
/****** Object:  View [dbo].[vGetDate]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vGetDate]
as select dt=getdate()

GO
/****** Object:  View [nilnul.accounting].[JournalEntry]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [nilnul.accounting].[JournalEntry]
	AS 
	
	SELECT j.id journal, j.[when] [when], j.description description, e.id entry, e.entity,e.quantity,e.currency
	 from	[nilnul.accounting].[Journal] j 
			full join [nilnul.accounting].[Entry] e
			on j.id=e.journal


GO
/****** Object:  View [nilnul.human].[HumanName]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [nilnul.human].[HumanName]
	AS SELECT h.id human, h.name human_name, h._note human_note, n.name name,n.note note FROM [nilnul].[Human2] h
	left join [nilnul.human].[Name] n
	on h.id=n.human
GO
/****** Object:  View [nilnul.research].[Publishing]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [nilnul.research].[Publishing]
	AS
	 SELECT 'nilnul.research.journal.Issue' Type, id FROM [nilnul.research.journal].Issue
GO
/****** Object:  View [wangyoutian.task].[TaskDeadline]    Script Date: 2013/10/6 11:12:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [wangyoutian.task].[TaskDeadline]
AS
SELECT  a.id, a.note, b.deadline
FROM      nilnul.Task1 AS a LEFT OUTER JOIN
                   [nilnul.task].Deadline AS b ON a.id = b.task

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Human2_Column]    Script Date: 2013/10/6 11:12:58 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Human2_Column] ON [nilnul].[Human2]
(
	[name] ASC
)
WHERE ([name] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Session]    Script Date: 2013/10/6 11:12:58 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Session] ON [nilnul.login].[Session]
(
	[sessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Journal]    Script Date: 2013/10/6 11:12:58 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Journal] ON [nilnul.research].[Journal]
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [nilnul].[Car] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul].[Definition] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul].[Film] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul].[Human2] ADD  CONSTRAINT [DF_Human2__time]  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul].[Login] ADD  DEFAULT (getdate()) FOR [when]
GO
ALTER TABLE [nilnul].[QqGroup] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul].[Song] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul].[Str] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul].[Task1] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul.accounting].[Entry] ADD  DEFAULT ('cny') FOR [currency]
GO
ALTER TABLE [nilnul.accounting].[Entry] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.accounting].[Journal] ADD  DEFAULT (getdate()) FOR [when]
GO
ALTER TABLE [nilnul.accounting.entry].[CreditCardBilling] ADD  CONSTRAINT [DF_CreditCardBilling_time]  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.accounting.entry].[Expense] ADD  CONSTRAINT [DF_Expense_time]  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.buy].[To] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.chemistry].[Being] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul.chemistry].[ChineseName] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul.chemistry].[Instrument] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul.chemistry.instrument].[ChineseName] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul.chinese].[Def] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul.edu].[Enroll] ADD  DEFAULT (getdate()) FOR [when]
GO
ALTER TABLE [nilnul.edu].[Enroll] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul.edu].[StudentId] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.edu.university].[Class] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul.edu.university.class].[Monitor] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul.edu.university.class].[QqGroup] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul.edu.university.class].[Student] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul.english].[Idiom] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul.english.def].[Eq] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.film].[Comment] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul.finance].[CreditCard] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.finance.creditCard].[Quota] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.geography].[Place] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul.human].[Address_hbueTinglanyuan] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.human].[Address_hbueTinglanyuanHighrise] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.human].[Birth] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.human].[ChinaCitizenId] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.human].[Connection] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.human].[Dwell] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.human].[Email] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.human].[Employer] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul.human].[Ethnity] ADD  DEFAULT ('汉') FOR [ethnity]
GO
ALTER TABLE [nilnul.human].[Ethnity] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul.human].[Intelligence] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.human].[Marriage] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul.human].[Name] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.human].[Properties] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul.human].[Qq] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.human].[WebLogin] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.human.physical].[WaistPerimeter] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.human.physical].[Weight] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.login].[RegisterHash] ADD  CONSTRAINT [DF_RegisterHash_time]  DEFAULT (getutcdate()) FOR [time]
GO
ALTER TABLE [nilnul.login].[Session] ADD  DEFAULT (newid()) FOR [sessionId]
GO
ALTER TABLE [nilnul.login].[Session] ADD  CONSTRAINT [DF_Session_createTime]  DEFAULT (getdate()) FOR [expires]
GO
ALTER TABLE [nilnul.login].[Session] ADD  CONSTRAINT [DF_Session_createTimeUtc]  DEFAULT (getutcdate()) FOR [createTimeUtc]
GO
ALTER TABLE [nilnul.login].[Uri] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.obj].[entry2] ADD  CONSTRAINT [DF_entry2_time]  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.obj].[entry2] ADD  CONSTRAINT [DF_entry2_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [nilnul.org].[Address] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.org].[Contact] ADD  DEFAULT (getdate()) FOR [_when]
GO
ALTER TABLE [nilnul.org].[HumanEmployedByOrganization] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul.org].[Phone] ADD  DEFAULT (getdate()) FOR [_when]
GO
ALTER TABLE [nilnul.org].[Service] ADD  DEFAULT (getdate()) FOR [_when]
GO
ALTER TABLE [nilnul.phone].[Comment] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.phone].[Sms] ADD  DEFAULT (getdate()) FOR [when]
GO
ALTER TABLE [nilnul.phone].[Sms] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul.phone].[User] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul.phone.call].[Conversation] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.phone.call].[Conversation] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul.publish].[Publish] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.relation].[CarOwnedBy] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.relation].[Change] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.relation].[Change] ADD  DEFAULT ((1)) FOR [validStill]
GO
ALTER TABLE [nilnul.research.conference].[Proceeding] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.research.conference.proceeding].[ContainTreatise] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.research.journal.submit].[Comment] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.song].[Sing] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul.time].[Order] ADD  DEFAULT (getdate()) FOR [_time]
GO
ALTER TABLE [nilnul.web.user].[Error] ADD  CONSTRAINT [DF_Error_time]  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnul.web.user].[Register] ADD  CONSTRAINT [DF_Register_time]  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [nilnulCom.web.user].[~Register_a] ADD  CONSTRAINT [DF_Register_time]  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [hbue].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Human] FOREIGN KEY([Human])
REFERENCES [nilnul].[Human] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [hbue].[Teacher] CHECK CONSTRAINT [FK_Teacher_Human]
GO
ALTER TABLE [hbue.course].[CourseSessions]  WITH CHECK ADD  CONSTRAINT [FK_courseSessions_Course] FOREIGN KEY([course])
REFERENCES [nilnul.edu].[Course] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [hbue.course].[CourseSessions] CHECK CONSTRAINT [FK_courseSessions_Course]
GO
ALTER TABLE [nilnul.accounting].[Entry]  WITH CHECK ADD  CONSTRAINT [FK_journal] FOREIGN KEY([journal])
REFERENCES [nilnul.accounting].[Journal] ([id])
GO
ALTER TABLE [nilnul.accounting].[Entry] CHECK CONSTRAINT [FK_journal]
GO
ALTER TABLE [nilnul.chemistry].[ChineseName]  WITH CHECK ADD  CONSTRAINT [FK_ChineseName_Being] FOREIGN KEY([being])
REFERENCES [nilnul.chemistry].[Being] ([id])
GO
ALTER TABLE [nilnul.chemistry].[ChineseName] CHECK CONSTRAINT [FK_ChineseName_Being]
GO
ALTER TABLE [nilnul.chemistry.instrument].[ChineseName]  WITH CHECK ADD  CONSTRAINT [FK_ChineseName_ToTable] FOREIGN KEY([instrument])
REFERENCES [nilnul.chemistry].[Instrument] ([id])
GO
ALTER TABLE [nilnul.chemistry.instrument].[ChineseName] CHECK CONSTRAINT [FK_ChineseName_ToTable]
GO
ALTER TABLE [nilnul.web.user].[Person]  WITH CHECK ADD  CONSTRAINT [FK_userPerson_Password] FOREIGN KEY([login])
REFERENCES [nilnul.web.user].[Password] ([email])
GO
ALTER TABLE [nilnul.web.user].[Person] CHECK CONSTRAINT [FK_userPerson_Password]
GO
EXEC [nilnul3].sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1:Email;2:Question;3:None' 
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教案' , @level0type=N'SCHEMA',@level0name=N'hbue.course', @level1type=N'TABLE',@level1name=N'CourseSessions', @level2type=N'COLUMN',@level2name=N'teachingPlan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Chars and it''s number' , @level0type=N'SCHEMA',@level0name=N'nilnul', @level1type=N'TABLE',@level1name=N'Ascii'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'amountCurrency+...' , @level0type=N'SCHEMA',@level0name=N'nilnul.accounting.entry', @level1type=N'TABLE',@level1name=N'CreditCardBilling'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'from bank or cash' , @level0type=N'SCHEMA',@level0name=N'nilnul.accounting.entry', @level1type=N'TABLE',@level1name=N'Expense'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'human understandable id, coded accourding to some specifice rule: for example 信息管理概论11S is the course 信息管理概论 delivered at the spring of 2011.' , @level0type=N'SCHEMA',@level0name=N'nilnul.edu', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The course name might repeat at different semesters. The content in each semester is not always the same.' , @level0type=N'SCHEMA',@level0name=N'nilnul.edu', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'11S for spring of 2011. 11A for autumn of 2011' , @level0type=N'SCHEMA',@level0name=N'nilnul.edu', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'semester'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'the id given by hbue' , @level0type=N'SCHEMA',@level0name=N'nilnul.edu', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'hbueId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is about the delivery of course.

So the course in one semester is different from another' , @level0type=N'SCHEMA',@level0name=N'nilnul.edu', @level1type=N'TABLE',@level1name=N'Course'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'here stores all the school created.' , @level0type=N'SCHEMA',@level0name=N'nilnul.edu', @level1type=N'TABLE',@level1name=N'Schools'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'overlong def should be defined in nilnul.english.Def' , @level0type=N'SCHEMA',@level0name=N'nilnul.english.def', @level1type=N'TABLE',@level1name=N'Eq', @level2type=N'COLUMN',@level2name=N'short'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'overlong def should be defined in nilnul.english.Def' , @level0type=N'SCHEMA',@level0name=N'nilnul.english.def', @level1type=N'TABLE',@level1name=N'Eq', @level2type=N'COLUMN',@level2name=N'long'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'[year].month[.[day]]' , @level0type=N'SCHEMA',@level0name=N'nilnul.finance', @level1type=N'TABLE',@level1name=N'CreditCard', @level2type=N'COLUMN',@level2name=N'time'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'HumanI' , @level0type=N'SCHEMA',@level0name=N'nilnul.human', @level1type=N'TABLE',@level1name=N'Birthdate', @level2type=N'COLUMN',@level2name=N'Human'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'TimeI' , @level0type=N'SCHEMA',@level0name=N'nilnul.human', @level1type=N'TABLE',@level1name=N'Birthdate', @level2type=N'COLUMN',@level2name=N'Birthdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'note the sever and the browser  might be in different timezone.' , @level0type=N'SCHEMA',@level0name=N'nilnul.login', @level1type=N'TABLE',@level1name=N'RegisterHash', @level2type=N'COLUMN',@level2name=N'time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A temporary hashed long secret key sent to user''s email at anonymous user''s request.

the key should be expired in a short time (say three days). here is the time when sent, not the expiry date.

the user can use this key to loggon. but once this pass is used, the old password will invalid. if this password is not used, the original password will work as normal
' , @level0type=N'SCHEMA',@level0name=N'nilnul.login', @level1type=N'TABLE',@level1name=N'RegisterHash'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'better use UTC for server and brower may in different time zone.' , @level0type=N'SCHEMA',@level0name=N'nilnul.login', @level1type=N'TABLE',@level1name=N'Session', @level2type=N'COLUMN',@level2name=N'expires'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'the string of a timespan value.' , @level0type=N'SCHEMA',@level0name=N'nilnul.login', @level1type=N'TABLE',@level1name=N'SessionLifeSpan', @level2type=N'COLUMN',@level2name=N'sessionLifeSpan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'conveyed. not sent or received. this occurs on the exchange server or route' , @level0type=N'SCHEMA',@level0name=N'nilnul.phone', @level1type=N'TABLE',@level1name=N'Sms', @level2type=N'COLUMN',@level2name=N'when'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'number, not human' , @level0type=N'SCHEMA',@level0name=N'nilnul.phone', @level1type=N'TABLE',@level1name=N'Sms', @level2type=N'COLUMN',@level2name=N'from'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'number ,not human' , @level0type=N'SCHEMA',@level0name=N'nilnul.phone', @level1type=N'TABLE',@level1name=N'Sms', @level2type=N'COLUMN',@level2name=N'to'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'human(id) or org(org#id)' , @level0type=N'SCHEMA',@level0name=N'nilnul.phone', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'user'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'the relation between number(domain) and user(codomain)' , @level0type=N'SCHEMA',@level0name=N'nilnul.phone', @level1type=N'TABLE',@level1name=N'User'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'a book, an issue of journal, a proceeding of conference, or archived' , @level0type=N'SCHEMA',@level0name=N'nilnul.research', @level1type=N'TABLE',@level1name=N'Published', @level2type=N'COLUMN',@level2name=N'publishingType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Pi(x):=#primes<=x' , @level0type=N'SCHEMA',@level0name=N'nilnul.uinteger', @level1type=N'TABLE',@level1name=N'Prime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'key must be provided to initialize a password' , @level0type=N'SCHEMA',@level0name=N'nilnul.web.user', @level1type=N'TABLE',@level1name=N'Register', @level2type=N'COLUMN',@level2name=N'key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'when user click the register button, the records will be kept here.' , @level0type=N'SCHEMA',@level0name=N'nilnul.web.user', @level1type=N'TABLE',@level1name=N'Register'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'null if invalid after user logoff.' , @level0type=N'SCHEMA',@level0name=N'nilnul.web.user', @level1type=N'TABLE',@level1name=N'Session', @level2type=N'COLUMN',@level2name=N'expires'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'don''t use uniqueIdentifier in sql server. instead use a string generated by web. Thus no value need to be returned in registering.' , @level0type=N'SCHEMA',@level0name=N'nilnulCom.web.user', @level1type=N'TABLE',@level1name=N'~Register_a', @level2type=N'COLUMN',@level2name=N'challenge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This will keep record of the register page:

email, 
time, 
the pin,
ip possible ' , @level0type=N'SCHEMA',@level0name=N'nilnulCom.web.user', @level1type=N'TABLE',@level1name=N'~Register_a'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Human (nilnul)"
            Begin Extent = 
               Top = 16
               Left = 214
               Bottom = 144
               Right = 370
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Birthdate (nilnul)"
            Begin Extent = 
               Top = 24
               Left = 407
               Bottom = 132
               Right = 558
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "BirthdayAsTask_1"
            Begin Extent = 
               Top = 20
               Left = 10
               Bottom = 131
               Right = 164
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 3555
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'wangyoutian', @level1type=N'VIEW',@level1name=N'BirthdayAsTask'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'wangyoutian', @level1type=N'VIEW',@level1name=N'BirthdayAsTask'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Task_1"
            Begin Extent = 
               Top = 6
               Left = 227
               Bottom = 223
               Right = 421
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "BirthdayAsTask (wangyoutian)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 105
               Right = 195
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 2250
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'wangyoutian', @level1type=N'VIEW',@level1name=N'Task'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'wangyoutian', @level1type=N'VIEW',@level1name=N'Task'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "a"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 124
               Right = 250
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "b"
            Begin Extent = 
               Top = 126
               Left = 48
               Bottom = 265
               Right = 250
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'wangyoutian.task', @level1type=N'VIEW',@level1name=N'TaskDeadline'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'wangyoutian.task', @level1type=N'VIEW',@level1name=N'TaskDeadline'
GO
USE [master]
GO
ALTER DATABASE [nilnul3] SET  READ_WRITE 
GO
