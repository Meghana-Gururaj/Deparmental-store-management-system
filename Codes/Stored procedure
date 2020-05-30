CREATE DEFINER=`root`@`localhost` PROCEDURE `item`(in p_name varchar(20),in p_itemid int(20), in p_quantity int(11))
BEGIN
DECLARE oprice INT DEFAULT 0;
DECLARE oname VARCHAR(100);
select price into oprice from items where items.itemid=p_itemid;
select iname into oname from items where items.itemid=p_itemid;
insert into orders(uname,itemid,iname,quantity,price) values(p_name,p_itemid,oname,p_quantity,oprice*p_quantity);
END
