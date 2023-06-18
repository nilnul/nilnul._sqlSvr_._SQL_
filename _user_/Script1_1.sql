


EXEC master..xp_logininfo @acctname = 'wangyoutian-pc\wangyoutian',@option = 'all' -- Show all paths a user gets his auth from

EXEC master..xp_logininfo @acctname = 'mydomain\authenticatedusers',@option = 'members'     -- show group members