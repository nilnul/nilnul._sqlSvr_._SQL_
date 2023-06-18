IF OBJECT_ID('Blog', 'U') IS NOT NULL
  DROP TABLE Blog
  ;

  IF OBJECT_ID('Post', 'U') IS NOT NULL
  DROP TABLE Post
  ;

create table Blog(
  BlogId int identity(1,1) not null,
  BlogName nvarchar(256)
)

create table Post(
  PostId int identity(1,1) not null,
  BlogId int not null, -- yes, this should be FK
  PostName nvarchar(256)
)
;


go

insert Blog (BlogName) values(
'Blog #1 '

);
insert Post(BlogId,PostName)
	values(
 1 ,'Post #1 in Blog #1 '
	
	),
	(
 1,' Post #2 in Blog #1 '
	
	)
	;
go






if exists(Select * from sysobjects where name = 'GetBlogWithDetails')
drop proc GetBlogWithDetails
;

if (object_id('ExampleProc', 'p') is not null)
    drop procedure dbo.ExampleProc

go

create procedure GetBlogWithDetails(@BlogId int) as 
begin
select BlogId, BlogName 
  from Blog 
  where BlogId = @BlogId

  select PostId, BlogId, PostName 
  from Post 
  where BlogId = @BlogId
end
go
--You can’t access its second result set. The solution is to render same data as XML and return this XML as output parameter.

go

if exists(Select * from sysobjects where name = 'GetBlogWithDetailsXml')
drop proc GetBlogWithDetailsXml
;
go

create procedure GetBlogWithDetailsXml(
  @blogId int, 
  @xml xml output) as 
begin
  -- first, create 2 table variables for blogs and for posts
  declare @blogRows table(BlogId int, BlogName nvarchar(256))
  declare @postRows table(PostId int, BlogId int, PostName nvarchar(256))

  -- (#1) this is where you implement your useful logic
  insert into @blogRows
  select BlogId, BlogName 
  from Blog 
  where BlogId = @blogId

  insert into @postRows
  select PostId, BlogId, PostName 
  from Post
  where BlogId = @blogId

  -- here you render your 2 tables containing useful data as XML
  declare @blogRowsXml xml = (
    select BlogId, BlogName 
    from @blogRows as Blog
    for xml auto)

  declare @postRowsXml xml = (
    select PostId, BlogId, PostName 
    from @postRows as Post
    for xml auto)

  -- here you build a single XML with all the data required
  set @xml = 
    cast(@blogRowsXml as nvarchar(max)) + 
    cast(@postRowsXml as nvarchar(max))

  -- (#2) here you return the data as "raw" result sets.
  select * from @blogRows
  select * from @postRows
end

go


declare @xml xml
exec GetBlogWithDetailsXml 1, @xml output

select @xml

--returns XML like this:
--<Blog BlogId="1" BlogName="Blog #1" />
--<Post PostId="1" BlogId="1" PostName="Post #1 in Blog #1" />
--<Post PostId="2" BlogId="1" PostName="Post #2 in Blog #1" />

--It’s now pretty easy to extract all the data returned:


select
  Col.value('@BlogId', 'int') as BlogId,
  Col.value('@BlogName', 'nvarchar(256)') as BlogName
from @xml.nodes('/Blog') as Data(Col)

select
  Col.value('@PostId', 'int') as PostId,
  Col.value('@BlogId', 'int') as BlogId,
  Col.value('@PostName', 'nvarchar(256)') as PostName
from @xml.nodes('/Post') as Data(Col)


--with my test data, it returns:


--BlogId

--BlogName

--1 Blog #1 


--PostId

--BlogId

--PostName

--1 1 Post #1 in Blog #1 
--2 1 Post #2 in Blog #1 


