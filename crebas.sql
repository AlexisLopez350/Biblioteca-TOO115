/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2016                    */
/* Created on:     18/11/2018 00:51:38                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CATERGORIA') and o.name = 'FK_CATERGOR_FK_CATERG_CATERGOR')
alter table CATERGORIA
   drop constraint FK_CATERGOR_FK_CATERG_CATERGOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CATERGORIA') and o.name = 'FK_CATERGOR_REFERENCE_USUARIO')
alter table CATERGORIA
   drop constraint FK_CATERGOR_REFERENCE_USUARIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DEPARTAMENTO') and o.name = 'FK_DEPARTAM_REFERENCE_MUNICIPI')
alter table DEPARTAMENTO
   drop constraint FK_DEPARTAM_REFERENCE_MUNICIPI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DETALLEDEPERSONA') and o.name = 'FK_DETALLED_REFERENCE_PERSONA')
alter table DETALLEDEPERSONA
   drop constraint FK_DETALLED_REFERENCE_PERSONA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MATERIALBIBLIOGRAFICO') and o.name = 'FK_MATERIAL_FK_MATERI_CATERGOR')
alter table MATERIALBIBLIOGRAFICO
   drop constraint FK_MATERIAL_FK_MATERI_CATERGOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MATERIALBIBLIOGRAFICO') and o.name = 'FK_MATERIAL_FK_MATERI_DOCUMENT')
alter table MATERIALBIBLIOGRAFICO
   drop constraint FK_MATERIAL_FK_MATERI_DOCUMENT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MATERIALBIBLIOGRAFICO') and o.name = 'FK_MATERIAL_FK_MATERI_TIPODOCU')
alter table MATERIALBIBLIOGRAFICO
   drop constraint FK_MATERIAL_FK_MATERI_TIPODOCU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MATERIALBIBLIOGRAFICO') and o.name = 'FK_MATERIAL_REFERENCE_USUARIO')
alter table MATERIALBIBLIOGRAFICO
   drop constraint FK_MATERIAL_REFERENCE_USUARIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MATERIALBIBLIOGRAFICO') and o.name = 'FK_MATERIAL_REFERENCE_RELATION')
alter table MATERIALBIBLIOGRAFICO
   drop constraint FK_MATERIAL_REFERENCE_RELATION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MENU') and o.name = 'FK_MENU_FK_MENU_R_MENU')
alter table MENU
   drop constraint FK_MENU_FK_MENU_R_MENU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MENU') and o.name = 'FK_MENU_FK_MENU_S_ROL')
alter table MENU
   drop constraint FK_MENU_FK_MENU_S_ROL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PENALIZACION') and o.name = 'FK_PENALIZA_FK_PENALI_USUARIO')
alter table PENALIZACION
   drop constraint FK_PENALIZA_FK_PENALI_USUARIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PERSONA') and o.name = 'FK_PERSONA_REFERENCE_MUNICIPI')
alter table PERSONA
   drop constraint FK_PERSONA_REFERENCE_MUNICIPI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRESTAMO') and o.name = 'FK_PRESTAMO_FK_PRESTA_MATERIAL')
alter table PRESTAMO
   drop constraint FK_PRESTAMO_FK_PRESTA_MATERIAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRESTAMO') and o.name = 'FK_PRESTAMO_FK_PRESTA_USUARIO')
alter table PRESTAMO
   drop constraint FK_PRESTAMO_FK_PRESTA_USUARIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('RELATIONSHIP_15') and o.name = 'FK_RELATION_RELATIONS_AUTOR')
alter table RELATIONSHIP_15
   drop constraint FK_RELATION_RELATIONS_AUTOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('USUARIO') and o.name = 'FK_USUARIO_FK_USUARI_PERSONA')
alter table USUARIO
   drop constraint FK_USUARIO_FK_USUARI_PERSONA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('USUARIO') and o.name = 'FK_USUARIO_REFERENCE_ROL')
alter table USUARIO
   drop constraint FK_USUARIO_REFERENCE_ROL
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AUTOR')
            and   type = 'U')
   drop table AUTOR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CATERGORIA')
            and   name  = 'FK_USUARIO_RELATIONS_CATERGOR_FK'
            and   indid > 0
            and   indid < 255)
   drop index CATERGORIA.FK_USUARIO_RELATIONS_CATERGOR_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CATERGORIA')
            and   name  = 'FK_CATERGOR_RELATIONS_CATERGOR_FK'
            and   indid > 0
            and   indid < 255)
   drop index CATERGORIA.FK_CATERGOR_RELATIONS_CATERGOR_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CATERGORIA')
            and   type = 'U')
   drop table CATERGORIA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DEPARTAMENTO')
            and   type = 'U')
   drop table DEPARTAMENTO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DETALLEDEPERSONA')
            and   type = 'U')
   drop table DETALLEDEPERSONA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DOCUMENTOLOCALIDAD')
            and   type = 'U')
   drop table DOCUMENTOLOCALIDAD
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MATERIALBIBLIOGRAFICO')
            and   name  = 'FK_MATERIAL_RELATIONS_TIPODOCU_FK'
            and   indid > 0
            and   indid < 255)
   drop index MATERIALBIBLIOGRAFICO.FK_MATERIAL_RELATIONS_TIPODOCU_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MATERIALBIBLIOGRAFICO')
            and   name  = 'FK_MATERIAL_RELATIONS_PRESTAMO_FK'
            and   indid > 0
            and   indid < 255)
   drop index MATERIALBIBLIOGRAFICO.FK_MATERIAL_RELATIONS_PRESTAMO_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MATERIALBIBLIOGRAFICO')
            and   name  = 'FK_MATERIAL_RELATIONS_DOCUMENT_FK'
            and   indid > 0
            and   indid < 255)
   drop index MATERIALBIBLIOGRAFICO.FK_MATERIAL_RELATIONS_DOCUMENT_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MATERIALBIBLIOGRAFICO')
            and   name  = 'FK_MATERIAL_RELATIONS_CATERGOR_FK'
            and   indid > 0
            and   indid < 255)
   drop index MATERIALBIBLIOGRAFICO.FK_MATERIAL_RELATIONS_CATERGOR_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MATERIALBIBLIOGRAFICO')
            and   type = 'U')
   drop table MATERIALBIBLIOGRAFICO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MENU')
            and   name  = 'FK_MENU_SEMUESTRA_ROL_FK'
            and   indid > 0
            and   indid < 255)
   drop index MENU.FK_MENU_SEMUESTRA_ROL_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MENU')
            and   name  = 'FK_MENU_RELATIONS_MENU_FK'
            and   indid > 0
            and   indid < 255)
   drop index MENU.FK_MENU_RELATIONS_MENU_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MENU')
            and   type = 'U')
   drop table MENU
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MUNICIPIO')
            and   type = 'U')
   drop table MUNICIPIO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PENALIZACION')
            and   name  = 'FK_PENALIZA_RELATIONS_USUARIO_FK'
            and   indid > 0
            and   indid < 255)
   drop index PENALIZACION.FK_PENALIZA_RELATIONS_USUARIO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PENALIZACION')
            and   type = 'U')
   drop table PENALIZACION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PERSONA')
            and   type = 'U')
   drop table PERSONA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PRESTAMO')
            and   name  = 'FK_PRESTAMO_RELATIONS_USUARIO_FK'
            and   indid > 0
            and   indid < 255)
   drop index PRESTAMO.FK_PRESTAMO_RELATIONS_USUARIO_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PRESTAMO')
            and   name  = 'FK_PRESTAMO_RELATIONS_MATERIAL_FK'
            and   indid > 0
            and   indid < 255)
   drop index PRESTAMO.FK_PRESTAMO_RELATIONS_MATERIAL_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRESTAMO')
            and   type = 'U')
   drop table PRESTAMO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('RELATIONSHIP_15')
            and   name  = 'RELATIONSHIP_15_FK'
            and   indid > 0
            and   indid < 255)
   drop index RELATIONSHIP_15.RELATIONSHIP_15_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('RELATIONSHIP_15')
            and   type = 'U')
   drop table RELATIONSHIP_15
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ROL')
            and   type = 'U')
   drop table ROL
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TIPODOCUMENTO')
            and   type = 'U')
   drop table TIPODOCUMENTO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('USUARIO')
            and   name  = 'FK_USUARIO_RELATIONS_PERSONA_FK'
            and   indid > 0
            and   indid < 255)
   drop index USUARIO.FK_USUARIO_RELATIONS_PERSONA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('USUARIO')
            and   type = 'U')
   drop table USUARIO
go

/*==============================================================*/
/* Table: AUTOR                                                 */
/*==============================================================*/
create table AUTOR (
   IDAUTOR              numeric              identity(1,1),
   NOMBRE               varchar(1024)        null,
   constraint PK_AUTOR primary key (IDAUTOR)
)
go

