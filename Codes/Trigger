CREATE DEFINER=`root`@`localhost` TRIGGER `user_after_insert` AFTER INSERT ON `customer` FOR EACH ROW BEGIN 
insert into login values(new.uname,new.pass);
END
