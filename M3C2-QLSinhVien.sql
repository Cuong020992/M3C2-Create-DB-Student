USE QuanLySinhVien;
CREATE TABLE Class(
ClassID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
ClassName VARCHAR(60) NOT NULL,
StrartDate DATETIME NOT NULL,
Status int
);

create table Student(
StudentId int not null auto_increment primary key,
StudentName varchar(30) not null,
address varchar(50),
phone varchar(20),
status int,
classid int not null,
foreign key (classid) references class (classid)
);

create table subject(
SubId int not null auto_increment primary key,
SubName varchar(30) not null,
Credit tinyint not null default 1 check (credit >=1),
status int default 1
);

CREATE TABLE Mark
(
    MarkId    INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SubId     INT NOT NULL,
    StudentId INT NOT NULL,
    Mark      FLOAT   DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
    ExamTimes TINYINT DEFAULT 1,
    UNIQUE (SubId, StudentId),
    FOREIGN KEY (SubId) REFERENCES Subject (SubId),
    FOREIGN KEY (StudentId) REFERENCES Student (StudentId)
);