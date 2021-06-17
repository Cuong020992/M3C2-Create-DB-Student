create schema QLBanHang;
use QLbanhang;
create table Customer(
cID int not null auto_increment primary key,
cName varchar(60),
cAge int not null
);

create table orders(
oID int not null auto_increment primary key,
cID int not null,
foreign key (cID) references customer (cID),
oDate date not null,
oTotalPrice double not null
);

create table product(
pID int not null auto_increment primary key,
pName varchar(60),
pPrice int
);

create table orderDetail(
oID int not null,
pID int not null,
foreign key(oID) references orders (oID),
foreign key(pID) references product (pID),
odQTY int
);

