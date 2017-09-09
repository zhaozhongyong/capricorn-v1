drop table if exists student;

/*==============================================================*/
/* Table: student                                               */
/*==============================================================*/
create table student
(
   id                   integer not null auto_increment,
   name                 varchar(20) not null,
   password             varchar(200) not null,
   primary key (id)
);
