drop index if exists CUSTOMER_PK;

drop table if exists CUSTOMER;

drop index if exists APPEARS_FK;

drop index if exists HAVE_FK;

drop index if exists INVOICE_PK;

drop table if exists INVOICE;

drop index if exists PLAN_ANTIVIRUS_PK;

drop table if exists PLAN_ANTIVIRUS;

/*==============================================================*/
/* Table: CUSTOMER                                              */
/*==============================================================*/
create table CUSTOMER (
   ID_CUSTOMER          INT4                 not null,
   NAME                 CHAR(100)            not null,
   EMAIL                VARCHAR(100)         not null,
   PHONE_NUMBER         CHAR(15)             not null,
   BIRTH                DATE                 null,
   COUNTRY              CHAR(30)             not null,
   TYPE                 CHAR(20)             not null,
   constraint PK_CUSTOMER primary key (ID_CUSTOMER)
);

/*==============================================================*/
/* Index: CUSTOMER_PK                                           */
/*==============================================================*/
create unique index CUSTOMER_PK on CUSTOMER (
ID_CUSTOMER
);

/*==============================================================*/
/* Table: INVOICE                                               */
/*==============================================================*/
create table INVOICE (
   ID_CUSTOMER          INT4                 not null,
   ID_INVOICE           INT4                 not null,
   ID_ANTIVIRUS         INT4                 null,
   DATE                 DATE                 not null,
   SUBTOTAL             MONEY                not null,
   TAXES                MONEY                not null,
   TOTAL                MONEY                not null,
   constraint PK_INVOICE primary key (ID_CUSTOMER, ID_INVOICE)
);

/*==============================================================*/
/* Index: INVOICE_PK                                            */
/*==============================================================*/
create unique index INVOICE_PK on INVOICE (
ID_CUSTOMER,
ID_INVOICE
);

/*==============================================================*/
/* Index: HAVE_FK                                               */
/*==============================================================*/
create  index HAVE_FK on INVOICE (
ID_CUSTOMER
);

/*==============================================================*/
/* Index: APPEARS_FK                                            */
/*==============================================================*/
create  index APPEARS_FK on INVOICE (
ID_ANTIVIRUS
);

/*==============================================================*/
/* Table: PLAN_ANTIVIRUS                                        */
/*==============================================================*/
create table PLAN_ANTIVIRUS (
   ID_ANTIVIRUS         INT4                 not null,
   NAME                 CHAR(50)             not null,
   DESCRIPTION          CHAR(100)            not null,
   MONTHLY_PRICE        MONEY                not null,
   DURATION_YEARS       INT4                 not null,
   NUMBER_OF_USERS_RANGE INT4                 not null,
   TYPE                 CHAR(30)             not null,
   TIER                 CHAR(20)             not null,
   constraint PK_PLAN_ANTIVIRUS primary key (ID_ANTIVIRUS)
);

/*==============================================================*/
/* Index: PLAN_ANTIVIRUS_PK                                     */
/*==============================================================*/
create unique index PLAN_ANTIVIRUS_PK on PLAN_ANTIVIRUS (
ID_ANTIVIRUS
);

alter table INVOICE
   add constraint FK_INVOICE_APPEARS_PLAN_ANT foreign key (ID_ANTIVIRUS)
      references PLAN_ANTIVIRUS (ID_ANTIVIRUS)
      on delete restrict on update restrict;

alter table INVOICE
   add constraint FK_INVOICE_HAVE_CUSTOMER foreign key (ID_CUSTOMER)
      references CUSTOMER (ID_CUSTOMER)
      on delete restrict on update restrict;