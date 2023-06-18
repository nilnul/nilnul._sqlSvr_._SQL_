/*sql 语法学习*/

/*函数的学习－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－
－－－－－－－*/



--获取当前时间（时/分/秒）：

select convert(varchar(10),getdate(),8)
--获取当前年月日：
select convert(varchar(10),getdate(),120)
--获取当前年月：
select convert(varchar(7),getdate(),120)
--获取当前年月：
select convert(varchar(10),year(getdate())) + '-' + convert(varchar(10),month(getDate()))


print current_timestamp



-----------------将sql查询输出到txt文本文件中-------------------------------
------------
EXEC master..xp_cmdshell 'bcp 数据库名.dbo.表名 out d:/1.txt -c -q -U"sa" -
P"password"'

----------------------------------------------------------------------------
-----------

---------------------------round的用法beigin------------------------------
declare @s float
set @s = 0.1566134
print round(@s,3)
---------------------------round的用法end---------------------------------

--------------------------------自动收缩数据库begin-------------------------
----

EXEC [master]..sp_dboption [Database Name], 'autoshrink', 'TRUE'

--------------------------------自动收缩数据库end---------------------------
--


-------------------------------去除首尾无效的字符begin----------------------
----
declare @s varchar(20)
set @s=',,,1->1,'
while(left(@s,1)=',')
set @s=stuff(@s,1,1,'')
while(right(@s,1)=',')
set @s=stuff(reverse(@s),1,1,'')
select @s
-------------------------------去除首尾无效的字符end------------------------
--


------------删除数据库中的重复记录（且仅保留一条有效记录）示例--------------
---
create table A
(
 userID int identity(1,1),
 userName varchar(20),
 userPwd varchar(20),
 userEmail varchar(50)
)
insert into A(userName,userpwd) select 'qin','qin' union all select 
'qin','qin1' union all select 'qin','qin1'
select * from A

--method one
delete from A where userid not in(select min(userid) as userid from A group 
by username ,userpwd)

--method two
delete from A where exists (select * from A b where a.username = b.username 
and a.userpwd = b.userpwd and a.userid < b.userid)

--method three
delete from a where userid not in(select min(userid) from A b where 
a.username = b.username and a.userpwd = b.userpwd and a.userid > b.userID)

select * from A
drop table A

------------删除数据库中的重复记录（且仅保留一条有效记录）示例--------------
---

 


-------------------------------迭归的应用（找起点和终点之间的路径-----------
------------------
create table t
 (st varchar(20),ed varchar(20),km int)
go
insert t values ('A','B',1000)
insert t values ('A','C',1100)
insert t values ('A','D',900)
insert t values ('A','E',400)
insert t values ('B','D',300)
insert t values ('D','F',600)
insert t values ('E','A',400)
insert t values ('F','G',1000)
insert t values ('C','B',600)
go
--显示插入值
select * from t
go

--创建函数
--函数返回一个表，根据实际情况的不同一层一层的插入，可以充分利用生成的表
create function f_go(@col varchar(10))
 returns @t table(col varchar(30),st varchar(20),ed varchar(20),km int,level 
int)
as
begin
 declare @i int
 set @i=1
 insert @t select st+'-'+ed,*,@i from t where st=@col
 while exists (select * from t a,@t b where
  b.ed=a.st and b.level=@i and b.ed<>@col )
 begin
  set @i=@i+1
  insert @t
  select b.col+'-'+a.ed,a.st,a.ed,b.km+a.km,@i from t a,@t b
   where b.level=@i-1 and b.ed=a.st and b.ed<>@col
 end
 return
end
go

--调用
--select * from dbo.f_go('A')
select col,km from dbo.f_go('a')

--删除环境
drop function f_go
drop table t

-------------------------------迭归的应用（找起点和终点之间的路径-----------
------------------

 

 