/*==============================================================*/
/* Table: CATERGORIA                                            */
/*==============================================================*/
create table CATERGORIA (
   IDCATEGORIA          numeric              identity(1,1),
   CAT_IDCATEGORIA      numeric              null,
   IDUSUARIO            varchar(255)         null,
   NOMCAT               varchar(1024)        null,
   constraint PK_CATERGORIA primary key (IDCATEGORIA)
)
go

/*==============================================================*/
/* Index: FK_CATERGOR_RELATIONS_CATERGOR_FK                     */
/*==============================================================*/




create nonclustered index FK_CATERGOR_RELATIONS_CATERGOR_FK on CATERGORIA (CAT_IDCATEGORIA ASC)
go

/*==============================================================*/
/* Index: FK_USUARIO_RELATIONS_CATERGOR_FK                      */
/*==============================================================*/




create nonclustered index FK_USUARIO_RELATIONS_CATERGOR_FK on CATERGORIA (IDUSUARIO ASC)
go

/*==============================================================*/
/* Table: DEPARTAMENTO                                          */
/*==============================================================*/
create table DEPARTAMENTO (
   IDDEP                int                  not null,
   IDMUNICIPIO          int                  not null,
   NOMDEP               varchar(1024)        null,
   constraint PK_DEPARTAMENTO primary key (IDDEP)
)
go

