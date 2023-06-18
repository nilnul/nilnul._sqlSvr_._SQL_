/*

select * from tb2
union
select * from tb1 where tb1.f2 != tb2.f2 and tb2.f1!=tb1.f1


类似这样的

【 在 wushunchao (blank) 的大作中提到: 】
: 标  题: 两表合并，重复时选取指定表的记录，怎么写sql？
: 发信站: 水木社区 (Wed Sep 14 09:47:03 2016), 站内
: 
: tb1          tb2          预期结果：
: f1 f2 f3     f1 f2 f3     f1 f2 f3
: 1  a  x      1  a  y      1  a  y
: 2  a  y      2  b  z      2  a  y
:                           2  b  z
*/

create table #tb1(f1 int ,f2 nvarchar(40),f3 nvarchar(40));

create table #tb2(f1 int, f2 nvarchar(40), f3 nvarchar(40));

insert #tb1(f1,f2,f3)
	values(
		1,'a','x'

	
	)
	,(2,'a','y')
insert #tb2(f1,f2,f3)
	values(
		1,'a','y'

	)
	,(2,'b','z')
	;
select * from #tb2
union
select * from #tb1 where #tb1.f2 != #tb2.f2 and #tb2.f1!=#tb1.f1
go

