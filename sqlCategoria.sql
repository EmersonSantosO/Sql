/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     22-12-2021 17:55:56                          */
/*==============================================================*/


/*==============================================================*/
/* Table: Categoria                                             */
/*==============================================================*/
create table Categoria
(
   categoriaID          int not null AUTO_INCREMENT,
   nombre               varchar(254),
   primary key (categoriaID)
);

/*==============================================================*/
/* Table: Producto                                              */
/*==============================================================*/
create table Producto
(
   codigo               int not null,
   categoriaID          int not null,
   nombre               varchar(254),
   precio               int,
   stock                int,
   primary key (codigo)
);

alter table Producto add constraint FK_association1 foreign key (categoriaID)
      references Categoria (categoriaID) on delete restrict on update restrict;

