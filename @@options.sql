select @@OPTIONS
;
go
sp_configure
;
;
set nocount on
select 512 & @@OPTIONS , 'on'
set nocount off

select 512 & @@OPTIONS , 'off'

