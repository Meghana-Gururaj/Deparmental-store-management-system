TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `user_after_insert` AFTER INSERT ON `customer` FOR EACH ROW BEGIN \ninsert into login values(new.uname,new.pass);\nEND'
sql_modes=1098907648
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_unicode_ci'
db_cl_names='utf8mb4_general_ci'
created=157460861680