/*==============================================================*/
/* Table: DETALLEDEPERSONA                                      */
/*==============================================================*/
create table DETALLEDEPERSONA (
   IDDETALLE            int                  not null,
   IDPERSONA            varchar(255)         null,
   LUGARDEESTUDIOS      varchar(255)         null,
   TRABAJA              bit                  null,
   ESTUDIA              bit                  null,
   NOMBREMADRE          varchar(255)         null,
   NOMBREPADRE          varchar(255)         null,
   constraint PK_DETALLEDEPERSONA primary key nonclustered (IDDETALLE)
)
go

/*==============================================================*/
/* Table: DOCUMENTOLOCALIDAD                                    */
/*==============================================================*/
create table DOCUMENTOLOCALIDAD (
   IDLOCALIDAD          numeric              identity(1,1),
   LOCALIDADFISICOODIGITAL bit                  null,
   LOCACIONOURL         varchar(1024)        null,
   constraint PK_DOCUMENTOLOCALIDAD primary key (IDLOCALIDAD)
)
go

/*==============================================================*/
/* Table: MATERIALBIBLIOGRAFICO                                 */
/*==============================================================*/
create table MATERIALBIBLIOGRAFICO (
   IDMATBIBLIO          numeric              not null,
   IDLOCALIDAD          numeric              null,
   IDCATEGORIA          numeric              null,
   IDTIPO               numeric              null,
   IDUSUARIO            varchar(255)         null,
   REL_IDAUTOR          numeric              null,
   NOMBRE               varchar(1024)        null,
   DESCRIPCION          varchar(1024)        null,
   SINOPSIS             varchar(1024)        null,
   FECHA                datetime             null,
   VOLUMEN              int                  null,
   UNIDADES             varchar(1024)        null,
   EDITORIAL            varchar(1024)        null,
   LENGUAJE             varchar(1024)        null,
   FOTO                 varchar(1024)        null,
   IDAUTOR              int                  null,
   constraint PK_MATERIALBIBLIOGRAFICO primary key (IDMATBIBLIO)
)
go

/*==============================================================*/
/* Index: FK_MATERIAL_RELATIONS_CATERGOR_FK                     */
/*==============================================================*/




create nonclustered index FK_MATERIAL_RELATIONS_CATERGOR_FK on MATERIALBIBLIOGRAFICO (IDCATEGORIA ASC)
go

/*==============================================================*/
/* Index: FK_MATERIAL_RELATIONS_DOCUMENT_FK                     */
/*==============================================================*/




create nonclustered index FK_MATERIAL_RELATIONS_DOCUMENT_FK on MATERIALBIBLIOGRAFICO (IDLOCALIDAD ASC)
go

/*==============================================================*/
/* Index: FK_MATERIAL_RELATIONS_PRESTAMO_FK                     */
/*==============================================================*/




create nonclustered index FK_MATERIAL_RELATIONS_PRESTAMO_FK on MATERIALBIBLIOGRAFICO (IDUSUARIO ASC)
go

