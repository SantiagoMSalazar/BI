drop index if exists CUSTOMER_PK;

drop table if exists CUSTOMER;

drop index if exists PLAN_ANTIVIRUS_PK;

drop table if exists PLAN_ANTIVIRUS;

drop index if exists IN_FK;

drop index if exists APPEARS_IN_FK;

drop index if exists HAS_FK;

drop table if exists SALES_FACT_TABLE;

drop index if exists TIME_PK;

drop table if exists TIME;

/*==============================================================*/
/* Table: CUSTOMER                                              */
/*==============================================================*/
create table CUSTOMER (
   ID_CUSTOMER          INT4                 not null,
   SK_CUSTOMER          INT4                 not null,
   NAME                 CHAR(30)             not null,
   TYPE                 CHAR(20)             not null,
   COUNTRY              CHAR(30)             null,
   constraint PK_CUSTOMER primary key (ID_CUSTOMER)
);

/*==============================================================*/
/* Index: CUSTOMER_PK                                           */
/*==============================================================*/
create unique index CUSTOMER_PK on CUSTOMER (
ID_CUSTOMER
);

/*==============================================================*/
/* Table: PLAN_ANTIVIRUS                                        */
/*==============================================================*/
create table PLAN_ANTIVIRUS (
   ID_ANTIVIRUS         INT4                 not null,
   SK_ANTIVIRUS         INT4                 not null,
   NAME                 CHAR(50)             not null,
   DURATION_YEARS       INT4                 not null,
   TIER                 CHAR(20)             not null,
   TYPE                 CHAR(30)             not null,
   NUMBER_OF_USERS_RANGE INT4                 not null,
   constraint PK_PLAN_ANTIVIRUS primary key (ID_ANTIVIRUS)
);

/*==============================================================*/
/* Index: PLAN_ANTIVIRUS_PK                                     */
/*==============================================================*/
create unique index PLAN_ANTIVIRUS_PK on PLAN_ANTIVIRUS (
ID_ANTIVIRUS
);

/*==============================================================*/
/* Table: SALES_FACT_TABLE                                      */
/*==============================================================*/
create table SALES_FACT_TABLE (
   ID_CUSTOMER          INT4                 not null,
   ID_ANTIVIRUS         INT4                 not null,
   ID_TIME              INT4                 not null,
   TAXES                MONEY                not null,
   TOTAL_SALES          MONEY                not null,
   TOTAL_ANTIVIRUS_SOLD INT4                 not null
);

/*==============================================================*/
/* Index: HAS_FK                                                */
/*==============================================================*/
create  index HAS_FK on SALES_FACT_TABLE (
ID_CUSTOMER
);

/*==============================================================*/
/* Index: APPEARS_IN_FK                                         */
/*==============================================================*/
create  index APPEARS_IN_FK on SALES_FACT_TABLE (
ID_ANTIVIRUS
);

/*==============================================================*/
/* Index: IN_FK                                                 */
/*==============================================================*/
create  index IN_FK on SALES_FACT_TABLE (
ID_TIME
);

/*==============================================================*/
/* Table: "TIME"                                                */
/*==============================================================*/
create table "TIME" (
   ID_TIME              INT4                 not null,
   DATE                 DATE                 not null,
   DAY                  INT4                 not null,
   MONTH                INT4                 not null,
   YEAR                 INT4                 not null,
   constraint PK_TIME primary key (ID_TIME)
);

/*==============================================================*/
/* Index: TIME_PK                                               */
/*==============================================================*/
create unique index TIME_PK on "TIME" (
ID_TIME
);

alter table SALES_FACT_TABLE
   add constraint FK_SALES_FA_APPEARS_I_PLAN_ANT foreign key (ID_ANTIVIRUS)
      references PLAN_ANTIVIRUS (ID_ANTIVIRUS)
      on delete restrict on update restrict;

alter table SALES_FACT_TABLE
   add constraint FK_SALES_FA_HAS_CUSTOMER foreign key (ID_CUSTOMER)
      references CUSTOMER (ID_CUSTOMER)
      on delete restrict on update restrict;

alter table SALES_FACT_TABLE
   add constraint FK_SALES_FA_IN_TIME foreign key (ID_TIME)
      references "TIME" (ID_TIME)
      on delete restrict on update restrict;