--------按类别去最新的前N条记录,把同一类的放在一起,统计同一类的项的个数等---
----------
create table t
(
 ClassName varchar(50),
 ClassCode varchar(10),
 ClassID int identity(1,1)
)
insert into t 
select 'cccc1','002' union all
select 'aaaa','001' union all
select 'bbbb','001' union all
select 'aaaa1','002' union all
select 'cccc','001' union all
select 'dddd','001' union all
select 'bbbb1','002' union all
select 'dddd1','002'
select * from t
select ClassCode = (case when exists(select 1 from t t1 where classCode = 
t1.ClassCode 
and ClassID < t1.ClassID) 
then '' else ClassCode end),ClassName from t order by ClassCode,ClassID desc

select count(*),classCode from (select top 100 percent ClassCode = (case 
when exists(select 1 from t t1 where classCode = t1.ClassCode 
and ClassID < t1.ClassID) 
then '' else ClassCode end),ClassName from t order by ClassCode,ClassID 
desc)a group by classcode

select classCode,className from t order by classCode,classID desc
drop table t

--------按类别去最新的前N条记录,把同一类的放在一起,统计同一类的项的个数等---
----------

 

-------------同上,按类别进行统计,把同一类的项的其他内容进行相加并发在一个字段中------------------
create table tb(ProductID varchar(10),PositionID varchar(10))
insert into tb 
select '10001','A1'
union all select '10001','B2'
union all select '10002','C3'
union all select '10002','D4'
union all select '10002','E5'
go

create function dbo.fc_str(@ProductID varchar(10))
returns varchar(100)
as
begin
 declare @sql varchar(1000)
 set @sql=''
 select @sql=@sql+','+cast(PositionID as varchar(20)) from tb where 
ProductID=@ProductID
 return stuff(@sql,1,1,'')
end
go

select ProductID,dbo.fc_str(ProductID) as PositionID from tb group by 
ProductID

drop table tb

drop function dbo.fc_str

-------------按类别进行统计,把同一类的项的其他内容进行相加并发在一个字段中--
----------------

 

 

--取各个类的前n条记录(每个类都取top n条)
--如果有数据库中有多个类,现在要取每个类的前n条记录,可用以下语句
Create Table TEST
(ID Int Identity(1,1),
 h_id Int)
Insert TEST Select 100
Union All Select 100
Union All Select 100
Union All Select 101
Union All Select 101
Union All Select 101
Union All Select 100
GO
--方法一：
Select * From TEST A Where Id In(Select TOP 3 ID From TEST Where 
h_id=A.h_id)
--方法二：
Select * From TEST A Where Not Exists (Select 1 From TEST Where h_id=A.h_id 
And ID<A.ID Having Count(*)>2)
--方法三：
Select * From TEST A Where (Select Count(*) From TEST Where h_id=A.h_id And 
ID<A.ID)<3
GO
Drop Table TEST
GO


--分组统计,统计每个段中数据的个数
--一般成绩统计可以用到这个
declare @t table(id int,weight int)
insert into @t select  1, 20
insert into @t select  2, 15
insert into @t select  3,  5
insert into @t select  4, 60
insert into @t select  5, 12
insert into @t select  6, 33
insert into @t select  7, 45
insert into @t select  8, 59
insert into @t select  9, 89
insert into @t select 10,110

declare @p int 
set @p=10
select 
    rtrim(p*@p)+'-'+rtrim((p+1)*@p">p*@p)+'-'+rtrim((p+1)*@p) as p,
    num 
from 
    (select (weight/@p">weight/@p) as p,count(*) as num from @t where weight 
between 10 and 100 group by (weight/@p">weight/@p)) a

 

----------------------------在in语句中只用自定义排序begin-------------------
-------------
declare @t table(id int,weight int)
insert into @t select  1, 20
insert into @t select  2, 15
insert into @t select  3,  5
insert into @t select  4, 60
insert into @t select  5, 12
insert into @t select  6, 33
insert into @t select  7, 45
insert into @t select  8, 59
insert into @t select  9, 89
insert into @t select 10,110
--默认in语句中sql会按照id进行排序
select * from @t where id in(2,4,3)
--用此方法可以按照我们传入的id顺序进行显示数据
select * from @t where id in(2,4,3) order by charindex(rtrim(id),',2,4,3,')

----------------------------在in语句中只用自定义排序end---------------------