/*==============================================================*/
/* Index: FK_MATERIAL_RELATIONS_TIPODOCU_FK                     */
/*==============================================================*/




create nonclustered index FK_MATERIAL_RELATIONS_TIPODOCU_FK on MATERIALBIBLIOGRAFICO (IDTIPO ASC)
go

/*==============================================================*/
/* Table: MENU                                                  */
/*==============================================================*/
create table MENU (
   IDMENU               int                  not null,
   IDROL                numeric              null,
   MEN_IDMENU           int                  null,
   NOMBRE               varchar(1024)        null,
   constraint PK_MENU primary key (IDMENU)
)
go

/*==============================================================*/
/* Index: FK_MENU_RELATIONS_MENU_FK                             */
/*==============================================================*/




create nonclustered index FK_MENU_RELATIONS_MENU_FK on MENU (MEN_IDMENU ASC)
go

/*==============================================================*/
/* Index: FK_MENU_SEMUESTRA_ROL_FK                              */
/*==============================================================*/




create nonclustered index FK_MENU_SEMUESTRA_ROL_FK on MENU (IDROL ASC)
go

/*==============================================================*/
/* Table: MUNICIPIO                                             */
/*==============================================================*/
create table MUNICIPIO (
   IDMUNICIPIO          int                  not null,
   NOMMUN               varchar(1024)        null,
   constraint PK_MUNICIPIO primary key (IDMUNICIPIO)
)
go

/*==============================================================*/
/* Table: PENALIZACION                                          */
/*==============================================================*/
create table PENALIZACION (
   IDPE                 int                  not null,
   IDUSUARIO            varchar(255)         not null,
   FECHAINI             datetime             null,
   FECHAFIN             datetime             null,
   constraint PK_PENALIZACION primary key (IDPE)
)
go

/*==============================================================*/
/* Index: FK_PENALIZA_RELATIONS_USUARIO_FK                      */
/*==============================================================*/




create nonclustered index FK_PENALIZA_RELATIONS_USUARIO_FK on PENALIZACION (IDUSUARIO ASC)
go

/*==============================================================*/
/* Table: PERSONA                                               */
/*==============================================================*/
create table PERSONA (
   IDPERSONA            varchar(255)         not null,
   IDMUNICIPIO          int                  null,
   NOMBRE               varchar(255)         not null,
   APELLIDO             varchar(255)         not null,
   FECHANACIMIENTO      datetime             null,
   GENERO               varchar(255)         not null,
   DIRECCION            varchar(255)         not null,
   TELEFONO             varchar(255)         not null,
   constraint PK_PERSONA primary key (IDPERSONA)
)
go

/*==============================================================*/
/* Table: PRESTAMO                                              */
/*==============================================================*/
create table PRESTAMO (
   IDPRESTAMO           int                  not null,
   IDMATBIBLIO          numeric              null,
   IDUSUARIO            varchar(255)         null,
   FECHADEPRESTAMO      varchar(1024)        null,
   FECHADEENTREGA       varchar(1024)        null,
   constraint PK_PRESTAMO primary key (IDPRESTAMO)
)
go

/*==============================================================*/
/* Index: FK_PRESTAMO_RELATIONS_MATERIAL_FK                     */
/*==============================================================*/




create nonclustered index FK_PRESTAMO_RELATIONS_MATERIAL_FK on PRESTAMO (IDMATBIBLIO ASC)
go

/*==============================================================*/
/* Index: FK_PRESTAMO_RELATIONS_USUARIO_FK                      */
/*==============================================================*/




create nonclustered index FK_PRESTAMO_RELATIONS_USUARIO_FK on PRESTAMO (IDUSUARIO ASC)
go

/*==============================================================*/
/* Table: RELATIONSHIP_15                                       */
/*==============================================================*/
create table RELATIONSHIP_15 (
   IDAUTOR              numeric              not null,
   IDMATBIBLIO          numeric              not null,
   constraint PK_RELATIONSHIP_15 primary key (IDAUTOR, IDMATBIBLIO)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_15_FK on RELATIONSHIP_15 (IDAUTOR ASC)
go

/*==============================================================*/
/* Table: ROL                                                   */
/*==============================================================*/
create table ROL (
   IDROL                numeric              identity(1,1),
   NOMROL               varchar(255)         null,
   constraint PK_ROL primary key (IDROL)
)
go

/*==============================================================*/
/* Table: TIPODOCUMENTO                                         */
/*==============================================================*/
create table TIPODOCUMENTO (
   IDTIPO               numeric              identity(1,1),
   TIPODOCUMENTO        varchar(1024)        null,
   constraint PK_TIPODOCUMENTO primary key (IDTIPO)
)
go

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
   IDUSUARIO            varchar(255)         not null,
   IDPERSONA            varchar(255)         not null,
   IDROL                numeric              null,
   CONTRASENA           varchar(255)         not null,
   ESTADO               int                  null,
   constraint PK_USUARIO primary key (IDUSUARIO)
)
go

