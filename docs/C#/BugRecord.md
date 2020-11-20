# BUG记录

1. `“Unable to cast object of type 'System.DBNull' to type 'System.String'.”`
数据库设为了初始没有设置非空，改成`NOT NULL`之后，没有把null的部分添加上数据