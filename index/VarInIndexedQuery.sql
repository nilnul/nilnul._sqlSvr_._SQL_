/*

请教关于sqlserver索引的问题！
发信站: 水木社区 (Wed Feb  7 13:03:26 2018), 站内

做了个测试，百思不得其解，求指点！

表Emp(emp_id int, emp_name varchar(10)), emp_id上建了聚集索引（其它索引不表）

1. select emp_id, emp_name from emp_id >= 1 and emp_id <= 10
   
聚集索引，快；

2. declare @a int, @b int; set @a = 1; set @b = 10;
   
   select emp_id, emp_name from emp_id >= @a and emp_id <= @b
   
没用聚集索引，慢；执行计划提示缺少索引。

这是个什么原理？

--
猪全身是宝,我全身是病.来世想做猪,又怕是病猪,难啊!


※ 来源:·水木社区 newsmth.net·[FROM: 112.95.249.*]

[本篇全文] [回复文章] [本篇作者：szmzy] [回信给作者] [进入讨论区] [返回顶部][分享到 腾讯微博]
2
发信人: szmzy (陈氏美,郎嫌平), 信区: Database
标  题: Re: 请教关于sqlserver索引的问题！
发信站: 水木社区 (Wed Feb  7 13:07:20 2018), 站内

第2条，如果我用 with(index=xxxx)指定使用聚集索引，效果就和1是一样的。

【 在 szmzy (陈氏美,郎嫌平) 的大作中提到: 】
: 做了个测试，百思不得其解，求指点！
: 表Emp(emp_id int, emp_name varchar(10)), emp_id上建了聚集索引（其它索引不表）
: 1. select emp_id, emp_name from emp_id >= 1 and emp_id <= 10
: ...................
*/