/*==============================================================*/
/* Index: FK_USUARIO_RELATIONS_PERSONA_FK                       */
/*==============================================================*/




create nonclustered index FK_USUARIO_RELATIONS_PERSONA_FK on USUARIO (IDPERSONA ASC)
go

alter table CATERGORIA
   add constraint FK_CATERGOR_FK_CATERG_CATERGOR foreign key (CAT_IDCATEGORIA)
      references CATERGORIA (IDCATEGORIA)
go

alter table CATERGORIA
   add constraint FK_CATERGOR_REFERENCE_USUARIO foreign key (IDUSUARIO)
      references USUARIO (IDUSUARIO)
go

alter table DEPARTAMENTO
   add constraint FK_DEPARTAM_REFERENCE_MUNICIPI foreign key (IDMUNICIPIO)
      references MUNICIPIO (IDMUNICIPIO)
go

alter table DETALLEDEPERSONA
   add constraint FK_DETALLED_REFERENCE_PERSONA foreign key (IDPERSONA)
      references PERSONA (IDPERSONA)
go

alter table MATERIALBIBLIOGRAFICO
   add constraint FK_MATERIAL_FK_MATERI_CATERGOR foreign key (IDCATEGORIA)
      references CATERGORIA (IDCATEGORIA)
go

alter table MATERIALBIBLIOGRAFICO
   add constraint FK_MATERIAL_FK_MATERI_DOCUMENT foreign key (IDLOCALIDAD)
      references DOCUMENTOLOCALIDAD (IDLOCALIDAD)
go

alter table MATERIALBIBLIOGRAFICO
   add constraint FK_MATERIAL_FK_MATERI_TIPODOCU foreign key (IDTIPO)
      references TIPODOCUMENTO (IDTIPO)
go

alter table MATERIALBIBLIOGRAFICO
   add constraint FK_MATERIAL_REFERENCE_USUARIO foreign key (IDUSUARIO)
      references USUARIO (IDUSUARIO)
go

alter table MATERIALBIBLIOGRAFICO
   add constraint FK_MATERIAL_REFERENCE_RELATION foreign key (REL_IDAUTOR, IDMATBIBLIO)
      references RELATIONSHIP_15 (IDAUTOR, IDMATBIBLIO)
go

alter table MENU
   add constraint FK_MENU_FK_MENU_R_MENU foreign key (MEN_IDMENU)
      references MENU (IDMENU)
go

alter table MENU
   add constraint FK_MENU_FK_MENU_S_ROL foreign key (IDROL)
      references ROL (IDROL)
go

alter table PENALIZACION
   add constraint FK_PENALIZA_FK_PENALI_USUARIO foreign key (IDUSUARIO)
      references USUARIO (IDUSUARIO)
go

alter table PERSONA
   add constraint FK_PERSONA_REFERENCE_MUNICIPI foreign key (IDMUNICIPIO)
      references MUNICIPIO (IDMUNICIPIO)
go

alter table PRESTAMO
   add constraint FK_PRESTAMO_FK_PRESTA_MATERIAL foreign key (IDMATBIBLIO)
      references MATERIALBIBLIOGRAFICO (IDMATBIBLIO)
go

alter table PRESTAMO
   add constraint FK_PRESTAMO_FK_PRESTA_USUARIO foreign key (IDUSUARIO)
      references USUARIO (IDUSUARIO)
go

alter table RELATIONSHIP_15
   add constraint FK_RELATION_RELATIONS_AUTOR foreign key (IDAUTOR)
      references AUTOR (IDAUTOR)
go

alter table USUARIO
   add constraint FK_USUARIO_FK_USUARI_PERSONA foreign key (IDPERSONA)
      references PERSONA (IDPERSONA)
go

alter table USUARIO
   add constraint FK_USUARIO_REFERENCE_ROL foreign key (IDROL)
      references ROL (IDROL)
go

