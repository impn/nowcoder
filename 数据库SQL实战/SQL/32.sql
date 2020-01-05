select
    -- concat(last_name," ",first_name) as name    
    -- SQLite数据库只支持用连接符号"||"来连接字符串,不支持concat
    last_name||" "||first_name
from employees;