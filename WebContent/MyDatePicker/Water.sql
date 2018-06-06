prompt PL/SQL Developer import file
prompt Created on 2015��3��9�� by Administrator
set feedback off
set define off
prompt Creating BE_COMMENT...
create table BE_COMMENT
(
  ID       NUMBER not null,
  ORDERNO  VARCHAR2(16),
  DATEE    DATE,
  EMPID    NUMBER,
  COMMENTT VARCHAR2(1000)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BE_COMMENT
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating BE_FLOW...
create table BE_FLOW
(
  ID       NUMBER not null,
  STEPNAME VARCHAR2(10),
  DEPTID   NUMBER,
  TYPE1    NUMBER,
  TYPE2    NUMBER,
  TYPE3    NUMBER,
  TYPE4    NUMBER,
  TYPE5    NUMBER,
  TYPE6    NUMBER,
  TYPE7    NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BE_FLOW
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating BE_FORMULA...
create table BE_FORMULA
(
  ID            NUMBER not null,
  ORDERUSERID   NUMBER,
  WATERTYPECODE VARCHAR2(3),
  ALLOTTEXT     VARCHAR2(10),
  ALLOTTYPE     NUMBER,
  ALLOTVALUE    NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BE_FORMULA
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating BE_HISTORY...
create table BE_HISTORY
(
  ID      NUMBER not null,
  ORDERNO VARCHAR2(16),
  STEPID  NUMBER,
  DATEE   DATE,
  EMPID   NUMBER,
  ISBACK  NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BE_HISTORY
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating BE_ORDER...
create table BE_ORDER
(
  ORDERNO      VARCHAR2(16) not null,
  ORDERTYPE    NUMBER,
  STEPID       NUMBER,
  CREATEEMP    NUMBER,
  CREATEDATE   DATE,
  COMPLETEEMP  NUMBER,
  COMPLETEDATE DATE,
  LASTEDITEMP  NUMBER,
  LASTEDITDATE DATE,
  USERNAME     VARCHAR2(100),
  USERTYPE     VARCHAR2(8),
  ADDRESS      VARCHAR2(100),
  LINKMAN      VARCHAR2(20),
  PHONE        VARCHAR2(20),
  USETARGET    VARCHAR2(40),
  HOUSEHEIGHT  NUMBER,
  MAXAMOUNT    NUMBER,
  METERTYPEID  NUMBER,
  METERCOUNT   NUMBER,
  USERREMARK   VARCHAR2(200),
  PAYTYPE      VARCHAR2(10),
  BANKCOMPANY  VARCHAR2(40),
  BANKNUM      VARCHAR2(20),
  OLDUSERNO    VARCHAR2(10),
  OLDUSERNAME  VARCHAR2(80),
  OLDUSERPHONE VARCHAR2(20),
  OLDUSERADDR  VARCHAR2(200),
  OLDMETER     VARCHAR2(10),
  AUDITEMPID   NUMBER,
  AUDITMESSAGE VARCHAR2(200),
  PROJECTMONEY NUMBER(18,2),
  REALMONEY    NUMBER(18,2),
  PAYDATE      DATE,
  PROJECTDATE1 DATE,
  PROJECTDATE2 DATE,
  AREAID       NUMBER,
  ABORTCAUSE   VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BE_ORDER
  add primary key (ORDERNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating BE_ORDERLITE...
create table BE_ORDERLITE
(
  ID          NUMBER not null,
  ORDERTYPE   NUMBER,
  DATEE       DATE,
  EMPID       NUMBER,
  USERNO      VARCHAR2(10),
  USERNAME    VARCHAR2(80),
  DESCRIPTION VARCHAR2(1000)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BE_ORDERLITE
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating BE_ORDERTYPE...
create table BE_ORDERTYPE
(
  ORDERID   NUMBER,
  ORDERNAME VARCHAR2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating BE_ORDERUSER...
create table BE_ORDERUSER
(
  ID           NUMBER not null,
  ORDERNO      VARCHAR2(16),
  USERNAME     VARCHAR2(80),
  PHONE        VARCHAR2(20),
  SMSPHONE     VARCHAR2(20),
  ADDRESS      VARCHAR2(200),
  PROJECTMONEY NUMBER(18,2),
  REALMONEY    NUMBER(18,2),
  INVOICENO    VARCHAR2(10),
  FORMULA      VARCHAR2(100),
  CONTRACTNUM  VARCHAR2(20),
  METERTYPEID  NUMBER,
  METERNAME    VARCHAR2(20),
  MAXVALUE     NUMBER,
  STARTVALUE   NUMBER,
  METERFACTORY VARCHAR2(100),
  DOCNUM       VARCHAR2(20),
  USERNO       VARCHAR2(10)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BE_ORDERUSER
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating IV_ARCHIVE...
create table IV_ARCHIVE
(
  ID           NUMBER not null,
  EMPID        NUMBER,
  INID         NUMBER,
  STARTNO      VARCHAR2(10),
  ENDNO        VARCHAR2(10),
  COUNTS       NUMBER,
  ARCHIVEDATE  DATE,
  ARCHIVEEMPID NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table IV_ARCHIVE
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating IV_ININVOICE...
create table IV_ININVOICE
(
  ID          NUMBER not null,
  INVOICETYPE NUMBER,
  STARTNO     VARCHAR2(10),
  ENDNO       VARCHAR2(10),
  COUNTS      NUMBER,
  INDATE      DATE,
  INEMPID     NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table IV_ININVOICE
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating IV_INVOICE...
create table IV_INVOICE
(
  INVOICENO   VARCHAR2(10) not null,
  INVOICETYPE NUMBER,
  EMPID       NUMBER,
  INID        NUMBER,
  OUTID       NUMBER,
  ARCHIVEID   NUMBER,
  USED        NUMBER,
  USEDATE     DATE,
  INVALID     NUMBER,
  INVALIDDATE DATE,
  ARCHIVED    NUMBER,
  ARCHIVEDATE DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table IV_INVOICE
  add primary key (INVOICENO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating IV_OUTINVOICE...
create table IV_OUTINVOICE
(
  ID       NUMBER not null,
  EMPID    NUMBER,
  INID     NUMBER,
  STARTNO  VARCHAR2(10),
  ENDNO    VARCHAR2(10),
  COUNTS   NUMBER,
  OUTDATE  DATE,
  OUTEMPID NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table IV_OUTINVOICE
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating PY_BALANCE...
create table PY_BALANCE
(
  ID             NUMBER not null,
  USERNO         VARCHAR2(10),
  BALANCEDATE    DATE,
  BALANCEMONEY   NUMBER(18,2),
  BILLNO         VARCHAR2(20),
  BILLREALMONEY1 NUMBER(18,2),
  BILLREALMONEY2 NUMBER(18,2),
  PAYNO          VARCHAR2(22),
  PAYUSEMONEY1   NUMBER(18,2),
  PAYUSEMONEY2   NUMBER(18,2)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table PY_BALANCE
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating PY_BALANCEDETAIL...
create table PY_BALANCEDETAIL
(
  ID               NUMBER not null,
  PARENTID         NUMBER,
  USERNO           VARCHAR2(10),
  BALANCEDATE      DATE,
  BALANCEMONEY     NUMBER(18,2),
  BILLNO           VARCHAR2(20),
  BILLDETAILID     NUMBER,
  COSTTYPECODE     VARCHAR2(3),
  DETAILREALMONEY1 NUMBER(18,2),
  DETAILREALMONEY2 NUMBER(18,2),
  PAYNO            VARCHAR2(22),
  PAYUSEMONEY1     NUMBER(18,2),
  PAYUSEMONEY2     NUMBER(18,2)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table PY_BALANCEDETAIL
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating PY_BILL...
create table PY_BILL
(
  BILLNO      VARCHAR2(20) not null,
  READID      NUMBER,
  USERNO      VARCHAR2(10),
  CREATEDATE  DATE,
  BILLMONEY   NUMBER(18,2),
  REALMONEY   NUMBER(18,2),
  BALANCE     NUMBER,
  BALANCEDATE DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table PY_BILL
  add primary key (BILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating PY_BILLDETAIL...
create table PY_BILLDETAIL
(
  ID           NUMBER not null,
  BILLNO       VARCHAR2(20),
  USERNO       VARCHAR2(10),
  COSTTYPECODE VARCHAR2(3),
  AMOUNT       NUMBER,
  PRICE        NUMBER(18,2),
  DETAILMONEY  NUMBER(18,2),
  REALMONEY    NUMBER(18,2),
  BALANCE      NUMBER,
  BALANCEDATE  DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table PY_BILLDETAIL
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating PY_PAY...
create table PY_PAY
(
  PAYNO    VARCHAR2(22) not null,
  USERNO   VARCHAR2(10),
  PAYTYPE  VARCHAR2(10),
  PAYDATE  DATE,
  INVOICE  VARCHAR2(11),
  PAYMONEY NUMBER(18,2),
  USEMONEY NUMBER(18,2),
  EMPID    NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table PY_PAY
  add primary key (PAYNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating PY_SUMREPORT...
create table PY_SUMREPORT
(
  ID          NUMBER not null,
  TYPEE       NUMBER,
  REPORTYEAR  NUMBER,
  REPORTMONTH NUMBER,
  LINENO      NUMBER,
  C1          VARCHAR2(50),
  C2          VARCHAR2(50),
  C3          VARCHAR2(50),
  C4          VARCHAR2(50),
  C5          VARCHAR2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table PY_SUMREPORT
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating PY_USERHISTORY...
create table PY_USERHISTORY
(
  ID        NUMBER not null,
  USERNO    VARCHAR2(10),
  TYPEE     NUMBER,
  ORDERNO   VARCHAR2(22),
  DATEE     DATE,
  PREVALUE  NUMBER,
  CURVALUE  NUMBER,
  AMOUNT    NUMBER,
  BILLMONEY NUMBER(18,2),
  PAYMONEY  NUMBER(18,2),
  USERMONEY NUMBER(18,2)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table PY_USERHISTORY
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating RD_CHANGEMAXVALUE...
create table RD_CHANGEMAXVALUE
(
  ID        NUMBER not null,
  DATEE     DATE,
  EMPID     NUMBER,
  USERNO    VARCHAR2(10),
  METERNO   VARCHAR2(14),
  MAXVALUE1 NUMBER,
  MAXVALUE2 NUMBER,
  REMARK    VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table RD_CHANGEMAXVALUE
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating RD_CHANGEVALUE...
create table RD_CHANGEVALUE
(
  ID        NUMBER not null,
  DATEE     DATE,
  EMPID     NUMBER,
  USERNO    VARCHAR2(10),
  PREVALUE1 NUMBER,
  PREVALUE2 NUMBER,
  REMARK    VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table RD_CHANGEVALUE
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating RD_READ...
create table RD_READ
(
  ID          NUMBER not null,
  READYEAR    NUMBER,
  READMONTH   NUMBER,
  USERNO      VARCHAR2(10),
  METERNO     VARCHAR2(14),
  MAXVALUE    NUMBER,
  VOLUMEID    NUMBER,
  VOLUMEINDEX NUMBER,
  READEMPID   NUMBER,
  READDATE    DATE,
  PREVALUE    NUMBER,
  ENTER       NUMBER,
  CURVALUE    NUMBER,
  DIAL        NUMBER,
  AMOUNT      NUMBER,
  FORMULA     VARCHAR2(100),
  AUDITT      NUMBER,
  AUDITEMPID  NUMBER,
  AUDITDATE   DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table RD_READ
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating RD_READTYPES...
create table RD_READTYPES
(
  ID            NUMBER not null,
  READID        NUMBER,
  USERNO        VARCHAR2(10),
  WATERTYPECODE VARCHAR2(3),
  ALLOTTEXT     VARCHAR2(10),
  AMOUNT        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table RD_READTYPES
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating RD_TASK...
create table RD_TASK
(
  ID        NUMBER not null,
  READYEAR  NUMBER,
  READMONTH NUMBER,
  VOLUMEID  NUMBER,
  EMPID     NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table RD_TASK
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating RD_VOLUME...
create table RD_VOLUME
(
  ID         NUMBER not null,
  VOLUMENAME VARCHAR2(50),
  AREAID     NUMBER,
  ORDERINDEX NUMBER,
  REMARK     VARCHAR2(200),
  DISABLED   NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table RD_VOLUME
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating RD_YEARMONTH...
create table RD_YEARMONTH
(
  ID        NUMBER not null,
  READYEAR  NUMBER,
  READMONTH NUMBER,
  ISCURRENT NUMBER,
  INITEMPID NUMBER,
  INITDATE  DATE,
  ENDDATE   DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table RD_YEARMONTH
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating SY_AREA...
create table SY_AREA
(
  ID       NUMBER not null,
  AREANAME VARCHAR2(50),
  REMARK   VARCHAR2(200),
  DISABLED NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SY_AREA
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating SY_COSTTYPE...
create table SY_COSTTYPE
(
  ID            NUMBER not null,
  KIND          NUMBER,
  CODE          VARCHAR2(3),
  COSTTYPENAME  VARCHAR2(20),
  FULLNAME      VARCHAR2(50),
  PRICE         NUMBER(9,2),
  SURCHARGETEXT VARCHAR2(800),
  REMARK        VARCHAR2(200),
  DISABLED      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SY_COSTTYPE
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating SY_DEPT...
create table SY_DEPT
(
  ID       NUMBER not null,
  DEPTNAME VARCHAR2(50),
  REMARK   VARCHAR2(200),
  DISABLED NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SY_DEPT
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating SY_EMP...
create table SY_EMP
(
  ID       NUMBER not null,
  EMPNAME  VARCHAR2(50),
  EMPNO    VARCHAR2(10),
  PWD      VARCHAR2(20),
  DEPTID   NUMBER,
  REMARK   VARCHAR2(200),
  DISABLED NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SY_EMP
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating SY_EMPAREAPOWER...
create table SY_EMPAREAPOWER
(
  ID     NUMBER not null,
  EMPID  NUMBER,
  AREAID NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SY_EMPAREAPOWER
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating SY_EMPMENUPOWER...
create table SY_EMPMENUPOWER
(
  ID     NUMBER not null,
  EMPID  NUMBER,
  MENUID NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SY_EMPMENUPOWER
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating SY_MENU...
create table SY_MENU
(
  ID         NUMBER not null,
  MENUNAME   VARCHAR2(50),
  PARENT     NUMBER,
  URL        VARCHAR2(200),
  ONCLICK    VARCHAR2(200),
  ICON       VARCHAR2(30),
  ORDERINDEX NUMBER,
  FLOWID     NUMBER,
  DISABLED   NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SY_MENU
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating SY_METERTYPE...
create table SY_METERTYPE
(
  ID            NUMBER not null,
  METERTYPENAME VARCHAR2(20),
  APERTURE      NUMBER,
  MAVVALUE      NUMBER,
  MINVALUE      NUMBER,
  LIFE          NUMBER,
  REMARK        VARCHAR2(200),
  DISABLED      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SY_METERTYPE
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating SY_SURCHARGE...
create table SY_SURCHARGE
(
  ID          NUMBER not null,
  SURCHARGEID NUMBER,
  WATERTYPEID NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SY_SURCHARGE
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating US_FORMULA...
create table US_FORMULA
(
  ID            NUMBER not null,
  USERNO        VARCHAR2(10),
  WATERTYPECODE VARCHAR2(3),
  ALLOTTEXT     VARCHAR2(10),
  ALLOTTYPE     NUMBER,
  ALLOTVALUE    NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table US_FORMULA
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating US_METER...
create table US_METER
(
  METERNO     VARCHAR2(14) not null,
  USERNO      VARCHAR2(10),
  METERNAME   VARCHAR2(20),
  METERTYPEID NUMBER,
  MAXVALUE    NUMBER,
  STARTVALUE  NUMBER,
  SETUPDATE   DATE,
  FACTORY     VARCHAR2(100),
  DISABLED    NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table US_METER
  add primary key (METERNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating US_SMS...
create table US_SMS
(
  ID       NUMBER not null,
  SENDTIME DATE,
  EMPID    NUMBER,
  MESSAGE  VARCHAR2(1000),
  TYPEE    NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table US_SMS
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Creating US_USER...
create table US_USER
(
  USERNO           VARCHAR2(10) not null,
  USERNAME         VARCHAR2(80),
  ABC              VARCHAR2(80),
  CREATEDATE       DATE,
  ADDRESS          VARCHAR2(200),
  PHONE            VARCHAR2(20),
  SMSPHONE         VARCHAR2(20),
  AREAID           NUMBER,
  USERTYPE         VARCHAR2(10),
  PAYTYPE          VARCHAR2(10),
  BANKNAME         VARCHAR2(100),
  BANKNUM          VARCHAR2(20),
  FORMULA          VARCHAR2(100),
  USERMONEY        NUMBER(18,2),
  METERID          NUMBER,
  DOCNUM           VARCHAR2(20),
  PWD              VARCHAR2(20),
  CONTRACTNUM      VARCHAR2(20),
  CONTRACTDATE     DATE,
  VOLUMEID         NUMBER,
  VOLUMEORDERINDEX NUMBER,
  DISABLED         NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table US_USER
  add primary key (USERNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt Disabling triggers for BE_COMMENT...
alter table BE_COMMENT disable all triggers;
prompt Disabling triggers for BE_FLOW...
alter table BE_FLOW disable all triggers;
prompt Disabling triggers for BE_FORMULA...
alter table BE_FORMULA disable all triggers;
prompt Disabling triggers for BE_HISTORY...
alter table BE_HISTORY disable all triggers;
prompt Disabling triggers for BE_ORDER...
alter table BE_ORDER disable all triggers;
prompt Disabling triggers for BE_ORDERLITE...
alter table BE_ORDERLITE disable all triggers;
prompt Disabling triggers for BE_ORDERTYPE...
alter table BE_ORDERTYPE disable all triggers;
prompt Disabling triggers for BE_ORDERUSER...
alter table BE_ORDERUSER disable all triggers;
prompt Disabling triggers for IV_ARCHIVE...
alter table IV_ARCHIVE disable all triggers;
prompt Disabling triggers for IV_ININVOICE...
alter table IV_ININVOICE disable all triggers;
prompt Disabling triggers for IV_INVOICE...
alter table IV_INVOICE disable all triggers;
prompt Disabling triggers for IV_OUTINVOICE...
alter table IV_OUTINVOICE disable all triggers;
prompt Disabling triggers for PY_BALANCE...
alter table PY_BALANCE disable all triggers;
prompt Disabling triggers for PY_BALANCEDETAIL...
alter table PY_BALANCEDETAIL disable all triggers;
prompt Disabling triggers for PY_BILL...
alter table PY_BILL disable all triggers;
prompt Disabling triggers for PY_BILLDETAIL...
alter table PY_BILLDETAIL disable all triggers;
prompt Disabling triggers for PY_PAY...
alter table PY_PAY disable all triggers;
prompt Disabling triggers for PY_SUMREPORT...
alter table PY_SUMREPORT disable all triggers;
prompt Disabling triggers for PY_USERHISTORY...
alter table PY_USERHISTORY disable all triggers;
prompt Disabling triggers for RD_CHANGEMAXVALUE...
alter table RD_CHANGEMAXVALUE disable all triggers;
prompt Disabling triggers for RD_CHANGEVALUE...
alter table RD_CHANGEVALUE disable all triggers;
prompt Disabling triggers for RD_READ...
alter table RD_READ disable all triggers;
prompt Disabling triggers for RD_READTYPES...
alter table RD_READTYPES disable all triggers;
prompt Disabling triggers for RD_TASK...
alter table RD_TASK disable all triggers;
prompt Disabling triggers for RD_VOLUME...
alter table RD_VOLUME disable all triggers;
prompt Disabling triggers for RD_YEARMONTH...
alter table RD_YEARMONTH disable all triggers;
prompt Disabling triggers for SY_AREA...
alter table SY_AREA disable all triggers;
prompt Disabling triggers for SY_COSTTYPE...
alter table SY_COSTTYPE disable all triggers;
prompt Disabling triggers for SY_DEPT...
alter table SY_DEPT disable all triggers;
prompt Disabling triggers for SY_EMP...
alter table SY_EMP disable all triggers;
prompt Disabling triggers for SY_EMPAREAPOWER...
alter table SY_EMPAREAPOWER disable all triggers;
prompt Disabling triggers for SY_EMPMENUPOWER...
alter table SY_EMPMENUPOWER disable all triggers;
prompt Disabling triggers for SY_MENU...
alter table SY_MENU disable all triggers;
prompt Disabling triggers for SY_METERTYPE...
alter table SY_METERTYPE disable all triggers;
prompt Disabling triggers for SY_SURCHARGE...
alter table SY_SURCHARGE disable all triggers;
prompt Disabling triggers for US_FORMULA...
alter table US_FORMULA disable all triggers;
prompt Disabling triggers for US_METER...
alter table US_METER disable all triggers;
prompt Disabling triggers for US_SMS...
alter table US_SMS disable all triggers;
prompt Disabling triggers for US_USER...
alter table US_USER disable all triggers;
prompt Truncating US_USER...
truncate table US_USER;
prompt Truncating US_SMS...
truncate table US_SMS;
prompt Truncating US_METER...
truncate table US_METER;
prompt Truncating US_FORMULA...
truncate table US_FORMULA;
prompt Truncating SY_SURCHARGE...
truncate table SY_SURCHARGE;
prompt Truncating SY_METERTYPE...
truncate table SY_METERTYPE;
prompt Truncating SY_MENU...
truncate table SY_MENU;
prompt Truncating SY_EMPMENUPOWER...
truncate table SY_EMPMENUPOWER;
prompt Truncating SY_EMPAREAPOWER...
truncate table SY_EMPAREAPOWER;
prompt Truncating SY_EMP...
truncate table SY_EMP;
prompt Truncating SY_DEPT...
truncate table SY_DEPT;
prompt Truncating SY_COSTTYPE...
truncate table SY_COSTTYPE;
prompt Truncating SY_AREA...
truncate table SY_AREA;
prompt Truncating RD_YEARMONTH...
truncate table RD_YEARMONTH;
prompt Truncating RD_VOLUME...
truncate table RD_VOLUME;
prompt Truncating RD_TASK...
truncate table RD_TASK;
prompt Truncating RD_READTYPES...
truncate table RD_READTYPES;
prompt Truncating RD_READ...
truncate table RD_READ;
prompt Truncating RD_CHANGEVALUE...
truncate table RD_CHANGEVALUE;
prompt Truncating RD_CHANGEMAXVALUE...
truncate table RD_CHANGEMAXVALUE;
prompt Truncating PY_USERHISTORY...
truncate table PY_USERHISTORY;
prompt Truncating PY_SUMREPORT...
truncate table PY_SUMREPORT;
prompt Truncating PY_PAY...
truncate table PY_PAY;
prompt Truncating PY_BILLDETAIL...
truncate table PY_BILLDETAIL;
prompt Truncating PY_BILL...
truncate table PY_BILL;
prompt Truncating PY_BALANCEDETAIL...
truncate table PY_BALANCEDETAIL;
prompt Truncating PY_BALANCE...
truncate table PY_BALANCE;
prompt Truncating IV_OUTINVOICE...
truncate table IV_OUTINVOICE;
prompt Truncating IV_INVOICE...
truncate table IV_INVOICE;
prompt Truncating IV_ININVOICE...
truncate table IV_ININVOICE;
prompt Truncating IV_ARCHIVE...
truncate table IV_ARCHIVE;
prompt Truncating BE_ORDERUSER...
truncate table BE_ORDERUSER;
prompt Truncating BE_ORDERTYPE...
truncate table BE_ORDERTYPE;
prompt Truncating BE_ORDERLITE...
truncate table BE_ORDERLITE;
prompt Truncating BE_ORDER...
truncate table BE_ORDER;
prompt Truncating BE_HISTORY...
truncate table BE_HISTORY;
prompt Truncating BE_FORMULA...
truncate table BE_FORMULA;
prompt Truncating BE_FLOW...
truncate table BE_FLOW;
prompt Truncating BE_COMMENT...
truncate table BE_COMMENT;
prompt Loading BE_COMMENT...
insert into BE_COMMENT (ID, ORDERNO, DATEE, EMPID, COMMENTT)
values (21, 'B1-20140105-0004', to_date('06-02-2015 15:10:35', 'dd-mm-yyyy hh24:mi:ss'), 1, '�緹��');
insert into BE_COMMENT (ID, ORDERNO, DATEE, EMPID, COMMENTT)
values (23, 'B1-20140105-0002', to_date('06-02-2015 15:14:54', 'dd-mm-yyyy hh24:mi:ss'), 1, '������');
insert into BE_COMMENT (ID, ORDERNO, DATEE, EMPID, COMMENTT)
values (24, 'B1-20140105-0002', to_date('06-02-2015 15:19:31', 'dd-mm-yyyy hh24:mi:ss'), 1, '�շ��ǹٷ���');
insert into BE_COMMENT (ID, ORDERNO, DATEE, EMPID, COMMENTT)
values (1, 'B1-20140105-0001', to_date('06-02-2015 15:02:12', 'dd-mm-yyyy hh24:mi:ss'), 1, '��ٸ�');
insert into BE_COMMENT (ID, ORDERNO, DATEE, EMPID, COMMENTT)
values (42, 'B1-20150228-0001', to_date('28-02-2015 15:11:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 'dddddd');
insert into BE_COMMENT (ID, ORDERNO, DATEE, EMPID, COMMENTT)
values (2, '1', to_date('23-03-2015 11:30:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 'ee����');
insert into BE_COMMENT (ID, ORDERNO, DATEE, EMPID, COMMENTT)
values (3, '1', to_date('23-03-2015 11:20:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 'dd');
insert into BE_COMMENT (ID, ORDERNO, DATEE, EMPID, COMMENTT)
values (4, '1', to_date('23-03-2015 11:20:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 'dd');
insert into BE_COMMENT (ID, ORDERNO, DATEE, EMPID, COMMENTT)
values (5, '1', to_date('23-03-2015 11:22:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 'dd');
commit;
prompt 9 records loaded
prompt Loading BE_FLOW...
insert into BE_FLOW (ID, STEPNAME, DEPTID, TYPE1, TYPE2, TYPE3, TYPE4, TYPE5, TYPE6, TYPE7)
values (-1, '��ֹ', null, null, null, null, null, null, null, null);
insert into BE_FLOW (ID, STEPNAME, DEPTID, TYPE1, TYPE2, TYPE3, TYPE4, TYPE5, TYPE6, TYPE7)
values (0, '���', null, null, null, null, null, null, null, null);
insert into BE_FLOW (ID, STEPNAME, DEPTID, TYPE1, TYPE2, TYPE3, TYPE4, TYPE5, TYPE6, TYPE7)
values (1, '�û�����', 3, 1, 1, 1, 1, 1, 1, 1);
insert into BE_FLOW (ID, STEPNAME, DEPTID, TYPE1, TYPE2, TYPE3, TYPE4, TYPE5, TYPE6, TYPE7)
values (2, '�������', 3, 2, 2, 2, 2, 2, 2, 2);
insert into BE_FLOW (ID, STEPNAME, DEPTID, TYPE1, TYPE2, TYPE3, TYPE4, TYPE5, TYPE6, TYPE7)
values (3, '��ʩ����', 3, 3, 3, null, null, 3, null, null);
insert into BE_FLOW (ID, STEPNAME, DEPTID, TYPE1, TYPE2, TYPE3, TYPE4, TYPE5, TYPE6, TYPE7)
values (4, 'ˮ������', 4, null, 4, null, null, null, null, 3);
insert into BE_FLOW (ID, STEPNAME, DEPTID, TYPE1, TYPE2, TYPE3, TYPE4, TYPE5, TYPE6, TYPE7)
values (5, '��ˮЭ��', 4, 4, 5, null, null, null, 3, null);
insert into BE_FLOW (ID, STEPNAME, DEPTID, TYPE1, TYPE2, TYPE3, TYPE4, TYPE5, TYPE6, TYPE7)
values (6, 'ʩ������', 1, 5, 6, null, null, 4, null, null);
insert into BE_FLOW (ID, STEPNAME, DEPTID, TYPE1, TYPE2, TYPE3, TYPE4, TYPE5, TYPE6, TYPE7)
values (7, 'ͨˮͣˮ', 1, 6, 7, null, null, 5, null, 4);
insert into BE_FLOW (ID, STEPNAME, DEPTID, TYPE1, TYPE2, TYPE3, TYPE4, TYPE5, TYPE6, TYPE7)
values (8, '�����浵', 1, 7, 8, 3, 3, 6, 4, 5);
commit;
prompt 10 records loaded
prompt Loading BE_FORMULA...
insert into BE_FORMULA (ID, ORDERUSERID, WATERTYPECODE, ALLOTTEXT, ALLOTTYPE, ALLOTVALUE)
values (41, 3, 'GY', '��ҵ��ˮ', 1, 20);
insert into BE_FORMULA (ID, ORDERUSERID, WATERTYPECODE, ALLOTTEXT, ALLOTTYPE, ALLOTVALUE)
values (42, 3, 'XZ', '������ˮ', 2, 0);
insert into BE_FORMULA (ID, ORDERUSERID, WATERTYPECODE, ALLOTTEXT, ALLOTTYPE, ALLOTVALUE)
values (43, 3, 'SY', '��ҵ��ˮ', 1, 20);
insert into BE_FORMULA (ID, ORDERUSERID, WATERTYPECODE, ALLOTTEXT, ALLOTTYPE, ALLOTVALUE)
values (44, 4, 'GY', '��ҵ��ˮ', 1, 20);
insert into BE_FORMULA (ID, ORDERUSERID, WATERTYPECODE, ALLOTTEXT, ALLOTTYPE, ALLOTVALUE)
values (45, 4, 'XZ', '������ˮ', 2, 0);
insert into BE_FORMULA (ID, ORDERUSERID, WATERTYPECODE, ALLOTTEXT, ALLOTTYPE, ALLOTVALUE)
values (46, 4, 'SY', '��ҵ��ˮ', 1, 20);
insert into BE_FORMULA (ID, ORDERUSERID, WATERTYPECODE, ALLOTTEXT, ALLOTTYPE, ALLOTVALUE)
values (47, 5, 'GY', '��ҵ��ˮ', 1, 20);
insert into BE_FORMULA (ID, ORDERUSERID, WATERTYPECODE, ALLOTTEXT, ALLOTTYPE, ALLOTVALUE)
values (48, 5, 'XZ', '������ˮ', 2, 0);
insert into BE_FORMULA (ID, ORDERUSERID, WATERTYPECODE, ALLOTTEXT, ALLOTTYPE, ALLOTVALUE)
values (49, 5, 'SY', '��ҵ��ˮ', 1, 20);
insert into BE_FORMULA (ID, ORDERUSERID, WATERTYPECODE, ALLOTTEXT, ALLOTTYPE, ALLOTVALUE)
values (50, 6, 'GY', '��ҵ��ˮ', 1, 20);
insert into BE_FORMULA (ID, ORDERUSERID, WATERTYPECODE, ALLOTTEXT, ALLOTTYPE, ALLOTVALUE)
values (51, 6, 'XZ', '������ˮ', 2, 0);
insert into BE_FORMULA (ID, ORDERUSERID, WATERTYPECODE, ALLOTTEXT, ALLOTTYPE, ALLOTVALUE)
values (52, 6, 'SY', '��ҵ��ˮ', 1, 20);
insert into BE_FORMULA (ID, ORDERUSERID, WATERTYPECODE, ALLOTTEXT, ALLOTTYPE, ALLOTVALUE)
values (19, 1, 'SY', '��ҵ��ˮ', 1, 20);
insert into BE_FORMULA (ID, ORDERUSERID, WATERTYPECODE, ALLOTTEXT, ALLOTTYPE, ALLOTVALUE)
values (20, 1, 'JQ', '������ˮ', 2, 0);
insert into BE_FORMULA (ID, ORDERUSERID, WATERTYPECODE, ALLOTTEXT, ALLOTTYPE, ALLOTVALUE)
values (21, 1, 'XZ', '������ˮ', 1, 30);
insert into BE_FORMULA (ID, ORDERUSERID, WATERTYPECODE, ALLOTTEXT, ALLOTTYPE, ALLOTVALUE)
values (22, 2, 'SY', '��ҵ��ˮ', 1, 20);
insert into BE_FORMULA (ID, ORDERUSERID, WATERTYPECODE, ALLOTTEXT, ALLOTTYPE, ALLOTVALUE)
values (23, 2, 'JQ', '������ˮ', 2, 0);
insert into BE_FORMULA (ID, ORDERUSERID, WATERTYPECODE, ALLOTTEXT, ALLOTTYPE, ALLOTVALUE)
values (24, 2, 'XZ', '������ˮ', 1, 30);
insert into BE_FORMULA (ID, ORDERUSERID, WATERTYPECODE, ALLOTTEXT, ALLOTTYPE, ALLOTVALUE)
values (54, 89, 'SY', '��ҵ��ˮ', 1, 20);
insert into BE_FORMULA (ID, ORDERUSERID, WATERTYPECODE, ALLOTTEXT, ALLOTTYPE, ALLOTVALUE)
values (55, 89, 'SH', '������ˮ', 1, 80);
insert into BE_FORMULA (ID, ORDERUSERID, WATERTYPECODE, ALLOTTEXT, ALLOTTYPE, ALLOTVALUE)
values (63, 109, 'XZ', '������ˮ', 1, 20);
insert into BE_FORMULA (ID, ORDERUSERID, WATERTYPECODE, ALLOTTEXT, ALLOTTYPE, ALLOTVALUE)
values (64, 108, 'XZ', '������ˮ', 1, 20);
commit;
prompt 22 records loaded
prompt Loading BE_HISTORY...
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (202, 'B1-20140105-0003', 2, to_date('28-02-2015 15:31:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 1);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (163, 'B1-20140105-0002', 2, to_date('06-02-2015 15:14:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (169, 'B1-20140105-0002', 7, to_date('06-02-2015 15:40:52', 'dd-mm-yyyy hh24:mi:ss'), 1, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (160, 'B1-20140105-0001', 3, to_date('03-02-2015 15:24:56', 'dd-mm-yyyy hh24:mi:ss'), 1, 1);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (161, 'B1-20140105-0001', 2, to_date('06-02-2015 15:04:08', 'dd-mm-yyyy hh24:mi:ss'), 1, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (164, 'B1-20140105-0001', 5, to_date('06-02-2015 15:35:06', 'dd-mm-yyyy hh24:mi:ss'), 1, 1);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (167, 'B1-20140105-0002', 5, to_date('06-02-2015 15:40:14', 'dd-mm-yyyy hh24:mi:ss'), 1, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (168, 'B1-20140105-0002', 6, to_date('06-02-2015 15:40:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (170, 'B1-20140105-0002', -1, to_date('06-02-2015 15:56:59', 'dd-mm-yyyy hh24:mi:ss'), 1, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (165, 'B1-20140105-0002', 3, to_date('06-02-2015 15:35:31', 'dd-mm-yyyy hh24:mi:ss'), 1, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (159, 'B1-20140105-0001', 2, to_date('03-02-2015 15:24:49', 'dd-mm-yyyy hh24:mi:ss'), 1, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (162, 'B1-20140105-0001', 3, to_date('06-02-2015 15:04:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (166, 'B1-20140105-0002', 4, to_date('06-02-2015 15:39:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (182, 'B1-20140105-0004', 2, to_date('28-02-2015 14:43:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (222, 'B1-20140105-0003', 2, to_date('28-02-2015 15:37:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (203, 'B1-20140105-0003', 2, to_date('28-02-2015 15:35:39', 'dd-mm-yyyy hh24:mi:ss'), 1, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (221, 'B1-20150228-0003', 2, to_date('28-02-2015 15:37:29', 'dd-mm-yyyy hh24:mi:ss'), 1, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (223, 'B1-20140105-0003', 2, to_date('28-02-2015 15:42:34', 'dd-mm-yyyy hh24:mi:ss'), 1, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (181, 'B1-20150228-0002', 1, to_date('28-02-2015 14:30:47', 'dd-mm-yyyy hh24:mi:ss'), 1, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (201, 'B1-20150228-0002', 1, to_date('28-02-2015 15:21:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (2, 'B1-20150302-0001', 2, to_date('02-03-2015 09:28:43', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (3, 'B1-20150302-0002', 2, to_date('02-03-2015 09:40:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (61, 'B1-20150304-0009', 2, to_date('04-03-2015 13:52:57', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (62, 'B1-20150304-0009', 2, to_date('04-03-2015 13:54:28', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (63, 'B1-20150304-0009', 2, to_date('04-03-2015 13:54:32', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (64, 'B1-20150304-0009', 3, to_date('04-03-2015 13:56:46', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (101, 'B1-20150305-0002', -1, to_date('05-03-2015 11:13:07', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (21, 'B1-20150303-0001', 2, to_date('03-03-2015 12:25:54', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (41, 'B1-20150303-0001', 2, to_date('04-03-2015 12:35:03', 'dd-mm-yyyy hh24:mi:ss'), 0, 1);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (42, 'B1-20150303-0001', 2, to_date('04-03-2015 12:35:30', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (1, 'B1-20150131-0001', 2, to_date('02-03-2015 09:14:30', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (43, 'B1-20150303-0001', 2, to_date('04-03-2015 12:40:51', 'dd-mm-yyyy hh24:mi:ss'), 0, 1);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (44, 'B1-20150303-0001', 2, to_date('04-03-2015 12:41:00', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (52, 'B1-20150304-0002', 2, to_date('04-03-2015 12:51:41', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (53, 'B1-20150304-0003', 2, to_date('04-03-2015 12:53:04', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (54, 'B1-20150304-0004', 2, to_date('04-03-2015 12:53:31', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (55, 'B1-20150304-0005', 2, to_date('04-03-2015 12:54:02', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (56, 'B1-20150304-0006', 2, to_date('04-03-2015 12:54:34', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (57, 'B1-20150304-0007', 2, to_date('04-03-2015 12:55:16', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (58, 'B1-20150304-0008', 2, to_date('04-03-2015 12:55:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (59, 'B1-20150304-0001', 5, to_date('04-03-2015 12:59:46', 'dd-mm-yyyy hh24:mi:ss'), 0, 1);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (60, 'B1-20150304-0001', 3, to_date('04-03-2015 12:59:53', 'dd-mm-yyyy hh24:mi:ss'), 0, 1);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (45, 'B1-20150304-0001', 2, to_date('04-03-2015 12:45:18', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (46, 'B1-20150304-0001', 2, to_date('04-03-2015 12:45:29', 'dd-mm-yyyy hh24:mi:ss'), 0, 1);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (47, 'B1-20150304-0001', 2, to_date('04-03-2015 12:46:24', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (48, 'B1-20150304-0001', 2, to_date('04-03-2015 12:46:36', 'dd-mm-yyyy hh24:mi:ss'), 0, 1);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (49, 'B1-20150304-0001', 2, to_date('04-03-2015 12:47:03', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (50, 'B1-20150304-0001', 2, to_date('04-03-2015 12:47:50', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (51, 'B1-20150304-0001', 3, to_date('04-03-2015 12:50:02', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (65, 'B1-20150304-0009', 5, to_date('04-03-2015 13:57:36', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (66, 'B1-20150304-0009', 5, to_date('04-03-2015 13:57:49', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (67, 'B1-20150304-0009', 5, to_date('04-03-2015 13:58:51', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (68, 'B1-20150304-0009', 5, to_date('04-03-2015 14:00:29', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (81, 'B1-20150305-0001', 2, to_date('05-03-2015 10:23:25', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (82, 'B1-20150305-0002', 2, to_date('05-03-2015 10:24:23', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (83, 'B1-20150305-0003', 2, to_date('05-03-2015 10:24:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (84, 'B1-20150305-0004', 2, to_date('05-03-2015 10:26:03', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (85, 'B1-20150304-0008', 2, to_date('05-03-2015 10:26:30', 'dd-mm-yyyy hh24:mi:ss'), 0, 1);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (86, 'B1-20150305-0005', 2, to_date('05-03-2015 10:32:52', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (87, 'B1-20150305-0006', 2, to_date('05-03-2015 10:34:35', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (88, 'B1-20150305-0007', 2, to_date('05-03-2015 10:35:35', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (89, 'B1-20150305-0008', 2, to_date('05-03-2015 10:37:53', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (90, 'B1-20150305-0009', 2, to_date('05-03-2015 10:39:06', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (91, 'B1-20150305-0010', 2, to_date('05-03-2015 10:43:13', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (92, 'B1-20150305-0011', 2, to_date('05-03-2015 10:45:03', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (93, 'B1-20150131-0002', 2, to_date('05-03-2015 10:47:05', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (94, 'B1-20150228-0003', 2, to_date('05-03-2015 10:50:32', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (95, 'B1-20150305-0012', 2, to_date('05-03-2015 10:51:58', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (96, 'B1-20150305-0012', 2, to_date('05-03-2015 10:52:17', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (97, 'B1-20150305-0012', 3, to_date('05-03-2015 10:53:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (98, 'B1-20150131-0004', 4, to_date('05-03-2015 10:54:58', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (99, 'B1-20150305-0012', 5, to_date('05-03-2015 10:56:56', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into BE_HISTORY (ID, ORDERNO, STEPID, DATEE, EMPID, ISBACK)
values (100, 'B1-20150305-0012', 7, to_date('05-03-2015 11:04:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
commit;
prompt 73 records loaded
prompt Loading BE_ORDER...
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150131-0002', 1, 2, 1, to_date('31-01-2015 10:41:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('05-03-2015 10:47:05', 'dd-mm-yyyy hh24:mi:ss'), 'aa', '˽��', '��ɳ�е����԰', 'aa', '123456', 'ss', 12, 12, 3, 1, '��֪��', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150131-0001', 1, 2, 1, to_date('31-01-2015 10:35:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('02-03-2015 09:14:30', 'dd-mm-yyyy hh24:mi:ss'), '����', '˽��', '��ɳ�е����԰', '����', '123456', '������ˮ', 12, 50, 2, 2, '��֪��1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150131-0003', 2, 4, null, null, null, null, null, null, '�ɷɷ�', null, '��ɳ����´��', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150131-0004', 2, 5, null, null, null, null, 0, to_date('05-03-2015 10:54:58', 'dd-mm-yyyy hh24:mi:ss'), '����', null, '��ɳ������', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150131-0005', 5, 6, null, null, null, null, null, null, '������', null, '����', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150131-0006', 5, 6, null, null, null, null, null, null, '������', null, '����', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150131-0007', 5, 6, null, null, null, null, null, null, '���Ķ�', null, '����', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150131-0008', 7, 4, null, null, null, null, null, null, '��5��', null, '��������', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150131-0009', 7, 4, null, null, null, null, null, null, '��6��', null, '��������1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150131-0010', 7, 4, null, null, null, null, null, null, '��7��', null, '��������2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150131-0011', 7, 4, null, null, null, null, null, null, '��8��', null, '��������3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150131-0012', 3, 8, null, null, null, null, null, null, '����', null, '������ͬ3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150131-0013', 3, 8, null, null, null, null, null, null, '����', null, '������ͬ', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150131-0014', 3, 8, null, null, null, null, null, null, '�Ŷ�', null, '����ͬ', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150131-0015', 4, 2, null, null, null, null, null, null, 'ɵ��', null, '����', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150131-0016', 4, 2, null, null, null, null, null, null, '��', null, '������������', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150131-0018', 6, 5, null, null, null, null, null, null, '����', null, '����', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150131-0019', 6, 5, null, null, null, null, null, null, '����', null, '��ɽ', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150131-0017', 6, 5, null, null, null, null, null, null, '���Է�', null, '��ɽ', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20140105-0004', 1, 3, 1, to_date('05-01-2014', 'dd-mm-yyyy'), null, null, 1, to_date('28-02-2015 14:43:35', 'dd-mm-yyyy hh24:mi:ss'), 'ssfd', '����', 'rgdrer', '��ٸ�', '6546456', '�����󷶸ʵ�', 3, 32, 2, 2, '�ŵĵط�', '����', null, null, null, null, null, null, null, 1, 'dgfdgfdh', 4444, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150228-0002', 1, 1, 1, to_date('28-02-2015 14:30:47', 'dd-mm-yyyy hh24:mi:ss'), null, null, 1, to_date('28-02-2015 15:21:13', 'dd-mm-yyyy hh24:mi:ss'), 'er', '˽��', 'fgh', 're', '45678', 'jj', 4, 33, 2, 1, 'hhh', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20140105-0001', 1, 3, 1, to_date('05-01-2014', 'dd-mm-yyyy'), 1, to_date('03-02-2015 15:05:39', 'dd-mm-yyyy hh24:mi:ss'), 1, to_date('06-02-2015 15:04:13', 'dd-mm-yyyy hh24:mi:ss'), 'admin', '˽��', 'rtgertreee', '����', '55566255522', '������Ҳ̫����ӵ��̫������', 2, 33, 1, 1, '��̨��Ա��Ͷ��������', '����', null, null, null, null, null, null, null, 1, '�����ָ�', 3768, 3785, to_date('06-02-2015 15:04:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-10-2014', 'dd-mm-yyyy'), to_date('01-01-2015', 'dd-mm-yyyy'), 2, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20140105-0003', 3, 2, 2, to_date('05-01-2014', 'dd-mm-yyyy'), null, null, 1, to_date('28-02-2015 15:42:34', 'dd-mm-yyyy hh24:mi:ss'), '������', '˽��', '����ͬ��', 'ͻ��', '46464474', '�շ��Ϸ���', 3, 44, 1, 1, '�ǹٷ���', '����', null, null, null, null, null, null, null, 1, '����', 333, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150228-0003', 1, 3, 1, to_date('28-02-2015 15:37:29', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('05-03-2015 10:50:32', 'dd-mm-yyyy hh24:mi:ss'), 'ddd', '����', 'gg', 'ee', '45678', 'hh', 2, 30, 2, 1, 'gg', null, null, null, null, null, null, null, null, 0, '�ķ��ķ��', null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B105114817', 3, 1, 1, to_date('05-03-2015 11:17:48', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '1', null, '1', null, '1', null, null, null, null, null, null, null, null, null, '2105111017', 'aa', '13012345678', '�¿���������IT���Ļ�������ܲ��칫¥2219��', null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150302-0002', 3, 2, 0, to_date('02-03-2015 09:40:39', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('02-03-2015 09:40:39', 'dd-mm-yyyy hh24:mi:ss'), '��֪��', '˽��', '��ɳ�е����Դ', '�Ǻ�', '3434324323', '������', 3, 30, 13, null, '�����ɷ�', null, null, null, '0100043900', '�ǹٷ�����', '3454', 'DN250', '�����', null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B102011942', 3, 1, 1, to_date('02-03-2015 13:42:19', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '4', null, '4', null, '4', null, null, null, null, null, null, null, null, null, '2102010840', '��Ϣ', '13012345678', '�¿���������IT���Ļ�������ܲ��칫¥2219��', null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150304-0009', 1, 6, 0, to_date('04-03-2015 13:52:57', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('04-03-2015 14:00:29', 'dd-mm-yyyy hh24:mi:ss'), '�ǺǺ�', '˽��', '�����ɷ�', '����', '435345345', '�ǹ��͹�', 5, 34, 15, 1, '�ķ��Է���', null, null, null, null, null, null, null, null, 0, '����sb' || chr(13) || '' || chr(10) || '', 300, 400, to_date('04-03-2015 13:56:46', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150303-0001', 1, 2, 0, to_date('03-03-2015 12:25:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('04-03-2015 12:41:00', 'dd-mm-yyyy hh24:mi:ss'), 'С��', '˽��', '��ɳ�е����԰', '�¸�', '987654', '������ˮ', 3, 30, 4, 1, '�ٺ�', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('20150301', 3, 1, 1, to_date('01-03-2015 09:34:46', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '��', null, '��', null, '2', null, null, null, null, null, null, null, null, null, '10K6666666', 'zz', '13107411296', '����', null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('01033015', 3, 1, 1, to_date('01-03-2015 15:15:30', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '1', null, '1', null, '1', null, null, null, null, null, null, null, null, null, '10K6666666', 'zz', '13107411296', '����', null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B101040331', 3, 1, 1, to_date('01-03-2015 16:31:03', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '1', null, '1', null, '1', null, null, null, null, null, null, null, null, null, '0100000987', '����', '88888888', '������', null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B102090445', 3, 1, 1, to_date('02-03-2015 09:45:04', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '2', null, '2', null, '2', null, null, null, null, null, null, null, null, null, '102094039', 'ww', '13012345678', '�¿���������IT���Ļ�������ܲ��칫¥2219��', null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B102091146', 3, 1, 1, to_date('02-03-2015 09:46:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '4', null, '4', null, '4', null, null, null, null, null, null, null, null, null, '102095745', 'dd', '13012345678', '�¿���������IT���Ļ�������ܲ��칫¥2219��', null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('01034231', 3, 1, 1, to_date('01-03-2015 15:31:42', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '1', null, '1', null, '1', null, null, null, null, null, null, null, null, null, '10K6666666', 'zz', '13107411296', '����', null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150304-0002', 2, 2, 0, to_date('04-03-2015 12:51:41', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('04-03-2015 12:51:41', 'dd-mm-yyyy hh24:mi:ss'), null, '-1', null, null, null, null, null, null, -1, 1, null, null, null, null, '0100043900', '�ǹٷ�����', '3454', 'DN250', '�����', null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150304-0003', 2, 2, 0, to_date('04-03-2015 12:53:04', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('04-03-2015 12:53:04', 'dd-mm-yyyy hh24:mi:ss'), 'dfds', '˽��', 'dfdf', 'dfd', '454545', 'hhjhj', 5, 34, 4, 1, 'fgfgfg', null, null, null, '0100043900', '�ǹٷ�����', '3454', 'DN250', '�����', null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150304-0004', 3, 2, 0, to_date('04-03-2015 12:53:31', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('04-03-2015 12:53:31', 'dd-mm-yyyy hh24:mi:ss'), 'ghghgh', '˽��', 'ghhgh', 'gghgh', '45454545', 'bbnbn', 6, 45, 14, null, 'ghghgh', null, null, null, '0100043900', '�ǹٷ�����', '3454', 'DN250', '�����', null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150304-0005', 4, 2, 0, to_date('04-03-2015 12:54:02', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('04-03-2015 12:54:02', 'dd-mm-yyyy hh24:mi:ss'), 'ghg', null, null, null, null, null, null, null, null, null, '�������', '���д���', '�й�ũҵ����', '3434534534', '0100043900', '�ǹٷ�����', '3454', 'DN250', '�����', null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150304-0006', 5, 2, 0, to_date('04-03-2015 12:54:34', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('04-03-2015 12:54:34', 'dd-mm-yyyy hh24:mi:ss'), '����Ϸ�', '����', '�ǹ��͹�', '�ǵ��ǵ�', '4324234', '���͹�', 56, 34, 16, null, '�ϵ�', null, null, null, '0100043900', '�ǹٷ�����', '3454', 'DN250', '�����', null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150304-0007', 6, 2, 0, to_date('04-03-2015 12:55:16', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('04-03-2015 12:55:16', 'dd-mm-yyyy hh24:mi:ss'), '��񲻹�', '˽��', '�ǹ��͹�', '�󺽹ɷ�', '45654656', '���͹�', 34, 34, 4, null, '�滮�ƻ�', null, null, null, '0100043900', '�ǹٷ�����', '3454', 'DN250', '�����', null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150304-0008', 7, 1, 0, to_date('04-03-2015 12:55:39', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('04-03-2015 12:55:39', 'dd-mm-yyyy hh24:mi:ss'), '�ǹٷ�����', null, null, null, null, null, null, null, null, null, '������', null, null, null, '0100043900', '�ǹٷ�����', '3454', 'DN250', '�����', null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150304-0001', 1, 2, 0, to_date('04-03-2015 12:45:18', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('04-03-2015 12:50:02', 'dd-mm-yyyy hh24:mi:ss'), '�ٺ�', '˽��', '��ɳ�ص����԰', '�Ǻ�', '123445', '������ˮ', 7, 30, 12, 1, '��֪��', null, null, null, null, null, null, null, null, 0, 'û����', 1200, 1200, to_date('04-03-2015 12:50:02', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B104071603', 3, 1, 1, to_date('04-03-2015 19:03:16', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '2', null, '2', null, '2', null, null, null, null, null, null, null, null, null, '2104064857', 'yyy', '13012345678', '�¿���������IT���Ļ�������ܲ��칫¥2219��', null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150305-0001', 5, 2, 0, to_date('05-03-2015 10:23:25', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('05-03-2015 10:23:25', 'dd-mm-yyyy hh24:mi:ss'), 'С��', '˽��', '����˵����', 'СС', '1456354543', '��ҵ', 2, 33, 14, null, '�����', null, null, null, '0100043900', '�ǹٷ�����', '3454', 'DN250', '�����', null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150305-0002', 1, -1, 0, to_date('05-03-2015 10:24:23', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('05-03-2015 10:24:23', 'dd-mm-yyyy hh24:mi:ss'), '��ѹ��', '����', '���uhfdois', '�涨������', '2134261', '����', 2, 22, 4, 1, '��˳��', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'azfsa');
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150305-0003', 1, 2, 0, to_date('05-03-2015 10:24:40', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('05-03-2015 10:24:40', 'dd-mm-yyyy hh24:mi:ss'), null, '-1', null, null, null, null, null, null, -1, 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150305-0004', 7, 2, 0, to_date('05-03-2015 10:26:03', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('05-03-2015 10:26:03', 'dd-mm-yyyy hh24:mi:ss'), '2�����', null, null, null, null, null, null, null, null, null, '�ǺǺ�', null, null, null, '0100043900', '�ǹٷ�����', '3454', 'DN250', '�����', null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150305-0005', 1, 2, 0, to_date('05-03-2015 10:32:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('05-03-2015 10:32:52', 'dd-mm-yyyy hh24:mi:ss'), '������', '����', '��˵��', '���� ', '123143', '����', 3, 22, 2, 1, '����', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150305-0006', 3, 2, 0, to_date('05-03-2015 10:34:35', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('05-03-2015 10:34:35', 'dd-mm-yyyy hh24:mi:ss'), '����', '����', 'bejing', 'jay', '135135', 'shenghuo', 2, 2, 3, null, 'xx', null, null, null, '0100043900', '�ǹٷ�����', '3454', 'DN250', '�����', null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150305-0007', 4, 2, 0, to_date('05-03-2015 10:35:35', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('05-03-2015 10:35:35', 'dd-mm-yyyy hh24:mi:ss'), 'huhu', null, null, null, null, null, null, null, null, null, 'ddd/', '���д���', '����', '62092222', '0100043900', '�ǹٷ�����', '3454', 'DN250', '�����', null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150305-0008', 5, 2, 0, to_date('05-03-2015 10:37:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('05-03-2015 10:37:53', 'dd-mm-yyyy hh24:mi:ss'), 'ЦЦ', '˽��', '����������', '�ٺ�', '1575356463', '��ҵ', 2, 333, 13, null, '����Ⱦ', null, null, null, '0100043900', '�ǹٷ�����', '3454', 'DN250', '�����', null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150305-0009', 6, 2, 0, to_date('05-03-2015 10:39:06', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('05-03-2015 10:39:06', 'dd-mm-yyyy hh24:mi:ss'), '����', '˽��', '���԰', 'С��', '142534', 'it', 4, 422, 15, null, '����������', null, null, null, '0100043900', '�ǹٷ�����', '3454', 'DN250', '�����', null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150305-0010', 7, 2, 0, to_date('05-03-2015 10:43:13', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('05-03-2015 10:43:13', 'dd-mm-yyyy hh24:mi:ss'), 'nihao', null, null, null, null, null, null, null, null, null, '��ί��ʦ���Ư��', null, null, null, '0100043900', '�ǹٷ�����', '3454', 'DN250', '�����', null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150305-0011', 2, 2, 0, to_date('05-03-2015 10:45:03', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('05-03-2015 10:45:03', 'dd-mm-yyyy hh24:mi:ss'), '�󷶸ʵ�', '˽��', '���͹�', '�ط�', '3454545', '���͹�', 2, 34, 14, 1, '�ǺǺ�', null, null, null, '0100043900', '�ǹٷ�����', '3454', 'DN250', '�����', null, null, null, null, null, null, null, null, null);
insert into BE_ORDER (ORDERNO, ORDERTYPE, STEPID, CREATEEMP, CREATEDATE, COMPLETEEMP, COMPLETEDATE, LASTEDITEMP, LASTEDITDATE, USERNAME, USERTYPE, ADDRESS, LINKMAN, PHONE, USETARGET, HOUSEHEIGHT, MAXAMOUNT, METERTYPEID, METERCOUNT, USERREMARK, PAYTYPE, BANKCOMPANY, BANKNUM, OLDUSERNO, OLDUSERNAME, OLDUSERPHONE, OLDUSERADDR, OLDMETER, AUDITEMPID, AUDITMESSAGE, PROJECTMONEY, REALMONEY, PAYDATE, PROJECTDATE1, PROJECTDATE2, AREAID, ABORTCAUSE)
values ('B1-20150305-0012', 1, 8, 0, to_date('05-03-2015 10:51:58', 'dd-mm-yyyy hh24:mi:ss'), null, null, 0, to_date('05-03-2015 11:04:42', 'dd-mm-yyyy hh24:mi:ss'), '�ƶ��Ƕ�', '����', '�Ƿ���ʶ�Ĺ㷺', '343463', '345346', '���޷�', 1, 22, 13, 2, 'ʹ�ø��ط�', null, null, null, null, null, null, null, null, 0, '�������', 566, 33, to_date('05-03-2015 10:53:42', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
prompt 56 records loaded
prompt Loading BE_ORDERLITE...
insert into BE_ORDERLITE (ID, ORDERTYPE, DATEE, EMPID, USERNO, USERNAME, DESCRIPTION)
values (2, 3, to_date('02-03-2015 13:42:20', 'dd-mm-yyyy hh24:mi:ss'), 1, '2102010840', '��Ϣ', '���û�������Ϣ,���û�����4');
insert into BE_ORDERLITE (ID, ORDERTYPE, DATEE, EMPID, USERNO, USERNAME, DESCRIPTION)
values (61, 1, to_date('05-03-2015 11:17:11', 'dd-mm-yyyy hh24:mi:ss'), 1, '2105111017', 'aa', '�µ��û�����Ϊaa');
insert into BE_ORDERLITE (ID, ORDERTYPE, DATEE, EMPID, USERNO, USERNAME, DESCRIPTION)
values (62, 3, to_date('05-03-2015 11:17:48', 'dd-mm-yyyy hh24:mi:ss'), 1, '2105111017', 'aa', '���û�����aa,���û�����1');
insert into BE_ORDERLITE (ID, ORDERTYPE, DATEE, EMPID, USERNO, USERNAME, DESCRIPTION)
values (63, 6, to_date('05-03-2015 11:18:36', 'dd-mm-yyyy hh24:mi:ss'), 1, '0100000005', 'zz', '���������[SH:80%][SY:20%],���������[SH:80%][SY:20%][TZ :20%]');
insert into BE_ORDERLITE (ID, ORDERTYPE, DATEE, EMPID, USERNO, USERNAME, DESCRIPTION)
values (1, 1, to_date('02-03-2015 13:40:09', 'dd-mm-yyyy hh24:mi:ss'), 1, '2102010840', '��Ϣ', '�µ��û�����Ϊ��Ϣ');
insert into BE_ORDERLITE (ID, ORDERTYPE, DATEE, EMPID, USERNO, USERNAME, DESCRIPTION)
values (47, 1, to_date('04-03-2015 18:57:48', 'dd-mm-yyyy hh24:mi:ss'), 1, '2104064857', 'yyy', '�µ��û�����Ϊyyy');
insert into BE_ORDERLITE (ID, ORDERTYPE, DATEE, EMPID, USERNO, USERNAME, DESCRIPTION)
values (64, 4, to_date('05-03-2015 11:21:49', 'dd-mm-yyyy hh24:mi:ss'), 1, '0100000005', 'zz', '����Ϊ������,������:������,�˺�:122343434');
insert into BE_ORDERLITE (ID, ORDERTYPE, DATEE, EMPID, USERNO, USERNAME, DESCRIPTION)
values (65, 5, to_date('05-03-2015 11:22:38', 'dd-mm-yyyy hh24:mi:ss'), 1, '0100000005', 'zz', '�±�����:DN10,������:01010001');
insert into BE_ORDERLITE (ID, ORDERTYPE, DATEE, EMPID, USERNO, USERNAME, DESCRIPTION)
values (4, 1, to_date('01-03-2015 16:34:23', 'dd-mm-yyyy hh24:mi:ss'), 1, '101042334', 'Ц��', '�µ��û�����ΪЦ��');
insert into BE_ORDERLITE (ID, ORDERTYPE, DATEE, EMPID, USERNO, USERNAME, DESCRIPTION)
values (5, 1, to_date('01-03-2015 16:37:06', 'dd-mm-yyyy hh24:mi:ss'), 1, '101040637', 'С��', '�µ��û�����ΪС��');
insert into BE_ORDERLITE (ID, ORDERTYPE, DATEE, EMPID, USERNO, USERNAME, DESCRIPTION)
values (6, 1, to_date('01-03-2015 16:56:51', 'dd-mm-yyyy hh24:mi:ss'), 1, '101045156', '�в���', '�µ��û�����Ϊ�в���');
insert into BE_ORDERLITE (ID, ORDERTYPE, DATEE, EMPID, USERNO, USERNAME, DESCRIPTION)
values (42, 1, to_date('02-03-2015 09:00:28', 'dd-mm-yyyy hh24:mi:ss'), 1, '102092800', 'zz', '�µ��û�����Ϊzz');
insert into BE_ORDERLITE (ID, ORDERTYPE, DATEE, EMPID, USERNO, USERNAME, DESCRIPTION)
values (21, 1, to_date('02-03-2015 08:49:16', 'dd-mm-yyyy hh24:mi:ss'), 1, '102081649', 'С��', '�µ��û�����ΪС��');
insert into BE_ORDERLITE (ID, ORDERTYPE, DATEE, EMPID, USERNO, USERNAME, DESCRIPTION)
values (43, 1, to_date('02-03-2015 09:39:40', 'dd-mm-yyyy hh24:mi:ss'), 1, '102094039', 'ww', '�µ��û�����Ϊww');
insert into BE_ORDERLITE (ID, ORDERTYPE, DATEE, EMPID, USERNO, USERNAME, DESCRIPTION)
values (44, 3, to_date('02-03-2015 09:45:04', 'dd-mm-yyyy hh24:mi:ss'), 1, '102094039', 'ww', '���û�����ww,���û�����2');
insert into BE_ORDERLITE (ID, ORDERTYPE, DATEE, EMPID, USERNO, USERNAME, DESCRIPTION)
values (45, 1, to_date('02-03-2015 09:45:57', 'dd-mm-yyyy hh24:mi:ss'), 1, '102095745', 'dd', '�µ��û�����Ϊdd');
insert into BE_ORDERLITE (ID, ORDERTYPE, DATEE, EMPID, USERNO, USERNAME, DESCRIPTION)
values (46, 3, to_date('02-03-2015 09:46:11', 'dd-mm-yyyy hh24:mi:ss'), 1, '102095745', 'dd', '���û�����dd,���û�����4');
insert into BE_ORDERLITE (ID, ORDERTYPE, DATEE, EMPID, USERNO, USERNAME, DESCRIPTION)
values (41, 1, to_date('02-03-2015 08:57:03', 'dd-mm-yyyy hh24:mi:ss'), 1, '102080357', 'xx', '�µ��û�����Ϊxx');
insert into BE_ORDERLITE (ID, ORDERTYPE, DATEE, EMPID, USERNO, USERNAME, DESCRIPTION)
values (48, 3, to_date('04-03-2015 19:03:16', 'dd-mm-yyyy hh24:mi:ss'), 1, '2104064857', 'yyy', '���û�����yyy,���û�����2');
insert into BE_ORDERLITE (ID, ORDERTYPE, DATEE, EMPID, USERNO, USERNAME, DESCRIPTION)
values (49, 1, to_date('04-03-2015 19:03:54', 'dd-mm-yyyy hh24:mi:ss'), 1, '2104075403', 'ddd', '�µ��û�����Ϊddd');
insert into BE_ORDERLITE (ID, ORDERTYPE, DATEE, EMPID, USERNO, USERNAME, DESCRIPTION)
values (3, 6, to_date('02-03-2015 14:19:56', 'dd-mm-yyyy hh24:mi:ss'), 1, '10K6666666', 'zz', '���������[SH:80%][SY:20%],���������[SH:80%][SY:20%][JQ :*]');
commit;
prompt 21 records loaded
prompt Loading BE_ORDERTYPE...
insert into BE_ORDERTYPE (ORDERID, ORDERNAME)
values (1, '�»�');
insert into BE_ORDERTYPE (ORDERID, ORDERNAME)
values (2, '�ֻ�');
insert into BE_ORDERTYPE (ORDERID, ORDERNAME)
values (3, '����');
insert into BE_ORDERTYPE (ORDERID, ORDERNAME)
values (4, '����');
insert into BE_ORDERTYPE (ORDERID, ORDERNAME)
values (5, '����');
insert into BE_ORDERTYPE (ORDERID, ORDERNAME)
values (6, '��ǩ');
insert into BE_ORDERTYPE (ORDERID, ORDERNAME)
values (7, '����');
commit;
prompt 7 records loaded
prompt Loading BE_ORDERUSER...
insert into BE_ORDERUSER (ID, ORDERNO, USERNAME, PHONE, SMSPHONE, ADDRESS, PROJECTMONEY, REALMONEY, INVOICENO, FORMULA, CONTRACTNUM, METERTYPEID, METERNAME, MAXVALUE, STARTVALUE, METERFACTORY, DOCNUM, USERNO)
values (1, 'B1-20140105-0001', 'sss', '43534534333', '4534353535', '��ַ', 333, 350, 'B234', '[SY:20%][JQ:*][XZ:30%]', 'HT201402035841', 1, '333', 9999, 0, '���', 'T004', null);
insert into BE_ORDERUSER (ID, ORDERNO, USERNAME, PHONE, SMSPHONE, ADDRESS, PROJECTMONEY, REALMONEY, INVOICENO, FORMULA, CONTRACTNUM, METERTYPEID, METERNAME, MAXVALUE, STARTVALUE, METERFACTORY, DOCNUM, USERNO)
values (2, 'B1-20140105-0001', '��������', '435345353', '3464565464', '��ٸԵط�', 3435, 3435, 'B4321', '[SY:20%][JQ:*][XZ:30%]', 'HT201402035841', 2, '3444', 9999, 0, 'rete', 'T005', null);
insert into BE_ORDERUSER (ID, ORDERNO, USERNAME, PHONE, SMSPHONE, ADDRESS, PROJECTMONEY, REALMONEY, INVOICENO, FORMULA, CONTRACTNUM, METERTYPEID, METERNAME, MAXVALUE, STARTVALUE, METERFACTORY, DOCNUM, USERNO)
values (3, 'B1-20140105-0002', 'Ⱦ����', '46546464', '4545745744', 'gffdgdd', 5333, 5333, 'B123', '[GY:20%][XZ:*][SY:20%]', 'HT201402035842', 1, 's12', 3333, 11, '���˹���', 'T001', null);
insert into BE_ORDERUSER (ID, ORDERNO, USERNAME, PHONE, SMSPHONE, ADDRESS, PROJECTMONEY, REALMONEY, INVOICENO, FORMULA, CONTRACTNUM, METERTYPEID, METERNAME, MAXVALUE, STARTVALUE, METERFACTORY, DOCNUM, USERNO)
values (4, 'B1-20140105-0002', '�ط���', '45645645', '5675675', 'trgfdgdfg', 4564, 4564, 'B124', '[GY:20%][XZ:*][SY:20%]', 'HT201402035842', 5, '544', 9999, 22, 'RT', 'T004', null);
insert into BE_ORDERUSER (ID, ORDERNO, USERNAME, PHONE, SMSPHONE, ADDRESS, PROJECTMONEY, REALMONEY, INVOICENO, FORMULA, CONTRACTNUM, METERTYPEID, METERNAME, MAXVALUE, STARTVALUE, METERFACTORY, DOCNUM, USERNO)
values (5, 'B1-20140105-0002', '�緹��', '4565467457', '464646', 'trhgff', 3453, 3453, 'B125', '[GY:20%][XZ:*][SY:20%]', 'HT201402035842', 1, '222', 8888, 333, 'fdgf', 'T006', null);
insert into BE_ORDERUSER (ID, ORDERNO, USERNAME, PHONE, SMSPHONE, ADDRESS, PROJECTMONEY, REALMONEY, INVOICENO, FORMULA, CONTRACTNUM, METERTYPEID, METERNAME, MAXVALUE, STARTVALUE, METERFACTORY, DOCNUM, USERNO)
values (6, 'B1-20140105-0002', '�󷽵�', '3454354', '4564544', '�շ��ݸ���', 45646, 45646, 'B126', '[GY:20%][XZ:*][SY:20%]', 'HT201402035842', 7, '333', 5555, 44, '���� ����', 'T008', null);
insert into BE_ORDERUSER (ID, ORDERNO, USERNAME, PHONE, SMSPHONE, ADDRESS, PROJECTMONEY, REALMONEY, INVOICENO, FORMULA, CONTRACTNUM, METERTYPEID, METERNAME, MAXVALUE, STARTVALUE, METERFACTORY, DOCNUM, USERNO)
values (7, 'B1-20140105-0003', '���Ĺ۵�', '4353453', '45646', '��������', 5555, null, null, null, null, 2, '333', 4343, 22, null, null, null);
insert into BE_ORDERUSER (ID, ORDERNO, USERNAME, PHONE, SMSPHONE, ADDRESS, PROJECTMONEY, REALMONEY, INVOICENO, FORMULA, CONTRACTNUM, METERTYPEID, METERNAME, MAXVALUE, STARTVALUE, METERFACTORY, DOCNUM, USERNO)
values (8, 'B1-20140105-0003', '��������', '345353', '435436', '��㶫ʡ', 3453, null, null, null, null, 2, '444', 3333, 22, null, null, null);
insert into BE_ORDERUSER (ID, ORDERNO, USERNAME, PHONE, SMSPHONE, ADDRESS, PROJECTMONEY, REALMONEY, INVOICENO, FORMULA, CONTRACTNUM, METERTYPEID, METERNAME, MAXVALUE, STARTVALUE, METERFACTORY, DOCNUM, USERNO)
values (25, 'B1-20150228-0002', 'fg', '45345', '6767', 'hjhj', null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDERUSER (ID, ORDERNO, USERNAME, PHONE, SMSPHONE, ADDRESS, PROJECTMONEY, REALMONEY, INVOICENO, FORMULA, CONTRACTNUM, METERTYPEID, METERNAME, MAXVALUE, STARTVALUE, METERFACTORY, DOCNUM, USERNO)
values (43, 'B1-20150302-0001', '�ǹٷ�����', '3454', '567567', '�����', null, null, null, null, null, 13, null, null, null, null, null, '0100043900');
insert into BE_ORDERUSER (ID, ORDERNO, USERNAME, PHONE, SMSPHONE, ADDRESS, PROJECTMONEY, REALMONEY, INVOICENO, FORMULA, CONTRACTNUM, METERTYPEID, METERNAME, MAXVALUE, STARTVALUE, METERFACTORY, DOCNUM, USERNO)
values (89, 'B1-20150304-0009', '�ǺǺ�', '4545454', '5676767', '�������', 300, 400, 'B345', '[SY:20%][SH:80%]', null, 5, '3', 444, 444, 'sb', null, null);
insert into BE_ORDERUSER (ID, ORDERNO, USERNAME, PHONE, SMSPHONE, ADDRESS, PROJECTMONEY, REALMONEY, INVOICENO, FORMULA, CONTRACTNUM, METERTYPEID, METERNAME, MAXVALUE, STARTVALUE, METERFACTORY, DOCNUM, USERNO)
values (63, 'B1-20150303-0001', 'С��', '9765', '4566', '��ɳ�е����԰', null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDERUSER (ID, ORDERNO, USERNAME, PHONE, SMSPHONE, ADDRESS, PROJECTMONEY, REALMONEY, INVOICENO, FORMULA, CONTRACTNUM, METERTYPEID, METERNAME, MAXVALUE, STARTVALUE, METERFACTORY, DOCNUM, USERNO)
values (41, 'B1-20150131-0001', 'Сa', '234567', '123', '��ɳ', null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDERUSER (ID, ORDERNO, USERNAME, PHONE, SMSPHONE, ADDRESS, PROJECTMONEY, REALMONEY, INVOICENO, FORMULA, CONTRACTNUM, METERTYPEID, METERNAME, MAXVALUE, STARTVALUE, METERFACTORY, DOCNUM, USERNO)
values (42, 'B1-20150131-0001', 'Сb', '345678', '234', '����', null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDERUSER (ID, ORDERNO, USERNAME, PHONE, SMSPHONE, ADDRESS, PROJECTMONEY, REALMONEY, INVOICENO, FORMULA, CONTRACTNUM, METERTYPEID, METERNAME, MAXVALUE, STARTVALUE, METERFACTORY, DOCNUM, USERNO)
values (87, 'B1-20150304-0002', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDERUSER (ID, ORDERNO, USERNAME, PHONE, SMSPHONE, ADDRESS, PROJECTMONEY, REALMONEY, INVOICENO, FORMULA, CONTRACTNUM, METERTYPEID, METERNAME, MAXVALUE, STARTVALUE, METERFACTORY, DOCNUM, USERNO)
values (88, 'B1-20150304-0003', 'ghgh', '34534534', '657567', 'hhjhj', null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDERUSER (ID, ORDERNO, USERNAME, PHONE, SMSPHONE, ADDRESS, PROJECTMONEY, REALMONEY, INVOICENO, FORMULA, CONTRACTNUM, METERTYPEID, METERNAME, MAXVALUE, STARTVALUE, METERFACTORY, DOCNUM, USERNO)
values (86, 'B1-20150304-0001', '�ٺ�', '2355666', '677887', '��ɳ�е����԰', 1200, 1200, 'B345', null, null, null, null, null, null, null, null, null);
insert into BE_ORDERUSER (ID, ORDERNO, USERNAME, PHONE, SMSPHONE, ADDRESS, PROJECTMONEY, REALMONEY, INVOICENO, FORMULA, CONTRACTNUM, METERTYPEID, METERNAME, MAXVALUE, STARTVALUE, METERFACTORY, DOCNUM, USERNO)
values (103, 'B1-20150305-0002', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDERUSER (ID, ORDERNO, USERNAME, PHONE, SMSPHONE, ADDRESS, PROJECTMONEY, REALMONEY, INVOICENO, FORMULA, CONTRACTNUM, METERTYPEID, METERNAME, MAXVALUE, STARTVALUE, METERFACTORY, DOCNUM, USERNO)
values (104, 'B1-20150305-0003', '������', '1242423534', '������', '�����ķ�', null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDERUSER (ID, ORDERNO, USERNAME, PHONE, SMSPHONE, ADDRESS, PROJECTMONEY, REALMONEY, INVOICENO, FORMULA, CONTRACTNUM, METERTYPEID, METERNAME, MAXVALUE, STARTVALUE, METERFACTORY, DOCNUM, USERNO)
values (105, 'B1-20150305-0005', '�ķ���', '12324', '����', '����', null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDERUSER (ID, ORDERNO, USERNAME, PHONE, SMSPHONE, ADDRESS, PROJECTMONEY, REALMONEY, INVOICENO, FORMULA, CONTRACTNUM, METERTYPEID, METERNAME, MAXVALUE, STARTVALUE, METERFACTORY, DOCNUM, USERNO)
values (106, 'B1-20150305-0011', '��ɷ�', '4534543', '5676576', '�滮', null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDERUSER (ID, ORDERNO, USERNAME, PHONE, SMSPHONE, ADDRESS, PROJECTMONEY, REALMONEY, INVOICENO, FORMULA, CONTRACTNUM, METERTYPEID, METERNAME, MAXVALUE, STARTVALUE, METERFACTORY, DOCNUM, USERNO)
values (107, 'B1-20150131-0002', 'Сa', '123', '345345', '��ɳ', null, null, null, null, null, null, null, null, null, null, null, null);
insert into BE_ORDERUSER (ID, ORDERNO, USERNAME, PHONE, SMSPHONE, ADDRESS, PROJECTMONEY, REALMONEY, INVOICENO, FORMULA, CONTRACTNUM, METERTYPEID, METERNAME, MAXVALUE, STARTVALUE, METERFACTORY, DOCNUM, USERNO)
values (108, 'B1-20150305-0012', '����', '4365464', '4563', 'ͷ���ָ�', 233, 22, 'B222', '[XZ:20%][TZ:56][AA:*]', '4567', 23, '777', 77, 0, 'ssad', 'T001', null);
insert into BE_ORDERUSER (ID, ORDERNO, USERNAME, PHONE, SMSPHONE, ADDRESS, PROJECTMONEY, REALMONEY, INVOICENO, FORMULA, CONTRACTNUM, METERTYPEID, METERNAME, MAXVALUE, STARTVALUE, METERFACTORY, DOCNUM, USERNO)
values (109, 'B1-20150305-0012', '��', '4564564', '353463', '˵�ķ���', 333, 11, 'B223', '[XZ:20%][TZ:56][AA:*]', '4567', 23, '444', 66, 0, 'asd', 'T0002', null);
commit;
prompt 24 records loaded
prompt Loading IV_ARCHIVE...
insert into IV_ARCHIVE (ID, EMPID, INID, STARTNO, ENDNO, COUNTS, ARCHIVEDATE, ARCHIVEEMPID)
values (1, 1, 1, '666600', '666699', 99, to_date('19-02-2015', 'dd-mm-yyyy'), 1);
commit;
prompt 1 records loaded
prompt Loading IV_ININVOICE...
insert into IV_ININVOICE (ID, INVOICETYPE, STARTNO, ENDNO, COUNTS, INDATE, INEMPID)
values (1, 0, '666600', '666699', 99, to_date('05-03-2015', 'dd-mm-yyyy'), 23);
commit;
prompt 1 records loaded
prompt Loading IV_INVOICE...
insert into IV_INVOICE (INVOICENO, INVOICETYPE, EMPID, INID, OUTID, ARCHIVEID, USED, USEDATE, INVALID, INVALIDDATE, ARCHIVED, ARCHIVEDATE)
values ('34899920', 1, null, null, null, null, 0, null, 0, null, 1, null);
insert into IV_INVOICE (INVOICENO, INVOICETYPE, EMPID, INID, OUTID, ARCHIVEID, USED, USEDATE, INVALID, INVALIDDATE, ARCHIVED, ARCHIVEDATE)
values ('34899919', 1, null, null, null, null, 0, null, 1, null, 1, null);
insert into IV_INVOICE (INVOICENO, INVOICETYPE, EMPID, INID, OUTID, ARCHIVEID, USED, USEDATE, INVALID, INVALIDDATE, ARCHIVED, ARCHIVEDATE)
values ('34899918', 1, null, null, null, null, 0, null, 1, null, 1, null);
insert into IV_INVOICE (INVOICENO, INVOICETYPE, EMPID, INID, OUTID, ARCHIVEID, USED, USEDATE, INVALID, INVALIDDATE, ARCHIVED, ARCHIVEDATE)
values ('34899917', 1, null, null, null, null, 1, null, 1, null, 1, null);
insert into IV_INVOICE (INVOICENO, INVOICETYPE, EMPID, INID, OUTID, ARCHIVEID, USED, USEDATE, INVALID, INVALIDDATE, ARCHIVED, ARCHIVEDATE)
values ('34899999', 1, 1, null, null, null, 0, to_date('27-01-2015 22:01:31', 'dd-mm-yyyy hh24:mi:ss'), null, null, 1, null);
insert into IV_INVOICE (INVOICENO, INVOICETYPE, EMPID, INID, OUTID, ARCHIVEID, USED, USEDATE, INVALID, INVALIDDATE, ARCHIVED, ARCHIVEDATE)
values ('43859000', 1, 1, null, null, null, 0, to_date('27-01-2015 22:13:41', 'dd-mm-yyyy hh24:mi:ss'), null, null, 1, null);
insert into IV_INVOICE (INVOICENO, INVOICETYPE, EMPID, INID, OUTID, ARCHIVEID, USED, USEDATE, INVALID, INVALIDDATE, ARCHIVED, ARCHIVEDATE)
values ('43950949', 1, null, null, null, null, null, null, 0, to_date('24-01-2015 10:28:08', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into IV_INVOICE (INVOICENO, INVOICETYPE, EMPID, INID, OUTID, ARCHIVEID, USED, USEDATE, INVALID, INVALIDDATE, ARCHIVED, ARCHIVEDATE)
values ('44949209', 1, null, null, null, null, null, null, 0, to_date('24-01-2015 10:28:25', 'dd-mm-yyyy hh24:mi:ss'), 1, to_date('10-01-2015 14:23:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into IV_INVOICE (INVOICENO, INVOICETYPE, EMPID, INID, OUTID, ARCHIVEID, USED, USEDATE, INVALID, INVALIDDATE, ARCHIVED, ARCHIVEDATE)
values ('48839490', 0, null, null, null, null, 1, null, null, null, null, null);
insert into IV_INVOICE (INVOICENO, INVOICETYPE, EMPID, INID, OUTID, ARCHIVEID, USED, USEDATE, INVALID, INVALIDDATE, ARCHIVED, ARCHIVEDATE)
values ('23448890', 0, null, null, null, null, 1, null, null, null, null, null);
insert into IV_INVOICE (INVOICENO, INVOICETYPE, EMPID, INID, OUTID, ARCHIVEID, USED, USEDATE, INVALID, INVALIDDATE, ARCHIVED, ARCHIVEDATE)
values ('07382991', 0, 1, null, null, 1, 0, to_date('05-03-2015 14:11:12', 'dd-mm-yyyy hh24:mi:ss'), 0, null, 1, null);
insert into IV_INVOICE (INVOICENO, INVOICETYPE, EMPID, INID, OUTID, ARCHIVEID, USED, USEDATE, INVALID, INVALIDDATE, ARCHIVED, ARCHIVEDATE)
values ('07382992', 0, 1, null, null, 2, 0, to_date('11-12-2014 08:23:22', 'dd-mm-yyyy hh24:mi:ss'), 1, null, 1, null);
insert into IV_INVOICE (INVOICENO, INVOICETYPE, EMPID, INID, OUTID, ARCHIVEID, USED, USEDATE, INVALID, INVALIDDATE, ARCHIVED, ARCHIVEDATE)
values ('43859032', 1, null, null, null, null, null, null, 0, to_date('27-01-2015 22:13:41', 'dd-mm-yyyy hh24:mi:ss'), 1, null);
insert into IV_INVOICE (INVOICENO, INVOICETYPE, EMPID, INID, OUTID, ARCHIVEID, USED, USEDATE, INVALID, INVALIDDATE, ARCHIVED, ARCHIVEDATE)
values ('34899912', 1, null, null, null, null, null, null, 0, to_date('27-01-2015 22:01:31', 'dd-mm-yyyy hh24:mi:ss'), 1, null);
insert into IV_INVOICE (INVOICENO, INVOICETYPE, EMPID, INID, OUTID, ARCHIVEID, USED, USEDATE, INVALID, INVALIDDATE, ARCHIVED, ARCHIVEDATE)
values ('34899913', 0, null, null, null, 3, 1, null, null, null, 0, to_date('11-03-2014 08:26:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into IV_INVOICE (INVOICENO, INVOICETYPE, EMPID, INID, OUTID, ARCHIVEID, USED, USEDATE, INVALID, INVALIDDATE, ARCHIVED, ARCHIVEDATE)
values ('34899914', 1, null, null, null, 4, 1, null, null, null, 0, to_date('22-04-2014 10:26:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into IV_INVOICE (INVOICENO, INVOICETYPE, EMPID, INID, OUTID, ARCHIVEID, USED, USEDATE, INVALID, INVALIDDATE, ARCHIVED, ARCHIVEDATE)
values ('34899915', 1, null, null, null, 5, 1, null, null, null, 0, to_date('22-04-2014 10:26:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into IV_INVOICE (INVOICENO, INVOICETYPE, EMPID, INID, OUTID, ARCHIVEID, USED, USEDATE, INVALID, INVALIDDATE, ARCHIVED, ARCHIVEDATE)
values ('34899916', 0, null, null, null, 6, null, null, 0, to_date('02-03-2015 09:19:16', 'dd-mm-yyyy hh24:mi:ss'), 0, to_date('22-04-2014 10:26:17', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 18 records loaded
prompt Loading IV_OUTINVOICE...
insert into IV_OUTINVOICE (ID, EMPID, INID, STARTNO, ENDNO, COUNTS, OUTDATE, OUTEMPID)
values (1, 21, 1, '666600', '666620', 20, to_date('05-03-2015', 'dd-mm-yyyy'), 23);
commit;
prompt 1 records loaded
prompt Loading PY_BALANCE...
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (26, '0100000005', to_date('28-02-2015 16:09:21', 'dd-mm-yyyy hh24:mi:ss'), 474, 'SF10K6666666-201501', 63, 0, 'JF10K6666666-201502-25', 0, 63);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (9, '0100000005', to_date('01-02-2015 21:57:58', 'dd-mm-yyyy hh24:mi:ss'), 584, 'SF10K6666666-201501', 11, 11, 'JF10K6666666-201502-08', 11, 11);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (10, '0100000005', to_date('01-02-2015 22:03:26', 'dd-mm-yyyy hh24:mi:ss'), 584, 'SF10K6666666-201501', 11, 11, 'JF10K6666666-201502-9', 11, 11);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (4, '0100000005', to_date('01-02-2015 21:14:30', 'dd-mm-yyyy hh24:mi:ss'), 4, 'SF10K6666666-201501', 4, 4, 'JF10K6666666-201502-03', 4, 4);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (11, '0100000005', to_date('01-02-2015 22:04:16', 'dd-mm-yyyy hh24:mi:ss'), 584, 'SF10K6666666-201501', 11, 11, 'JF10K6666666-201502-10', 11, 11);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (14, '0100000005', to_date('02-02-2015 15:36:51', 'dd-mm-yyyy hh24:mi:ss'), 584, 'SF10K6666666-201501', 11, 11, 'JF10K6666666-201502-13', 11, 11);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (16, '0100000005', to_date('02-02-2015 16:01:13', 'dd-mm-yyyy hh24:mi:ss'), 568, 'SF10K6666666-201501', 16, 0, 'JF10K6666666-201502-15', 0, 16);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (27, '0100000005', to_date('01-03-2015 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), 392, 'SF10K6666666-201501', 104, 0, 'JF10K6666666-201503-12', 0, 104);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (28, '0100000005', to_date('01-03-2015 17:13:44', 'dd-mm-yyyy hh24:mi:ss'), 388, 'SF10K6666666-201501', 106, 0, 'JF10K6666666-201503-13', 0, 106);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (30, '0100000005', to_date('04-03-2015 11:10:03', 'dd-mm-yyyy hh24:mi:ss'), 370, 'SF0100000005-201501', 115, 0, 'JF0100000005-201503-15', 0, 115);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (31, '0100000005', to_date('05-03-2015 14:00:51', 'dd-mm-yyyy hh24:mi:ss'), 360, 'SF0100000005-201501', 120, 0, 'JF0100000005-201503-16', 0, 120);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (3, '0100000005', to_date('01-02-2015 21:09:54', 'dd-mm-yyyy hh24:mi:ss'), 2, 'SF10K6666666-201501', 2, 2, 'JF10K6666666-201502-02', 2, 2);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (7, '0100000005', to_date('01-02-2015 21:47:17', 'dd-mm-yyyy hh24:mi:ss'), 588, 'SF10K6666666-201501', 9, 9, 'JF10K6666666-201502-06', 9, 9);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (8, '0100000005', to_date('01-02-2015 21:48:09', 'dd-mm-yyyy hh24:mi:ss'), 588, 'SF10K6666666-201501', 9, 9, 'JF10K6666666-201502-07', 9, 9);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (13, '0100000005', to_date('02-02-2015 15:31:14', 'dd-mm-yyyy hh24:mi:ss'), 584, 'SF10K6666666-201501', 11, 11, 'JF10K6666666-201502-12', 11, 11);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (15, '0100000005', to_date('02-02-2015 15:44:55', 'dd-mm-yyyy hh24:mi:ss'), 578, 'SF10K6666666-201501', 11, 11, 'JF10K6666666-201502-14', 11, 11);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (18, '0100000005', to_date('04-02-2015 17:27:54', 'dd-mm-yyyy hh24:mi:ss'), 548, 'SF10K6666666-201501', 26, 0, 'JF10K6666666-201502-17', 0, 26);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (19, '0100000005', to_date('04-02-2015 17:47:23', 'dd-mm-yyyy hh24:mi:ss'), 538, 'SF10K6666666-201501', 31, 0, 'JF10K6666666-201502-18', 0, 31);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (20, '0100000005', to_date('04-02-2015 17:48:43', 'dd-mm-yyyy hh24:mi:ss'), 528, 'SF10K6666666-201501', 36, 0, 'JF10K6666666-201502-19', 0, 36);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (21, '0100000005', to_date('04-02-2015 17:49:30', 'dd-mm-yyyy hh24:mi:ss'), 518, 'SF10K6666666-201501', 41, 0, 'JF10K6666666-201502-20', 0, 41);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (25, '0100000005', to_date('28-02-2015 15:27:16', 'dd-mm-yyyy hh24:mi:ss'), 478, 'SF10K6666666-201501', 61, 0, 'JF10K6666666-201502-24', 0, 61);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (33, '0100000005', to_date('05-03-2015 14:09:44', 'dd-mm-yyyy hh24:mi:ss'), 340, 'SF0100000005-201501', 130, 0, 'JF0100000005-201503-18', 0, 130);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (34, '0100000005', to_date('05-03-2015 14:09:44', 'dd-mm-yyyy hh24:mi:ss'), 330, 'SF0100000005-201501', 135, 0, 'JF0100000005-201503-19', 0, 135);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (2, '0100000005', to_date('01-02-2015 20:23:06', 'dd-mm-yyyy hh24:mi:ss'), 600, 'SF10K6666666-201412', 600, 600, 'JF10K6666666-201502-01', 600, 600);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (5, '0100000005', to_date('01-02-2015 21:31:11', 'dd-mm-yyyy hh24:mi:ss'), 586, 'SF10K6666666-201501', 10, 10, 'JF10K6666666-201502-04', 10, 10);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (6, '0100000005', to_date('01-02-2015 21:38:49', 'dd-mm-yyyy hh24:mi:ss'), 586, 'SF10K6666666-201501', 10, 10, 'JF10K6666666-201502-05', 10, 10);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (12, '0100000005', to_date('01-02-2015 22:08:40', 'dd-mm-yyyy hh24:mi:ss'), 584, 'SF10K6666666-201501', 11, 11, 'JF10K6666666-201502-11', 11, 11);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (17, '0100000005', to_date('03-02-2015 14:52:11', 'dd-mm-yyyy hh24:mi:ss'), 558, 'SF10K6666666-201501', 21, 0, 'JF10K6666666-201502-16', 0, 21);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (22, '0100000005', to_date('04-02-2015 17:51:23', 'dd-mm-yyyy hh24:mi:ss'), 508, 'SF10K6666666-201501', 46, 0, 'JF10K6666666-201502-21', 0, 46);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (23, '0100000005', to_date('04-02-2015 17:52:10', 'dd-mm-yyyy hh24:mi:ss'), 498, 'SF10K6666666-201501', 51, 0, 'JF10K6666666-201502-22', 0, 51);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (24, '0100000005', to_date('04-02-2015 17:53:15', 'dd-mm-yyyy hh24:mi:ss'), 488, 'SF10K6666666-201501', 56, 0, 'JF10K6666666-201502-23', 0, 56);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (29, '0100000005', to_date('02-03-2015 15:51:41', 'dd-mm-yyyy hh24:mi:ss'), 380, 'SF10K6666666-201501', 110, 0, 'JF10K6666666-201503-14', 0, 110);
insert into PY_BALANCE (ID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLREALMONEY1, BILLREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (32, '0100000005', to_date('05-03-2015 14:07:42', 'dd-mm-yyyy hh24:mi:ss'), 350, 'SF0100000005-201501', 125, 0, 'JF0100000005-201503-17', 0, 125);
commit;
prompt 33 records loaded
prompt Loading PY_BALANCEDETAIL...
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (102, 26, '0100000005', to_date('28-02-2015 16:09:22', 'dd-mm-yyyy hh24:mi:ss'), 63, 'SF0100000005-201501', 21, 'SH', 63, 0, 'JF10K6666666-201502-25', 0, 63);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (29, 9, '0100000005', to_date('01-02-2015 21:57:58', 'dd-mm-yyyy hh24:mi:ss'), 5, 'SF0100000005-201501', 21, 'SH', 5, 5, 'JF10K6666666-201502-08', 5, 5);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (30, 10, '0100000005', to_date('01-02-2015 22:03:26', 'dd-mm-yyyy hh24:mi:ss'), 5, 'SF0100000005-201501', 21, 'SH', 5, 5, 'JF10K6666666-201502-9', 5, 5);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (31, 11, '0100000005', to_date('01-02-2015 22:04:16', 'dd-mm-yyyy hh24:mi:ss'), 5, 'SF0100000005-201501', 21, 'SH', 5, 5, 'JF10K6666666-201502-10', 5, 5);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (42, 14, '0100000005', to_date('02-02-2015 15:36:51', 'dd-mm-yyyy hh24:mi:ss'), 5, 'SF0100000005-201501', 21, 'SH', 5, 5, 'JF10K6666666-201502-13', 5, 5);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (44, 16, '0100000005', to_date('02-02-2015 16:01:13', 'dd-mm-yyyy hh24:mi:ss'), 16, 'SF0100000005-201501', 21, 'SH', 16, 0, 'JF10K6666666-201502-15', 0, 16);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (121, 27, '0100000005', to_date('01-03-2015 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), 104, 'SF0100000005-201501', 21, 'SH', 104, 0, 'JF10K6666666-201503-12', 0, 104);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (122, 28, '0100000005', to_date('01-03-2015 17:13:44', 'dd-mm-yyyy hh24:mi:ss'), 106, 'SF0100000005-201501', 21, 'SH', 106, 0, 'JF10K6666666-201503-13', 0, 106);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (161, 30, '0100000005', to_date('04-03-2015 11:10:03', 'dd-mm-yyyy hh24:mi:ss'), 6.4, 'SF0100000005-201501', 12, 'SH', 6.4, 0, 'JF0100000005-201503-15', 0, 6.4);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (162, 30, '0100000005', to_date('04-03-2015 11:10:03', 'dd-mm-yyyy hh24:mi:ss'), .32, 'SF0100000005-201501', 13, 'SY', .32, 0, 'JF0100000005-201503-15', 0, .32);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (181, 31, '0100000005', to_date('05-03-2015 14:00:51', 'dd-mm-yyyy hh24:mi:ss'), 6.4, 'SF0100000005-201501', 12, 'SH', 6.4, 0, 'JF0100000005-201503-16', 0, 6.4);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (21, 4, '0100000005', to_date('01-02-2015 21:14:30', 'dd-mm-yyyy hh24:mi:ss'), 124, 'SF0100000005-201501', 16, 'SH', 124, 124, 'JF10K6666666-201502-03', 124, 124);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (22, 4, '0100000005', to_date('01-02-2015 21:14:30', 'dd-mm-yyyy hh24:mi:ss'), 124, 'SF0100000005-201501', 17, 'LJF', 124, 124, 'JF10K6666666-201502-03', 124, 124);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (23, 4, '0100000005', to_date('01-02-2015 21:14:30', 'dd-mm-yyyy hh24:mi:ss'), 235, 'SF0100000005-201501', 18, 'WSF', 235, 235, 'JF10K6666666-201502-03', 235, 235);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (24, 4, '0100000005', to_date('01-02-2015 21:14:30', 'dd-mm-yyyy hh24:mi:ss'), 117, 'SF0100000005-201501', 19, 'ZYF', 117, 117, 'JF10K6666666-201502-03', 117, 117);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (182, 31, '0100000005', to_date('05-03-2015 14:00:51', 'dd-mm-yyyy hh24:mi:ss'), .32, 'SF0100000005-201501', 13, 'SY', .32, 0, 'JF0100000005-201503-16', 0, .32);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (16, 3, '0100000005', to_date('01-02-2015 21:09:54', 'dd-mm-yyyy hh24:mi:ss'), 124, 'SF0100000005-201501', 16, 'SH', 124, 124, 'JF10K6666666-201502-02', 124, 124);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (17, 3, '0100000005', to_date('01-02-2015 21:09:54', 'dd-mm-yyyy hh24:mi:ss'), 124, 'SF0100000005-201501', 17, 'LJF', 124, 124, 'JF10K6666666-201502-02', 124, 124);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (18, 3, '0100000005', to_date('01-02-2015 21:09:54', 'dd-mm-yyyy hh24:mi:ss'), 235, 'SF0100000005-201501', 18, 'WSF', 235, 235, 'JF10K6666666-201502-02', 235, 235);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (19, 3, '0100000005', to_date('01-02-2015 21:09:54', 'dd-mm-yyyy hh24:mi:ss'), 117, 'SF0100000005-201501', 19, 'ZYF', 117, 117, 'JF10K6666666-201502-02', 117, 117);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (20, 3, '0100000005', to_date('01-02-2015 21:09:54', 'dd-mm-yyyy hh24:mi:ss'), -1127, 'SF0100000005-201501', 20, 'SY', -1127, -1127, 'JF10K6666666-201502-02', -1127, -1127);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (27, 7, '0100000005', to_date('01-02-2015 21:47:17', 'dd-mm-yyyy hh24:mi:ss'), 3, 'SF0100000005-201501', 21, 'SH', 3, 3, 'JF10K6666666-201502-06', 3, 3);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (28, 8, '0100000005', to_date('01-02-2015 21:48:13', 'dd-mm-yyyy hh24:mi:ss'), 3, 'SF0100000005-201501', 21, 'SH', 3, 3, 'JF10K6666666-201502-07', 3, 3);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (41, 13, '0100000005', to_date('02-02-2015 15:31:14', 'dd-mm-yyyy hh24:mi:ss'), 5, 'SF0100000005-201501', 21, 'SH', 5, 5, 'JF10K6666666-201502-12', 5, 5);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (43, 15, '0100000005', to_date('02-02-2015 15:44:55', 'dd-mm-yyyy hh24:mi:ss'), 11, 'SF0100000005-201501', 21, 'SH', 11, 11, 'JF10K6666666-201502-14', 11, 11);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (83, 18, '0100000005', to_date('04-02-2015 17:27:54', 'dd-mm-yyyy hh24:mi:ss'), 26, 'SF0100000005-201501', 21, 'SH', 26, 0, 'JF10K6666666-201502-17', 0, 26);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (84, 19, '0100000005', to_date('04-02-2015 17:47:23', 'dd-mm-yyyy hh24:mi:ss'), 31, 'SF0100000005-201501', 21, 'SH', 31, 0, 'JF10K6666666-201502-18', 0, 31);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (85, 20, '0100000005', to_date('04-02-2015 17:48:43', 'dd-mm-yyyy hh24:mi:ss'), 36, 'SF0100000005-201501', 21, 'SH', 36, 0, 'JF10K6666666-201502-19', 0, 36);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (86, 21, '0100000005', to_date('04-02-2015 17:49:30', 'dd-mm-yyyy hh24:mi:ss'), 41, 'SF0100000005-201501', 21, 'SH', 41, 0, 'JF10K6666666-201502-20', 0, 41);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (101, 25, '0100000005', to_date('28-02-2015 15:27:16', 'dd-mm-yyyy hh24:mi:ss'), 61, 'SF0100000005-201501', 21, 'SH', 61, 0, 'JF10K6666666-201502-24', 0, 61);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (185, 33, '0100000005', to_date('05-03-2015 14:09:44', 'dd-mm-yyyy hh24:mi:ss'), 6.4, 'SF0100000005-201501', 12, 'SH', 6.4, 0, 'JF0100000005-201503-18', 0, 6.4);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (186, 33, '0100000005', to_date('05-03-2015 14:09:44', 'dd-mm-yyyy hh24:mi:ss'), .32, 'SF0100000005-201501', 13, 'SY', .32, 0, 'JF0100000005-201503-18', 0, .32);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (187, 34, '0100000005', to_date('05-03-2015 14:09:44', 'dd-mm-yyyy hh24:mi:ss'), 6.4, 'SF0100000005-201501', 12, 'SH', 6.4, 0, 'JF0100000005-201503-19', 0, 6.4);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (188, 34, '0100000005', to_date('05-03-2015 14:09:44', 'dd-mm-yyyy hh24:mi:ss'), .32, 'SF0100000005-201501', 13, 'SY', .32, 0, 'JF0100000005-201503-19', 0, .32);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (1, 2, '0100000005', to_date('01-02-2015 20:23:06', 'dd-mm-yyyy hh24:mi:ss'), 214, 'SF0100000005-201412', 11, 'SH', 214, 214, 'JF10K6666666-201502-01', 214, 214);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (2, 2, '0100000005', to_date('01-02-2015 20:23:06', 'dd-mm-yyyy hh24:mi:ss'), 1241, 'SF0100000005-201412', 12, 'LJF', 1241, 1241, 'JF10K6666666-201502-01', 1241, 1241);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (3, 2, '0100000005', to_date('01-02-2015 20:23:06', 'dd-mm-yyyy hh24:mi:ss'), 1421, 'SF0100000005-201412', 13, 'WSF', 1421, 1421, 'JF10K6666666-201502-01', 1421, 1421);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (4, 2, '0100000005', to_date('01-02-2015 20:23:06', 'dd-mm-yyyy hh24:mi:ss'), 241, 'SF0100000005-201412', 14, 'ZYF', 241, 241, 'JF10K6666666-201502-01', 241, 241);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (5, 2, '0100000005', to_date('01-02-2015 20:23:06', 'dd-mm-yyyy hh24:mi:ss'), 235, 'SF0100000005-201412', 15, 'SY', 235, 235, 'JF10K6666666-201502-01', 235, 235);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (25, 5, '0100000005', to_date('01-02-2015 21:31:15', 'dd-mm-yyyy hh24:mi:ss'), 4, 'SF0100000005-201501', 16, 'SH', 4, 4, 'JF10K6666666-201502-04', 4, 4);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (26, 6, '0100000005', to_date('01-02-2015 21:38:50', 'dd-mm-yyyy hh24:mi:ss'), 4, 'SF0100000005-201501', 16, 'SH', 4, 4, 'JF10K6666666-201502-05', 4, 4);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (32, 12, '0100000005', to_date('01-02-2015 22:08:40', 'dd-mm-yyyy hh24:mi:ss'), 5, 'SF0100000005-201501', 21, 'SH', 5, 5, 'JF10K6666666-201502-11', 5, 5);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (61, 17, '0100000005', to_date('03-02-2015 14:52:11', 'dd-mm-yyyy hh24:mi:ss'), 21, 'SF0100000005-201501', 21, 'SH', 21, 0, 'JF10K6666666-201502-16', 0, 21);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (87, 22, '0100000005', to_date('04-02-2015 17:51:23', 'dd-mm-yyyy hh24:mi:ss'), 46, 'SF0100000005-201501', 21, 'SH', 46, 0, 'JF10K6666666-201502-21', 0, 46);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (88, 23, '0100000005', to_date('04-02-2015 17:52:10', 'dd-mm-yyyy hh24:mi:ss'), 51, 'SF0100000005-201501', 21, 'SH', 51, 0, 'JF10K6666666-201502-22', 0, 51);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (89, 24, '0100000005', to_date('04-02-2015 17:53:15', 'dd-mm-yyyy hh24:mi:ss'), 56, 'SF0100000005-201501', 21, 'SH', 56, 0, 'JF10K6666666-201502-23', 0, 56);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (141, 29, '0100000005', to_date('02-03-2015 15:51:41', 'dd-mm-yyyy hh24:mi:ss'), 6.4, 'SF0100000005-201501', 12, 'SH', 6.4, 0, 'JF10K6666666-201503-14', 0, 6.4);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (142, 29, '0100000005', to_date('02-03-2015 15:51:43', 'dd-mm-yyyy hh24:mi:ss'), .32, 'SF0100000005-201501', 13, 'SY', .32, 0, 'JF10K6666666-201503-14', 0, .32);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (183, 32, '0100000005', to_date('05-03-2015 14:07:42', 'dd-mm-yyyy hh24:mi:ss'), 6.4, 'SF0100000005-201501', 12, 'SH', 6.4, 0, 'JF0100000005-201503-17', 0, 6.4);
insert into PY_BALANCEDETAIL (ID, PARENTID, USERNO, BALANCEDATE, BALANCEMONEY, BILLNO, BILLDETAILID, COSTTYPECODE, DETAILREALMONEY1, DETAILREALMONEY2, PAYNO, PAYUSEMONEY1, PAYUSEMONEY2)
values (184, 32, '0100000005', to_date('05-03-2015 14:07:42', 'dd-mm-yyyy hh24:mi:ss'), .32, 'SF0100000005-201501', 13, 'SY', .32, 0, 'JF0100000005-201503-17', 0, .32);
commit;
prompt 50 records loaded
prompt Loading PY_BILL...
insert into PY_BILL (BILLNO, READID, USERNO, CREATEDATE, BILLMONEY, REALMONEY, BALANCE, BALANCEDATE)
values ('SF0100000005-201410', 1, '0100000005', to_date('17-10-2014 15:34:22', 'dd-mm-yyyy hh24:mi:ss'), 600, 300, 0, to_date('17-11-2014 10:23:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into PY_BILL (BILLNO, READID, USERNO, CREATEDATE, BILLMONEY, REALMONEY, BALANCE, BALANCEDATE)
values ('SF0100000005-201411', 1, '0100000005', to_date('17-11-2014 15:34:22', 'dd-mm-yyyy hh24:mi:ss'), 600, 300, 0, to_date('17-12-2014 10:23:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into PY_BILL (BILLNO, READID, USERNO, CREATEDATE, BILLMONEY, REALMONEY, BALANCE, BALANCEDATE)
values ('SF0100000005-201412', 1, '0100000005', to_date('17-12-2014 15:34:22', 'dd-mm-yyyy hh24:mi:ss'), 600, 0, 0, to_date('01-02-2015 20:23:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into PY_BILL (BILLNO, READID, USERNO, CREATEDATE, BILLMONEY, REALMONEY, BALANCE, BALANCEDATE)
values ('SF0100000005-201501', 1, '0100000005', to_date('17-01-2015 15:34:22', 'dd-mm-yyyy hh24:mi:ss'), 600, 135, 1, to_date('05-03-2015 14:09:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into PY_BILL (BILLNO, READID, USERNO, CREATEDATE, BILLMONEY, REALMONEY, BALANCE, BALANCEDATE)
values ('SF0100000005-201407', 1, '0100000005', to_date('01-07-2014', 'dd-mm-yyyy'), 333, 333, 0, to_date('30-01-2015', 'dd-mm-yyyy'));
insert into PY_BILL (BILLNO, READID, USERNO, CREATEDATE, BILLMONEY, REALMONEY, BALANCE, BALANCEDATE)
values ('SF0100000005-201409', 1, '0100000005', to_date('01-09-2014', 'dd-mm-yyyy'), 222, 222, 0, to_date('30-01-2015', 'dd-mm-yyyy'));
insert into PY_BILL (BILLNO, READID, USERNO, CREATEDATE, BILLMONEY, REALMONEY, BALANCE, BALANCEDATE)
values ('SF0100000005-201408', 1, '0100000005', to_date('01-08-2014', 'dd-mm-yyyy'), 111, 111, 0, to_date('30-01-2015', 'dd-mm-yyyy'));
insert into PY_BILL (BILLNO, READID, USERNO, CREATEDATE, BILLMONEY, REALMONEY, BALANCE, BALANCEDATE)
values ('SF0100000005-201510', 1, '0100000005', to_date('17-10-2014 15:34:22', 'dd-mm-yyyy hh24:mi:ss'), 600, 300, 0, to_date('17-11-2014 10:23:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into PY_BILL (BILLNO, READID, USERNO, CREATEDATE, BILLMONEY, REALMONEY, BALANCE, BALANCEDATE)
values ('SF0100000005-201511', 1, '0100000005', to_date('17-11-2014 15:34:22', 'dd-mm-yyyy hh24:mi:ss'), 600, 300, 0, to_date('17-12-2014 10:23:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into PY_BILL (BILLNO, READID, USERNO, CREATEDATE, BILLMONEY, REALMONEY, BALANCE, BALANCEDATE)
values ('SF0100000005-201502', 1, '0100000005', to_date('02-03-2015 15:10:57', 'dd-mm-yyyy hh24:mi:ss'), 300, 300, 0, to_date('17-11-2014 10:23:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into PY_BILL (BILLNO, READID, USERNO, CREATEDATE, BILLMONEY, REALMONEY, BALANCE, BALANCEDATE)
values ('SF0100000005-201512', 1, '0100000005', to_date('02-03-2015 15:10:59', 'dd-mm-yyyy hh24:mi:ss'), 300, 300, 0, to_date('17-01-2015 10:23:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into PY_BILL (BILLNO, READID, USERNO, CREATEDATE, BILLMONEY, REALMONEY, BALANCE, BALANCEDATE)
values ('SF0100000005-201507', 1, '0100000005', to_date('02-03-2015 15:11:01', 'dd-mm-yyyy hh24:mi:ss'), 333, 333, 0, to_date('30-01-2015', 'dd-mm-yyyy'));
insert into PY_BILL (BILLNO, READID, USERNO, CREATEDATE, BILLMONEY, REALMONEY, BALANCE, BALANCEDATE)
values ('SF0100000005-201509', 1, '0100000005', to_date('02-03-2015 15:11:01', 'dd-mm-yyyy hh24:mi:ss'), 222, 222, 0, to_date('30-01-2015', 'dd-mm-yyyy'));
insert into PY_BILL (BILLNO, READID, USERNO, CREATEDATE, BILLMONEY, REALMONEY, BALANCE, BALANCEDATE)
values ('SF0100000005-201508', 1, '0100000005', to_date('02-03-2015 15:11:01', 'dd-mm-yyyy hh24:mi:ss'), 111, 111, 0, to_date('30-01-2015', 'dd-mm-yyyy'));
insert into PY_BILL (BILLNO, READID, USERNO, CREATEDATE, BILLMONEY, REALMONEY, BALANCE, BALANCEDATE)
values ('SF0100000987201503', 42, '0100000005', to_date('02-03-2015 11:54:50', 'dd-mm-yyyy hh24:mi:ss'), 47.19, 0, 0, null);
insert into PY_BILL (BILLNO, READID, USERNO, CREATEDATE, BILLMONEY, REALMONEY, BALANCE, BALANCEDATE)
values ('SF010000004201503', 4, '0100000005', to_date('02-03-2015 11:45:43', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, 0, null);
insert into PY_BILL (BILLNO, READID, USERNO, CREATEDATE, BILLMONEY, REALMONEY, BALANCE, BALANCEDATE)
values ('SF010000005201503', 5, '0100000005', to_date('02-03-2015 11:46:06', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, 0, null);
insert into PY_BILL (BILLNO, READID, USERNO, CREATEDATE, BILLMONEY, REALMONEY, BALANCE, BALANCEDATE)
values ('SF010000006201503', 6, '0100000005', to_date('02-03-2015 11:51:11', 'dd-mm-yyyy hh24:mi:ss'), 75.6, 0, 0, null);
insert into PY_BILL (BILLNO, READID, USERNO, CREATEDATE, BILLMONEY, REALMONEY, BALANCE, BALANCEDATE)
values ('SF0100003859201503', 41, '0100000005', to_date('02-03-2015 11:51:51', 'dd-mm-yyyy hh24:mi:ss'), 6.86, 0, 0, null);
commit;
prompt 19 records loaded
prompt Loading PY_BILLDETAIL...
insert into PY_BILLDETAIL (ID, BILLNO, USERNO, COSTTYPECODE, AMOUNT, PRICE, DETAILMONEY, REALMONEY, BALANCE, BALANCEDATE)
values (11, 'SF0100003859-201503', '0100003859', 'GY', .144, 1.47, .14, 0, 0, null);
insert into PY_BILLDETAIL (ID, BILLNO, USERNO, COSTTYPECODE, AMOUNT, PRICE, DETAILMONEY, REALMONEY, BALANCE, BALANCEDATE)
values (15, 'SF0100000987-201503', '0100000987', 'SH', 44, 1.69, 44, 0, 0, null);
insert into PY_BILLDETAIL (ID, BILLNO, USERNO, COSTTYPECODE, AMOUNT, PRICE, DETAILMONEY, REALMONEY, BALANCE, BALANCEDATE)
values (9, 'SF010000006-201503', '010000006', 'SY', 36, 2.41, 72, 0, 0, null);
insert into PY_BILLDETAIL (ID, BILLNO, USERNO, COSTTYPECODE, AMOUNT, PRICE, DETAILMONEY, REALMONEY, BALANCE, BALANCEDATE)
values (7, 'SF010000006-201503', '010000006', 'SY', 36, 2.41, 72, 0, 0, null);
insert into PY_BILLDETAIL (ID, BILLNO, USERNO, COSTTYPECODE, AMOUNT, PRICE, DETAILMONEY, REALMONEY, BALANCE, BALANCEDATE)
values (8, 'SF010000006-201503', '010000006', 'SY', 1.8, 2.41, 3.6, 0, 0, null);
insert into PY_BILLDETAIL (ID, BILLNO, USERNO, COSTTYPECODE, AMOUNT, PRICE, DETAILMONEY, REALMONEY, BALANCE, BALANCEDATE)
values (10, 'SF010000006-201503', '010000006', 'SY', 1.8, 2.41, 3.6, 0, 0, null);
insert into PY_BILLDETAIL (ID, BILLNO, USERNO, COSTTYPECODE, AMOUNT, PRICE, DETAILMONEY, REALMONEY, BALANCE, BALANCEDATE)
values (12, 'SF0100000005-201501', '0100000005', 'SH', 6.4, 1.69, 6.4, 631.4, 0, to_date('05-03-2015 14:09:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into PY_BILLDETAIL (ID, BILLNO, USERNO, COSTTYPECODE, AMOUNT, PRICE, DETAILMONEY, REALMONEY, BALANCE, BALANCEDATE)
values (13, 'SF0100000005-201501', '0100000005', 'SY', .15999999999999998, 2.41, .32, 593.32, 0, to_date('05-03-2015 14:09:44', 'dd-mm-yyyy hh24:mi:ss'));
insert into PY_BILLDETAIL (ID, BILLNO, USERNO, COSTTYPECODE, AMOUNT, PRICE, DETAILMONEY, REALMONEY, BALANCE, BALANCEDATE)
values (14, 'SF0100000987-201502', '0100000987', 'GY', .9900000000000001, 1.47, .99, 0, 0, null);
insert into PY_BILLDETAIL (ID, BILLNO, USERNO, COSTTYPECODE, AMOUNT, PRICE, DETAILMONEY, REALMONEY, BALANCE, BALANCEDATE)
values (16, 'SF0100000987-201502', '0100000987', 'SY', 1.1, 2.41, 2.2, 0, 0, null);
commit;
prompt 10 records loaded
prompt Loading PY_PAY...
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201501-02', '0100000005', '����', to_date('24-01-2015 09:58:54', 'dd-mm-yyyy hh24:mi:ss'), '07382991', 600, 0, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201501-01', '0100000005', '���д���', to_date('24-01-2015 10:02:28', 'dd-mm-yyyy hh24:mi:ss'), '10000001', 600, 0, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201501-03', '0100000005', '����', to_date('31-01-2015 21:47:46', 'dd-mm-yyyy hh24:mi:ss'), '10000002', 600, 600, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201502-25', '0100000005', '����', to_date('28-02-2015 16:09:22', 'dd-mm-yyyy hh24:mi:ss'), '10000023-01', 2, 2, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201502-08', '0100000005', '����', to_date('01-02-2015 21:57:58', 'dd-mm-yyyy hh24:mi:ss'), '10000012', 5, 5, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201502-9', '0100000005', '����', to_date('01-02-2015 22:03:26', 'dd-mm-yyyy hh24:mi:ss'), '10000013', 5, 5, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201502-03', '0100000005', '����', to_date('01-02-2015 21:14:30', 'dd-mm-yyyy hh24:mi:ss'), '10000008', 2, 2, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201502-10', '0100000005', '����', to_date('01-02-2015 22:04:16', 'dd-mm-yyyy hh24:mi:ss'), '10000014', 5, 5, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201502-13', '0100000005', '����', to_date('02-02-2015 15:36:51', 'dd-mm-yyyy hh24:mi:ss'), '10000017', 5, 5, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201502-15', '0100000005', '����', to_date('02-02-2015 16:01:13', 'dd-mm-yyyy hh24:mi:ss'), '10000019', 5, 5, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201503-12', '0100000005', '����', to_date('01-03-2015 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), '10000024', 2, 2, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201503-13', '0100000005', '����', to_date('01-03-2015 17:13:44', 'dd-mm-yyyy hh24:mi:ss'), '10000024', 2, 2, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201503-15', '0100000005', '����', to_date('04-03-2015 11:10:03', 'dd-mm-yyyy hh24:mi:ss'), null, 5, 5, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201503-16', '0100000005', '����', to_date('05-03-2015 14:00:51', 'dd-mm-yyyy hh24:mi:ss'), '34899920', 5, 5, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201502-02', '0100000005', '����', to_date('01-02-2015 21:09:54', 'dd-mm-yyyy hh24:mi:ss'), '10000007', 2, 2, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201502-06', '0100000005', '����', to_date('01-02-2015 21:47:17', 'dd-mm-yyyy hh24:mi:ss'), '10000011', 3, 3, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201502-07', '0100000005', '����', to_date('01-02-2015 21:48:13', 'dd-mm-yyyy hh24:mi:ss'), '10000011', 3, 3, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201502-12', '0100000005', '����', to_date('02-02-2015 15:31:14', 'dd-mm-yyyy hh24:mi:ss'), '10000016', 5, 5, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201502-14', '0100000005', '����', to_date('02-02-2015 15:44:55', 'dd-mm-yyyy hh24:mi:ss'), '10000018', 5, 5, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201502-17', '0100000005', '����', to_date('04-02-2015 17:27:54', 'dd-mm-yyyy hh24:mi:ss'), '10000021-01', 5, 5, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201502-18', '0100000005', '����', to_date('04-02-2015 17:47:23', 'dd-mm-yyyy hh24:mi:ss'), '10000023-01', 5, 5, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201502-19', '0100000005', '����', to_date('04-02-2015 17:48:43', 'dd-mm-yyyy hh24:mi:ss'), '10000024-01', 5, 5, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201502-20', '0100000005', '����', to_date('04-02-2015 17:49:30', 'dd-mm-yyyy hh24:mi:ss'), '10000025-01', 5, 5, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201502-24', '0100000005', '����', to_date('28-02-2015 15:27:17', 'dd-mm-yyyy hh24:mi:ss'), '10000021', 5, 5, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000987-201401-02', '0100000987', '����', to_date('01-03-2014', 'dd-mm-yyyy'), '07382991', 100.23, 40, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100003859-201401-01', '0100003859', '���д���', to_date('01-12-2014 10:02:28', 'dd-mm-yyyy hh24:mi:ss'), '07382992', 200, 20, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100043900-201312-01', '0100043900', '����', to_date('24-03-2015 10:02:28', 'dd-mm-yyyy hh24:mi:ss'), '43859032', 130, 30, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100008834-201311-01', '0100008834', '����', to_date('24-03-2015 10:03:41', 'dd-mm-yyyy hh24:mi:ss'), '34899912', 320, 10, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000987-201411-02', '0100000987', '����', to_date('01-11-2014', 'dd-mm-yyyy'), '07382991', 444, 33, 3);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000987-20148-02', '0100000987', '����', to_date('01-08-2014', 'dd-mm-yyyy'), '07382992', 33, 33, 2);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000987-20149-02', '0100000987', '����', to_date('01-09-2014', 'dd-mm-yyyy'), '07382991', 100, 100, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000987-201410-02', '0100000987', '����', to_date('01-10-2014', 'dd-mm-yyyy'), '07382991', 100, 100, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000987-20147-02', '0100000987', '����', to_date('01-07-2014', 'dd-mm-yyyy'), '07382991', 100, 100, 2);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000987-201502-02', '0100000987', '����', to_date('02-03-2015 15:14:28', 'dd-mm-yyyy hh24:mi:ss'), '07382991', 100.23, 40, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0200003859-202502-02', '0200003859', '���д���', to_date('02-03-2015 15:14:28', 'dd-mm-yyyy hh24:mi:ss'), '07382992', 200, 20, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-202312-02', '0100000005', '����', to_date('02-03-2015 15:14:28', 'dd-mm-yyyy hh24:mi:ss'), '43859032', 130, 30, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-202311-02', '0100000005', '����', to_date('02-03-2015 15:14:28', 'dd-mm-yyyy hh24:mi:ss'), '34899912', 320, 10, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-202511-02', '0100000005', '����', to_date('02-03-2015 15:14:28', 'dd-mm-yyyy hh24:mi:ss'), '07382991', 444, 33, 3);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-20258-02', '0100000005', '����', to_date('02-03-2015 15:14:28', 'dd-mm-yyyy hh24:mi:ss'), '07382992', 33, 33, 2);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-20259-02', '0100000005', '����', to_date('02-03-2015 15:14:28', 'dd-mm-yyyy hh24:mi:ss'), '07382991', 100, 100, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-202510-02', '0100000005', '����', to_date('02-03-2015 15:14:28', 'dd-mm-yyyy hh24:mi:ss'), '07382991', 100, 100, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-20257-02', '0100000005', '����', to_date('02-03-2015 15:14:28', 'dd-mm-yyyy hh24:mi:ss'), '07382991', 100, 100, 2);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201501-04', '0100000005', '���д���', to_date('24-01-2015 10:02:28', 'dd-mm-yyyy hh24:mi:ss'), '07382992', 600, 0, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201501-05', '0100000005', '���д���', to_date('28-01-2015 10:02:28', 'dd-mm-yyyy hh24:mi:ss'), '07382992', 600, 0, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201501-06', '0100000005', '���д���', to_date('26-01-2015 10:02:28', 'dd-mm-yyyy hh24:mi:ss'), '07382992', 600, 0, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201503-18', '0100000005', '����', to_date('05-03-2015 14:09:44', 'dd-mm-yyyy hh24:mi:ss'), '34899918-01', 5, 5, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201503-19', '0100000005', '����', to_date('05-03-2015 14:09:44', 'dd-mm-yyyy hh24:mi:ss'), '34899918-02', 5, 5, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201502-01', '0100000005', '����', to_date('01-02-2015 20:23:06', 'dd-mm-yyyy hh24:mi:ss'), '10000003', 600, 600, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201502-04', '0100000005', '����', to_date('01-02-2015 21:31:15', 'dd-mm-yyyy hh24:mi:ss'), '10000009', 4, 4, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201502-05', '0100000005', '����', to_date('01-02-2015 21:38:50', 'dd-mm-yyyy hh24:mi:ss'), '10000010', 4, 4, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201502-11', '0100000005', '����', to_date('01-02-2015 22:08:40', 'dd-mm-yyyy hh24:mi:ss'), '10000015', 5, 5, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201502-16', '0100000005', '����', to_date('03-02-2015 14:52:11', 'dd-mm-yyyy hh24:mi:ss'), '10000022', 5, 5, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201502-21', '0100000005', '����', to_date('04-02-2015 17:51:23', 'dd-mm-yyyy hh24:mi:ss'), '10000026-01', 5, 5, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201502-22', '0100000005', '����', to_date('04-02-2015 17:52:10', 'dd-mm-yyyy hh24:mi:ss'), '10000027-01', 5, 5, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201502-23', '0100000005', '����', to_date('04-02-2015 17:53:15', 'dd-mm-yyyy hh24:mi:ss'), '10000028-01', 5, 5, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201503-14', '0100000005', '����', to_date('02-03-2015 15:51:43', 'dd-mm-yyyy hh24:mi:ss'), '10000025', 4, 4, 1);
insert into PY_PAY (PAYNO, USERNO, PAYTYPE, PAYDATE, INVOICE, PAYMONEY, USEMONEY, EMPID)
values ('JF0100000005-201503-17', '0100000005', '����', to_date('05-03-2015 14:07:42', 'dd-mm-yyyy hh24:mi:ss'), '34899919', 5, 5, 1);
commit;
prompt 57 records loaded
prompt Loading PY_SUMREPORT...
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (6, 0, 2014, 1, 1, '������ˮ', '3341', '1.34', '44780.42', '17.74');
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (7, 0, 2014, 1, 1, '��ҵ��ˮ', '1410', '1.34', '44780.42', '17.74');
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (8, 0, 2014, 1, 1, '������ˮ', '125', '1.34', '44780.42', '17.74');
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (9, 0, 2014, 1, 1, '�����ˮ', '90', '1.34', '44780.42', '17.74');
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (10, 0, 2014, 1, 1, '������ˮ', '10613', '1.34', '143263.42', '56.76');
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (648, 1, 2015, 3, 0, '������ˮ', '288��', '2.14Ԫ/��', '214Ԫ', '54.3%');
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (649, 1, 2015, 3, 0, '��ҵ��ˮ', '242��', '2.41Ԫ/��', '124Ԫ', '45.6%');
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (502, 0, 2013, 9, 2, '������', 'NaN%', '��ͣ�û�����', '4��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (503, 0, 2013, 9, 2, '����ˮ����ˮ��', 'null��', '���³���ˮ��', 'null��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (504, 0, 2013, 9, 2, '������', '100%', null, null, null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (584, 0, 2014, 11, 4, '�ϼ�ˮ��', '23��', '�ϼ�ˮ��', '2351Ԫ', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (650, 1, 2015, 0, 4, '�ϼ�ˮ��', '530��', '�ϼ�ˮ��', '338Ԫ', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (651, 1, 2015, 0, 4, '�����ۺ�ˮ��', '1.56Ԫ/��', null, null, '<br/>');
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (585, 0, 2014, 11, 4, '�����ۺ�ˮ��', '0.00Ԫ/��', null, null, '<br/>');
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (586, 0, 2014, 11, 1, '��Դ��', '124Ԫ', null, null, null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (587, 0, 2014, 11, 1, '�۷�ˮ', '2423Ԫ', null, null, null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (652, 1, 2015, 0, 1, '��Դ��', '1244Ԫ', null, null, null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (653, 1, 2015, 0, 1, '�۷�ˮ', '235Ԫ', null, null, null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (654, 1, 2015, 0, 1, '������', '124Ԫ', '��Ӧ��', '124Ԫ', '<br/>');
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (655, 1, 2015, 0, 2, '����Ӧ������', '11��', '����ʵ������', '10��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (656, 1, 2015, 0, 2, '������', '90.9%', '��ͣ�û�����', '4��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (657, 1, 2015, 0, 2, '����ˮ����ˮ��', '220��', '���³���ˮ��', '220��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (588, 0, 2014, 11, 1, '������', '214Ԫ', '��Ӧ��', '214Ԫ', '<br/>');
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (589, 0, 2014, 11, 2, '����Ӧ������', '6��', '����ʵ������', '6��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (590, 0, 2014, 11, 2, '������', '100.%', '��ͣ�û�����', '4��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (591, 0, 2014, 11, 2, '����ˮ����ˮ��', '1352��', '���³���ˮ��', '1352��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (660, 1, 2014, 0, 4, '�ϼ�ˮ��', '323��', '�ϼ�ˮ��', '2590.68Ԫ', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (661, 1, 2014, 0, 4, '�����ۺ�ˮ��', '0.12Ԫ/��', null, null, '<br/>');
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (662, 1, 2014, 0, 1, '��Դ��', '600Ԫ', null, null, null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (663, 1, 2014, 0, 1, '�۷�ˮ', '4079Ԫ', null, null, null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (664, 1, 2014, 0, 1, '������', '1479Ԫ', '��Ӧ��', '1479Ԫ', '<br/>');
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (665, 1, 2014, 0, 2, '����Ӧ������', '25��', '����ʵ������', '25��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (666, 1, 2014, 0, 2, '������', '100.%', '��ͣ�û�����', '4��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (667, 1, 2014, 0, 2, '����ˮ����ˮ��', '6610��', '���³���ˮ��', '6610��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (668, 1, 2014, 0, 2, '������', '100%', null, null, null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (486, 0, 2013, 10, 2, '����Ӧ������', '0��', '����ʵ������', '0��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (487, 0, 2013, 10, 2, '������', 'NaN%', '��ͣ�û�����', '4��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (488, 0, 2013, 10, 2, '����ˮ����ˮ��', 'null��', '���³���ˮ��', 'null��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (489, 0, 2013, 10, 2, '������', '100%', null, null, null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (478, 0, 2013, 12, 2, '����Ӧ������', '0��', '����ʵ������', '0��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (479, 0, 2013, 12, 2, '������', 'NaN%', '��ͣ�û�����', '4��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (480, 0, 2013, 12, 2, '����ˮ����ˮ��', 'null��', '���³���ˮ��', 'null��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (481, 0, 2013, 12, 2, '������', '100%', null, null, null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (592, 0, 2014, 11, 2, '������', '100%', null, null, null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (658, 1, 2015, 0, 2, '������', '100%', null, null, null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (659, 1, 2014, 0, 0, '������ˮ', '323��', '2.14Ԫ/��', '2590.68Ԫ', '100.%');
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (543, 0, 2014, 3, 2, '����Ӧ������', '0��', '����ʵ������', '0��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (501, 0, 2013, 9, 2, '����Ӧ������', '0��', '����ʵ������', '0��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (544, 0, 2014, 3, 2, '������', 'NaN%', '��ͣ�û�����', '4��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (545, 0, 2014, 3, 2, '����ˮ����ˮ��', 'null��', '���³���ˮ��', 'null��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (546, 0, 2014, 3, 2, '������', '100%', null, null, null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (559, 0, 2014, 12, 4, '�ϼ�ˮ��', '288��', '�ϼ�ˮ��', '214Ԫ', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (560, 0, 2014, 12, 4, '�����ۺ�ˮ��', '1.34Ԫ/��', null, null, '<br/>');
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (561, 0, 2014, 12, 1, '��Դ��', '241Ԫ', null, null, null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (562, 0, 2014, 12, 1, '�۷�ˮ', '1421Ԫ', null, null, null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (563, 0, 2014, 12, 1, '������', '1241Ԫ', '��Ӧ��', '1241Ԫ', '<br/>');
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (564, 0, 2014, 12, 2, '����Ӧ������', '12��', '����ʵ������', '12��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (565, 0, 2014, 12, 2, '������', '100.%', '��ͣ�û�����', '4��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (566, 0, 2014, 12, 2, '����ˮ����ˮ��', '5104��', '���³���ˮ��', '5104��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (567, 0, 2014, 12, 2, '������', '100%', null, null, null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (579, 0, 2015, 1, 2, '����Ӧ������', '2��', '����ʵ������', '2��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (580, 0, 2015, 1, 2, '������', '100.%', '��ͣ�û�����', '4��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (581, 0, 2015, 1, 2, '����ˮ����ˮ��', '44��', '���³���ˮ��', '44��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (582, 0, 2015, 1, 2, '������', '100%', null, null, null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (90, 0, 2015, 3, 0, '��ҵ��ˮ', '0.144��', '7Ԫ/��', '0.14Ԫ', '0.12%');
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (91, 0, 2015, 3, 0, '��ҵ��ˮ', '75.6��', '6Ԫ/��', '151.2Ԫ', '63.1%');
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (92, 0, 2015, 3, 0, '������ˮ', '44��', '6Ԫ/��', '44Ԫ', '36.7%');
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (93, 0, 2015, 3, 4, '�ϼ�ˮ��', '119.744��', '�ϼ�ˮ��', '195.34Ԫ', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (94, 0, 2015, 3, 4, '�����ۺ�ˮ��', '0.61Ԫ/��', null, null, '<br/>');
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (95, 0, 2015, 3, 2, '����Ӧ������', '11��', '����ʵ������', '7��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (96, 0, 2015, 3, 2, '������', '63.6%', '��ͣ�û�����', '7��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (97, 0, 2015, 3, 2, '����ˮ����ˮ��', '209��', '���³���ˮ��', '209��', null);
insert into PY_SUMREPORT (ID, TYPEE, REPORTYEAR, REPORTMONTH, LINENO, C1, C2, C3, C4, C5)
values (98, 0, 2015, 3, 2, '������', '100%', null, null, null);
commit;
prompt 73 records loaded
prompt Loading PY_USERHISTORY...
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (102, '0100000005', 1, 'JF0100000005-201502-25', to_date('28-02-2015 16:09:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 2, -498);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (31, '0100000005', 1, 'JF0100000005-201502-08', to_date('01-02-2015 21:57:58', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 5, -580);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (32, '0100000005', 1, 'JF0100000005-201502-9', to_date('01-02-2015 22:03:26', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 5, -575);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (26, '0100000005', 1, 'JF0100000005-201502-03', to_date('01-02-2015 21:14:30', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 2, -596);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (33, '0100000005', 1, 'JF0100000005-201502-10', to_date('01-02-2015 22:04:16', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 5, -570);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (42, '0100000005', 1, 'JF0100000005-201502-13', to_date('02-02-2015 15:36:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 5, -555);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (44, '0100000005', 1, 'JF0100000005-201502-15', to_date('02-02-2015 16:01:13', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 5, -545);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (121, '0100000005', 1, 'JF0100000005-201503-12', to_date('01-03-2015 15:13:55', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 2, -496);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (122, '0100000005', 1, 'JF0100000005-201503-13', to_date('01-03-2015 17:13:44', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 2, -496);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (161, '0100000005', 1, 'JF0100000005-201503-15', to_date('04-03-2015 11:10:03', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 5, -487);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (181, '0100000005', 1, 'JF0100000005-201503-16', to_date('05-03-2015 14:00:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 5, -482);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (25, '0100000005', 1, 'JF0100000005-201502-02', to_date('01-02-2015 21:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 2, -598);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (29, '0100000005', 1, 'JF0100000005-201502-06', to_date('01-02-2015 21:47:17', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 3, -585);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (30, '0100000005', 1, 'JF0100000005-201502-07', to_date('01-02-2015 21:48:13', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 3, -585);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (41, '0100000005', 1, 'JF0100000005-201502-12', to_date('02-02-2015 15:31:14', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 5, -560);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (43, '0100000005', 1, 'JF0100000005-201502-14', to_date('02-02-2015 15:44:55', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 5, -550);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (81, '0100000005', 1, 'JF0100000005-201502-17', to_date('04-02-2015 17:27:55', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 5, -535);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (82, '0100000005', 1, 'JF0100000005-201502-18', to_date('04-02-2015 17:47:23', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 5, -530);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (83, '0100000005', 1, 'JF0100000005-201502-19', to_date('04-02-2015 17:48:43', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 5, -525);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (84, '0100000005', 1, 'JF0100000005-201502-20', to_date('04-02-2015 17:49:30', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 5, -520);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (101, '0100000005', 1, 'JF0100000005-201502-24', to_date('28-02-2015 15:27:17', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 5, -500);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (183, '0100000005', 1, 'JF0100000005-201503-18', to_date('05-03-2015 14:09:44', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 5, -472);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (184, '0100000005', 1, 'JF0100000005-201503-19', to_date('05-03-2015 14:09:44', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 5, -472);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (21, '0100000005', 1, 'JF0100000005-201502-01', to_date('01-02-2015 20:23:07', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 600, -600);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (27, '0100000005', 1, 'JF0100000005-201502-04', to_date('01-02-2015 21:31:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 4, -592);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (28, '0100000005', 1, 'JF0100000005-201502-05', to_date('01-02-2015 21:38:50', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 4, -588);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (34, '0100000005', 1, 'JF0100000005-201502-11', to_date('01-02-2015 22:08:40', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 5, -565);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (61, '0100000005', 1, 'JF0100000005-201502-16', to_date('03-02-2015 14:52:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 5, -540);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (85, '0100000005', 1, 'JF0100000005-201502-21', to_date('04-02-2015 17:51:23', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 5, -515);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (86, '0100000005', 1, 'JF0100000005-201502-22', to_date('04-02-2015 17:52:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 5, -510);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (87, '0100000005', 1, 'JF0100000005-201502-23', to_date('04-02-2015 17:53:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 5, -505);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (141, '0100000005', 1, 'JF0100000005-201503-14', to_date('02-03-2015 15:51:43', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 4, -492);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (162, '0100000011', 1, 'JF0100000011-201501-01', to_date('30-01-2015', 'dd-mm-yyyy'), null, null, null, null, 7, -7);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (182, '0100000005', 1, 'JF0100000005-201503-17', to_date('05-03-2015 14:07:42', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 5, -477);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (1, '0100000005', 0, 'SF0100000005-201410', to_date('01-01-2014', 'dd-mm-yyyy'), 0, 600, 600, 600, null, -600);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (2, '0100000005', 0, 'SF0100000005-201411', to_date('01-02-2014', 'dd-mm-yyyy'), 600, 1200, 600, 600, null, -1200);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (3, '0100000005', 0, 'SF0100000005-201412', to_date('01-03-2014', 'dd-mm-yyyy'), 1200, 1800, 600, 600, null, -1800);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (4, '0100000005', 0, 'SF0100000005-201501', to_date('01-05-2014', 'dd-mm-yyyy'), 1800, 2400, 600, 600, null, -2400);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (8, '0100000005', 1, 'JF0100000005-201501-02', to_date('30-01-2015', 'dd-mm-yyyy'), 600, 1200, 600, null, 600, -1800);
insert into PY_USERHISTORY (ID, USERNO, TYPEE, ORDERNO, DATEE, PREVALUE, CURVALUE, AMOUNT, BILLMONEY, PAYMONEY, USERMONEY)
values (9, '0100000005', 1, 'JF0100000005-201501-01', to_date('30-01-2015', 'dd-mm-yyyy'), 3000, 3600, 600, null, 600, -1200);
commit;
prompt 40 records loaded
prompt Loading RD_CHANGEMAXVALUE...
insert into RD_CHANGEMAXVALUE (ID, DATEE, EMPID, USERNO, METERNO, MAXVALUE1, MAXVALUE2, REMARK)
values (1, to_date('02-03-2015 10:52:29', 'dd-mm-yyyy hh24:mi:ss'), 11, '010000004', '010000004', 999, 9999, null);
insert into RD_CHANGEMAXVALUE (ID, DATEE, EMPID, USERNO, METERNO, MAXVALUE1, MAXVALUE2, REMARK)
values (21, to_date('02-02-2015 17:17:41', 'dd-mm-yyyy hh24:mi:ss'), 0, '0100000005', '0001', 999, 9999, '����ʵ�����û���������ֵ��9999');
insert into RD_CHANGEMAXVALUE (ID, DATEE, EMPID, USERNO, METERNO, MAXVALUE1, MAXVALUE2, REMARK)
values (22, to_date('02-02-2015 17:18:08', 'dd-mm-yyyy hh24:mi:ss'), 1, '0100000006', '0001', 999, 9999, '����ʵ�����û���������ֵ��9999');
insert into RD_CHANGEMAXVALUE (ID, DATEE, EMPID, USERNO, METERNO, MAXVALUE1, MAXVALUE2, REMARK)
values (23, to_date('02-02-2015 17:18:15', 'dd-mm-yyyy hh24:mi:ss'), 2, '0100000007', '0001', 999, 9999, '����ʵ�����û���������ֵ��9999');
insert into RD_CHANGEMAXVALUE (ID, DATEE, EMPID, USERNO, METERNO, MAXVALUE1, MAXVALUE2, REMARK)
values (24, to_date('02-02-2015 17:18:21', 'dd-mm-yyyy hh24:mi:ss'), 1, '0100000008', '0001', 999, 9999, '����ʵ�����û���������ֵ��9999');
insert into RD_CHANGEMAXVALUE (ID, DATEE, EMPID, USERNO, METERNO, MAXVALUE1, MAXVALUE2, REMARK)
values (25, to_date('02-02-2015 17:18:27', 'dd-mm-yyyy hh24:mi:ss'), 3, '0100000009', '0001', 999, 9999, '����ʵ�����û���������ֵ��9999');
insert into RD_CHANGEMAXVALUE (ID, DATEE, EMPID, USERNO, METERNO, MAXVALUE1, MAXVALUE2, REMARK)
values (26, to_date('02-02-2015 17:18:39', 'dd-mm-yyyy hh24:mi:ss'), 1, '0100000010', '0001', 999, 9999, '����ʵ�����û���������ֵ��9999');
insert into RD_CHANGEMAXVALUE (ID, DATEE, EMPID, USERNO, METERNO, MAXVALUE1, MAXVALUE2, REMARK)
values (27, to_date('02-02-2015 17:18:46', 'dd-mm-yyyy hh24:mi:ss'), 4, '0100000011', '0001', 999, 9999, '����ʵ�����û���������ֵ��9999');
insert into RD_CHANGEMAXVALUE (ID, DATEE, EMPID, USERNO, METERNO, MAXVALUE1, MAXVALUE2, REMARK)
values (28, to_date('02-02-2015 17:18:54', 'dd-mm-yyyy hh24:mi:ss'), 2, '0100000012', '0001', 999, 9999, '����ʵ�����û���������ֵ��9999');
insert into RD_CHANGEMAXVALUE (ID, DATEE, EMPID, USERNO, METERNO, MAXVALUE1, MAXVALUE2, REMARK)
values (29, to_date('02-02-2015 17:19:01', 'dd-mm-yyyy hh24:mi:ss'), 6, '0100000013', '0001', 999, 9999, '����ʵ�����û���������ֵ��9999');
insert into RD_CHANGEMAXVALUE (ID, DATEE, EMPID, USERNO, METERNO, MAXVALUE1, MAXVALUE2, REMARK)
values (30, to_date('02-02-2015 17:19:08', 'dd-mm-yyyy hh24:mi:ss'), 1, '0100000014', '0001', 999, 9999, '����ʵ�����û���������ֵ��9999');
insert into RD_CHANGEMAXVALUE (ID, DATEE, EMPID, USERNO, METERNO, MAXVALUE1, MAXVALUE2, REMARK)
values (31, to_date('02-02-2015 17:19:16', 'dd-mm-yyyy hh24:mi:ss'), 7, '0100000015', '0001', 999, 9999, '����ʵ�����û���������ֵ��9999');
insert into RD_CHANGEMAXVALUE (ID, DATEE, EMPID, USERNO, METERNO, MAXVALUE1, MAXVALUE2, REMARK)
values (3, to_date('27-01-2015', 'dd-mm-yyyy'), 2, '0100000001', '0002', 9999, 99999, '����ʵ�����û���������ֵ��99999');
insert into RD_CHANGEMAXVALUE (ID, DATEE, EMPID, USERNO, METERNO, MAXVALUE1, MAXVALUE2, REMARK)
values (4, to_date('27-01-2015', 'dd-mm-yyyy'), 3, '0100000002', '0003', 999, 9999, '����ʵ�����û���������ֵ��9999');
insert into RD_CHANGEMAXVALUE (ID, DATEE, EMPID, USERNO, METERNO, MAXVALUE1, MAXVALUE2, REMARK)
values (5, to_date('27-01-2015', 'dd-mm-yyyy'), 4, '0100000003', '0004', 999, 9999, '����ʵ�����û���������ֵ��9999');
insert into RD_CHANGEMAXVALUE (ID, DATEE, EMPID, USERNO, METERNO, MAXVALUE1, MAXVALUE2, REMARK)
values (6, to_date('27-01-2015 10:43:10', 'dd-mm-yyyy hh24:mi:ss'), 5, '0100000004', '0005', 9999, 99999, '����ʵ�����û���������ֵ��99999');
insert into RD_CHANGEMAXVALUE (ID, DATEE, EMPID, USERNO, METERNO, MAXVALUE1, MAXVALUE2, REMARK)
values (41, to_date('03-02-2015 14:09:22', 'dd-mm-yyyy hh24:mi:ss'), 8, '0100000988', '0001', 999, 9999, '����ʵ�����û���������ֵ��9999');
insert into RD_CHANGEMAXVALUE (ID, DATEE, EMPID, USERNO, METERNO, MAXVALUE1, MAXVALUE2, REMARK)
values (2, to_date('02-03-2015 11:54:39', 'dd-mm-yyyy hh24:mi:ss'), 1, '010000005', '010000005', 999, 99999, null);
commit;
prompt 18 records loaded
prompt Loading RD_CHANGEVALUE...
insert into RD_CHANGEVALUE (ID, DATEE, EMPID, USERNO, PREVALUE1, PREVALUE2, REMARK)
values (3, to_date('27-01-2015 16:30:39', 'dd-mm-yyyy hh24:mi:ss'), 2, '0100000988', 98, 108, '����ʵ�����û��ĵ�������108');
insert into RD_CHANGEVALUE (ID, DATEE, EMPID, USERNO, PREVALUE1, PREVALUE2, REMARK)
values (21, to_date('03-02-2015 14:52:44', 'dd-mm-yyyy hh24:mi:ss'), 1, '0100000001', 20, 108, '����ʵ�����û��ĵ�������108');
insert into RD_CHANGEVALUE (ID, DATEE, EMPID, USERNO, PREVALUE1, PREVALUE2, REMARK)
values (22, to_date('03-02-2015 14:54:07', 'dd-mm-yyyy hh24:mi:ss'), 2, '0100000002', 20, 108, '����ʵ�����û��ĵ�������108');
insert into RD_CHANGEVALUE (ID, DATEE, EMPID, USERNO, PREVALUE1, PREVALUE2, REMARK)
values (23, to_date('03-02-2015 14:54:17', 'dd-mm-yyyy hh24:mi:ss'), 3, '0100000003', 20, 108, '����ʵ�����û��ĵ�������108');
insert into RD_CHANGEVALUE (ID, DATEE, EMPID, USERNO, PREVALUE1, PREVALUE2, REMARK)
values (24, to_date('03-02-2015 14:54:49', 'dd-mm-yyyy hh24:mi:ss'), 4, '0100000004', 20, 108, '����ʵ�����û��ĵ�������108');
insert into RD_CHANGEVALUE (ID, DATEE, EMPID, USERNO, PREVALUE1, PREVALUE2, REMARK)
values (25, to_date('03-02-2015 14:55:01', 'dd-mm-yyyy hh24:mi:ss'), 5, '0100000005', 20, 108, '����ʵ�����û��ĵ�������108');
insert into RD_CHANGEVALUE (ID, DATEE, EMPID, USERNO, PREVALUE1, PREVALUE2, REMARK)
values (26, to_date('03-02-2015 14:55:15', 'dd-mm-yyyy hh24:mi:ss'), 1, '0100000006', 20, 108, '����ʵ�����û��ĵ�������108');
insert into RD_CHANGEVALUE (ID, DATEE, EMPID, USERNO, PREVALUE1, PREVALUE2, REMARK)
values (27, to_date('03-02-2015 14:55:23', 'dd-mm-yyyy hh24:mi:ss'), 2, '0100000007', 20, 108, '����ʵ�����û��ĵ�������108');
insert into RD_CHANGEVALUE (ID, DATEE, EMPID, USERNO, PREVALUE1, PREVALUE2, REMARK)
values (28, to_date('03-02-2015 14:55:30', 'dd-mm-yyyy hh24:mi:ss'), 3, '0100000008', 20, 108, '����ʵ�����û��ĵ�������108');
insert into RD_CHANGEVALUE (ID, DATEE, EMPID, USERNO, PREVALUE1, PREVALUE2, REMARK)
values (29, to_date('03-02-2015 14:55:38', 'dd-mm-yyyy hh24:mi:ss'), 2, '0100000009', 20, 108, '����ʵ�����û��ĵ�������108');
insert into RD_CHANGEVALUE (ID, DATEE, EMPID, USERNO, PREVALUE1, PREVALUE2, REMARK)
values (30, to_date('03-02-2015 14:55:48', 'dd-mm-yyyy hh24:mi:ss'), 4, '0100000010', 20, 108, '����ʵ�����û��ĵ�������108');
insert into RD_CHANGEVALUE (ID, DATEE, EMPID, USERNO, PREVALUE1, PREVALUE2, REMARK)
values (31, to_date('03-02-2015 14:55:52', 'dd-mm-yyyy hh24:mi:ss'), 1, '0100000011', 20, 108, '����ʵ�����û��ĵ�������108');
insert into RD_CHANGEVALUE (ID, DATEE, EMPID, USERNO, PREVALUE1, PREVALUE2, REMARK)
values (32, to_date('03-02-2015 14:55:55', 'dd-mm-yyyy hh24:mi:ss'), 5, '0100000012', 20, 108, '����ʵ�����û��ĵ�������108');
insert into RD_CHANGEVALUE (ID, DATEE, EMPID, USERNO, PREVALUE1, PREVALUE2, REMARK)
values (33, to_date('03-02-2015 14:55:58', 'dd-mm-yyyy hh24:mi:ss'), 4, '0100000013', 20, 108, '����ʵ�����û��ĵ�������108');
insert into RD_CHANGEVALUE (ID, DATEE, EMPID, USERNO, PREVALUE1, PREVALUE2, REMARK)
values (34, to_date('03-02-2015 14:56:01', 'dd-mm-yyyy hh24:mi:ss'), 5, '0100000014', 20, 108, '����ʵ�����û��ĵ�������108');
insert into RD_CHANGEVALUE (ID, DATEE, EMPID, USERNO, PREVALUE1, PREVALUE2, REMARK)
values (35, to_date('03-02-2015 14:56:03', 'dd-mm-yyyy hh24:mi:ss'), 4, '0100000015', 20, 108, '����ʵ�����û��ĵ�������108');
insert into RD_CHANGEVALUE (ID, DATEE, EMPID, USERNO, PREVALUE1, PREVALUE2, REMARK)
values (2, to_date('02-03-2015 11:54:24', 'dd-mm-yyyy hh24:mi:ss'), 1, '010000005', 100, 90, null);
insert into RD_CHANGEVALUE (ID, DATEE, EMPID, USERNO, PREVALUE1, PREVALUE2, REMARK)
values (1, to_date('02-03-2015 10:52:18', 'dd-mm-yyyy hh24:mi:ss'), 1, '010000004', 100, 777, null);
commit;
prompt 18 records loaded
prompt Loading RD_READ...
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (4, 2015, 1, '010000004', '010000004', 9999, 1, 1, 1, null, 777, 1, 131, 0, 31, '[SH:80%][SY:10%][GY:10%]', 1, null, null);
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (5, 2015, 1, '0100000005', '010000005', 99999, 1, 1, 1, null, 90, 1, 141, 0, 41, '[GY:100%]', 1, null, null);
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (6, 2015, 1, '010000006', '010000006', 999, 1, 1, 1, null, 100, 1, 145, 0, 45, '[SY:80%][SY:20%]', 1, null, null);
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (41, 2015, 2, '0100003859', 'M0100003859-01', 9999, 1, 1, 3, to_date('04-03-2015 15:27:44', 'dd-mm-yyyy hh24:mi:ss'), 23, 1, 31, 0, 0, '[SH:80%][SY:10%][GY:10%]', 1, 1, to_date('27-10-2014 10:50:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (42, 2015, 2, '0100000987', 'M0100000987-01', 9999, 1, 1, 3, to_date('04-03-2015 15:27:44', 'dd-mm-yyyy hh24:mi:ss'), 23, 1, 78, 0, 55, '[SH:80%][SY:10%][GY:10%]', 1, 1, to_date('27-10-2014 10:51:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (43, 2014, 2, '0100000987', 'M0100000987-01', 9999, 1, 1, 3, to_date('04-03-2015 15:27:44', 'dd-mm-yyyy hh24:mi:ss'), 23, 1, 45, 0, 22, '[SH:80%][SY:10%][GY:10%]', 0, 1, to_date('27-10-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (44, 2014, 2, '0100003859', 'M0100003859-01', 9999, 1, 1, 3, to_date('04-03-2015 15:27:44', 'dd-mm-yyyy hh24:mi:ss'), 23, 1, 23, 0, 0, '[SH:80%][SY:10%][GY:10%]', 0, 1, to_date('27-10-2014 10:50:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (45, 2014, 2, '0100000987', 'M0100000987-01', 9999, 1, 1, 3, to_date('04-03-2015 15:27:44', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 22, '[SH:80%][SY:10%][GY:10%]', 0, 1, to_date('27-10-2014 10:51:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (46, 2014, 2, '0100000987', 'M0100000987-01', 9999, 1, 1, 3, to_date('04-03-2015 15:27:44', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 22, '[SH:80%][SY:10%][GY:10%]', 0, 1, to_date('27-10-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (47, 2015, 2, '0100003859', 'M0100003859-01', 9999, 1, 1, 3, to_date('27-10-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 22, '[SH:80%][SY:10%][GY:10%]', 0, 1, to_date('27-10-2014 10:50:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (48, 2015, 2, '0100000987', 'M0100000987-01', 9999, 1, 1, 3, to_date('27-10-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 22, '[SH:80%][SY:10%][GY:10%]', 0, 1, to_date('27-10-2014 10:51:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (49, 2014, 2, '0100000987', 'M0100000987-01', 9999, 1, 1, 3, to_date('27-10-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 22, '[SH:80%][SY:10%][GY:10%]', 0, 1, to_date('27-10-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (50, 2014, 2, '0100003859', 'M0100003859-01', 9999, 1, 1, 3, to_date('27-10-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 22, '[SH:80%][SY:10%][GY:10%]', 1, 1, to_date('27-10-2014 10:50:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (51, 2014, 2, '0100000987', 'M0100000987-01', 9999, 1, 1, 3, to_date('27-10-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 22, '[SH:80%][SY:10%][GY:10%]', 0, 1, to_date('27-10-2014 10:51:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (52, 2014, 2, '0100000987', 'M0100000987-01', 9999, 1, 1, 3, to_date('27-10-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 22, '[SH:80%][SY:10%][GY:10%]', 1, 1, to_date('27-10-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (53, 2015, 2, '0100003859', 'M0100003859-01', 9999, 1, 1, 3, to_date('27-11-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 232, '[SH:80%][SY:10%][GY:10%]', 1, 1, to_date('27-10-2014 10:50:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (54, 2015, 2, '0100000987', 'M0100000987-01', 9999, 1, 1, 3, to_date('27-11-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 224, '[SH:80%][SY:10%][GY:10%]', 0, 1, to_date('27-10-2014 10:51:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (55, 2014, 2, '0100000987', 'M0100000987-01', 9999, 1, 1, 3, to_date('27-11-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 224, '[SH:80%][SY:10%][GY:10%]', 0, 1, to_date('27-10-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (56, 2014, 2, '0100003859', 'M0100003859-01', 9999, 1, 1, 3, to_date('27-11-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 224, '[SH:80%][SY:10%][GY:10%]', 0, 1, to_date('27-10-2014 10:50:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (57, 2014, 2, '0100000987', 'M0100000987-01', 9999, 1, 1, 3, to_date('27-11-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 224, '[SH:80%][SY:10%][GY:10%]', 0, 1, to_date('27-10-2014 10:51:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (58, 2014, 2, '0100000987', 'M0100000987-01', 9999, 1, 1, 3, to_date('27-11-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 224, '[SH:80%][SY:10%][GY:10%]', 0, 1, to_date('27-10-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (59, 2015, 2, '0100003859', 'M0100003859-01', 9999, 1, 1, 3, to_date('27-12-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 432, '[SH:80%][SY:10%][GY:10%]', 0, 1, to_date('27-10-2014 10:50:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (60, 2015, 2, '0100000987', 'M0100000987-01', 9999, 1, 1, 3, to_date('27-12-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 424, '[SH:80%][SY:10%][GY:10%]', 0, 1, to_date('27-10-2014 10:51:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (61, 2014, 2, '0100000987', 'M0100000987-01', 9999, 1, 1, 3, to_date('27-12-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 424, '[SH:80%][SY:10%][GY:10%]', 0, 1, to_date('27-10-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (62, 2014, 2, '0100003859', 'M0100003859-01', 9999, 1, 1, 3, to_date('27-12-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 424, '[SH:80%][SY:10%][GY:10%]', 0, 1, to_date('27-10-2014 10:50:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (63, 2014, 2, '0100000987', 'M0100000987-01', 9999, 1, 1, 3, to_date('27-12-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 424, '[SH:80%][SY:10%][GY:10%]', 0, 1, to_date('27-10-2014 10:51:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (64, 2014, 2, '0100000987', 'M0100000987-01', 9999, 1, 1, 3, to_date('27-12-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 424, '[SH:80%][SY:10%][GY:10%]', 0, 1, to_date('27-10-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (65, 2015, 2, '0100003859', 'M0100003859-01', 9999, 1, 1, 3, to_date('27-12-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 432, '[SH:80%][SY:10%][GY:10%]', 1, 1, to_date('27-10-2014 10:50:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (66, 2015, 2, '0100000987', 'M0100000987-01', 9999, 1, 1, 3, to_date('27-12-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 424, '[SH:80%][SY:10%][GY:10%]', 1, 1, to_date('27-10-2014 10:51:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (67, 2014, 2, '0100000987', 'M0100000987-01', 9999, 1, 1, 3, to_date('27-12-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 424, '[SH:80%][SY:10%][GY:10%]', 1, 1, to_date('27-10-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (68, 2014, 2, '0100003859', 'M0100003859-01', 9999, 1, 1, 3, to_date('27-12-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 424, '[SH:80%][SY:10%][GY:10%]', 1, 1, to_date('27-10-2014 10:50:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (69, 2014, 2, '0100000987', 'M0100000987-01', 9999, 1, 1, 3, to_date('27-12-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 424, '[SH:80%][SY:10%][GY:10%]', 1, 1, to_date('27-10-2014 10:51:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (70, 2014, 2, '0100000987', 'M0100000987-01', 9999, 1, 1, 3, to_date('27-12-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 424, '[SH:80%][SY:10%][GY:10%]', 1, 1, to_date('27-10-2014 10:51:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (1, 2014, 12, '0100003859', 'M0100003859-01', 9999, 1, 1, 3, to_date('01-03-2014 10:50:55', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 22, '[SH:80%][SY:10%][GY:10%]', 0, 1, to_date('27-01-2015 10:50:55', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (2, 2014, 12, '0100000987', 'M0100000987-01', 9999, 1, 1, 3, to_date('27-03-2015 10:51:30', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 22, '[SH:80%][SY:10%][GY:10%]', 0, 1, to_date('27-01-2015 10:51:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (3, 2014, 12, '0100000987', 'M0100000987-01', 9999, 1, 1, 3, to_date('27-03-2015 10:51:38', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 22, '[SH:80%][SY:10%][GY:10%]', 0, 1, to_date('27-01-2015 10:51:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (21, 2015, 2, '0100003859', 'M0100003859-01', 9999, 1, 1, 3, to_date('02-03-2015 15:09:19', 'dd-mm-yyyy hh24:mi:ss'), 23, 1, 45, 0, null, '[SH:80%][SY:10%][GY:10%]', 1, null, null);
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (22, 2015, 2, '0100000987', 'M0100000987-01', 9999, 1, 1, 3, to_date('02-03-2015 15:09:19', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 22, '[SH:80%][SY:10%][GY:10%]', 0, 1, to_date('27-01-2015 10:51:30', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_READ (ID, READYEAR, READMONTH, USERNO, METERNO, MAXVALUE, VOLUMEID, VOLUMEINDEX, READEMPID, READDATE, PREVALUE, ENTER, CURVALUE, DIAL, AMOUNT, FORMULA, AUDITT, AUDITEMPID, AUDITDATE)
values (23, 2015, 2, '0100000987', 'M0100000987-01', 9999, 1, 1, 3, to_date('02-03-2015 15:09:19', 'dd-mm-yyyy hh24:mi:ss'), 23, 0, 45, 0, 22, '[SH:80%][SY:10%][GY:10%]', 0, 1, to_date('27-01-2015 10:51:38', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 39 records loaded
prompt Loading RD_READTYPES...
insert into RD_READTYPES (ID, READID, USERNO, WATERTYPECODE, ALLOTTEXT, AMOUNT)
values (21, 43, '0100000987', 'SH', '80%', 17.6);
insert into RD_READTYPES (ID, READID, USERNO, WATERTYPECODE, ALLOTTEXT, AMOUNT)
values (22, 43, '0100000987', 'SY', '10%', .4399999999999999);
insert into RD_READTYPES (ID, READID, USERNO, WATERTYPECODE, ALLOTTEXT, AMOUNT)
values (23, 43, '0100000987', 'GY', '10%', .3959999999999999);
insert into RD_READTYPES (ID, READID, USERNO, WATERTYPECODE, ALLOTTEXT, AMOUNT)
values (48, 44, '0100003859', 'SY', '10%', 0);
insert into RD_READTYPES (ID, READID, USERNO, WATERTYPECODE, ALLOTTEXT, AMOUNT)
values (49, 44, '0100003859', 'GY', '10%', 0);
insert into RD_READTYPES (ID, READID, USERNO, WATERTYPECODE, ALLOTTEXT, AMOUNT)
values (16, 42, '0100000987', 'GY', '10%', .9900000000000001);
insert into RD_READTYPES (ID, READID, USERNO, WATERTYPECODE, ALLOTTEXT, AMOUNT)
values (47, 44, '0100003859', 'SH', '80%', 0);
insert into RD_READTYPES (ID, READID, USERNO, WATERTYPECODE, ALLOTTEXT, AMOUNT)
values (3, 6, '010000006', 'SY', '80%', 36);
insert into RD_READTYPES (ID, READID, USERNO, WATERTYPECODE, ALLOTTEXT, AMOUNT)
values (10, 41, '0100003859', 'GY', '10%', .144);
insert into RD_READTYPES (ID, READID, USERNO, WATERTYPECODE, ALLOTTEXT, AMOUNT)
values (8, 41, '0100003859', 'SH', '80%', 6.4);
insert into RD_READTYPES (ID, READID, USERNO, WATERTYPECODE, ALLOTTEXT, AMOUNT)
values (9, 41, '0100003859', 'SY', '10%', .15999999999999998);
insert into RD_READTYPES (ID, READID, USERNO, WATERTYPECODE, ALLOTTEXT, AMOUNT)
values (14, 42, '0100000987', 'SH', '80%', 44);
insert into RD_READTYPES (ID, READID, USERNO, WATERTYPECODE, ALLOTTEXT, AMOUNT)
values (15, 42, '0100000987', 'SY', '10%', 1.1);
insert into RD_READTYPES (ID, READID, USERNO, WATERTYPECODE, ALLOTTEXT, AMOUNT)
values (4, 6, '010000006', 'SY', '20%', 1.8);
commit;
prompt 14 records loaded
prompt Loading RD_TASK...
insert into RD_TASK (ID, READYEAR, READMONTH, VOLUMEID, EMPID)
values (7, 2015, 1, 7, 11);
insert into RD_TASK (ID, READYEAR, READMONTH, VOLUMEID, EMPID)
values (8, 2015, 1, 8, 5);
insert into RD_TASK (ID, READYEAR, READMONTH, VOLUMEID, EMPID)
values (9, 2015, 1, 9, 5);
insert into RD_TASK (ID, READYEAR, READMONTH, VOLUMEID, EMPID)
values (1, 2015, 1, 1, 11);
insert into RD_TASK (ID, READYEAR, READMONTH, VOLUMEID, EMPID)
values (2, 2014, 12, 2, 2);
insert into RD_TASK (ID, READYEAR, READMONTH, VOLUMEID, EMPID)
values (3, 2014, 12, 5, 3);
insert into RD_TASK (ID, READYEAR, READMONTH, VOLUMEID, EMPID)
values (4, 2014, 12, 3, 4);
insert into RD_TASK (ID, READYEAR, READMONTH, VOLUMEID, EMPID)
values (5, 2014, 12, 6, 5);
insert into RD_TASK (ID, READYEAR, READMONTH, VOLUMEID, EMPID)
values (6, 2014, 12, 4, 5);
commit;
prompt 9 records loaded
prompt Loading RD_VOLUME...
insert into RD_VOLUME (ID, VOLUMENAME, AREAID, ORDERINDEX, REMARK, DISABLED)
values (6, '����#2', 3, 2, null, 0);
insert into RD_VOLUME (ID, VOLUMENAME, AREAID, ORDERINDEX, REMARK, DISABLED)
values (7, '�Ǳ�#1', 4, 1, null, 0);
insert into RD_VOLUME (ID, VOLUMENAME, AREAID, ORDERINDEX, REMARK, DISABLED)
values (8, '�Ǳ�#2', 4, 2, null, 0);
insert into RD_VOLUME (ID, VOLUMENAME, AREAID, ORDERINDEX, REMARK, DISABLED)
values (9, '����#1', 5, 1, null, 0);
insert into RD_VOLUME (ID, VOLUMENAME, AREAID, ORDERINDEX, REMARK, DISABLED)
values (3, '����2', 2, 2, '��ע', 0);
insert into RD_VOLUME (ID, VOLUMENAME, AREAID, ORDERINDEX, REMARK, DISABLED)
values (4, '�Ǳ�2', 1, 1, '��ע', 0);
insert into RD_VOLUME (ID, VOLUMENAME, AREAID, ORDERINDEX, REMARK, DISABLED)
values (5, '�Ǳ�1', 3, 3, '��ע', 0);
insert into RD_VOLUME (ID, VOLUMENAME, AREAID, ORDERINDEX, REMARK, DISABLED)
values (1, 'wzz', 1, 1, '1', 0);
insert into RD_VOLUME (ID, VOLUMENAME, AREAID, ORDERINDEX, REMARK, DISABLED)
values (2, 'er', 1, 1, '1', 1);
commit;
prompt 9 records loaded
prompt Loading RD_YEARMONTH...
insert into RD_YEARMONTH (ID, READYEAR, READMONTH, ISCURRENT, INITEMPID, INITDATE, ENDDATE)
values (6, 2012, 2, 1, 1, to_date('01-03-2015 16:40:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2015 16:44:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_YEARMONTH (ID, READYEAR, READMONTH, ISCURRENT, INITEMPID, INITDATE, ENDDATE)
values (7, 2012, 3, 1, 0, to_date('01-03-2015 16:44:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2015 16:44:19', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_YEARMONTH (ID, READYEAR, READMONTH, ISCURRENT, INITEMPID, INITDATE, ENDDATE)
values (8, 2012, 4, 1, 0, to_date('01-03-2015 16:44:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2015 16:44:21', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_YEARMONTH (ID, READYEAR, READMONTH, ISCURRENT, INITEMPID, INITDATE, ENDDATE)
values (9, 2012, 5, 1, 0, to_date('01-03-2015 16:44:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2015 16:44:24', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_YEARMONTH (ID, READYEAR, READMONTH, ISCURRENT, INITEMPID, INITDATE, ENDDATE)
values (10, 2012, 6, 1, 0, to_date('01-03-2015 16:44:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2015 16:44:26', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_YEARMONTH (ID, READYEAR, READMONTH, ISCURRENT, INITEMPID, INITDATE, ENDDATE)
values (11, 2012, 7, 1, 0, to_date('01-03-2015 16:44:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2015 16:44:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_YEARMONTH (ID, READYEAR, READMONTH, ISCURRENT, INITEMPID, INITDATE, ENDDATE)
values (12, 2012, 8, 1, 0, to_date('01-03-2015 16:44:29', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2015 16:44:31', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_YEARMONTH (ID, READYEAR, READMONTH, ISCURRENT, INITEMPID, INITDATE, ENDDATE)
values (13, 2012, 9, 1, 0, to_date('01-03-2015 16:44:31', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2015 16:44:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_YEARMONTH (ID, READYEAR, READMONTH, ISCURRENT, INITEMPID, INITDATE, ENDDATE)
values (14, 2012, 10, 1, 0, to_date('01-03-2015 16:44:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2015 16:44:36', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_YEARMONTH (ID, READYEAR, READMONTH, ISCURRENT, INITEMPID, INITDATE, ENDDATE)
values (15, 2012, 11, 1, 0, to_date('01-03-2015 16:44:36', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2015 16:44:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_YEARMONTH (ID, READYEAR, READMONTH, ISCURRENT, INITEMPID, INITDATE, ENDDATE)
values (16, 2012, 12, 1, 0, to_date('01-03-2015 16:44:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-03-2015 16:44:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_YEARMONTH (ID, READYEAR, READMONTH, ISCURRENT, INITEMPID, INITDATE, ENDDATE)
values (17, 2013, 1, 1, 0, to_date('01-03-2015 16:44:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-03-2015 21:03:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_YEARMONTH (ID, READYEAR, READMONTH, ISCURRENT, INITEMPID, INITDATE, ENDDATE)
values (42, 2013, 4, 0, 0, to_date('05-03-2015 11:39:42', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into RD_YEARMONTH (ID, READYEAR, READMONTH, ISCURRENT, INITEMPID, INITDATE, ENDDATE)
values (41, 2013, 3, 1, 0, to_date('05-03-2015 11:37:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-03-2015 11:39:42', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_YEARMONTH (ID, READYEAR, READMONTH, ISCURRENT, INITEMPID, INITDATE, ENDDATE)
values (21, 2013, 2, 1, 0, to_date('02-03-2015 21:03:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-03-2015 11:37:06', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_YEARMONTH (ID, READYEAR, READMONTH, ISCURRENT, INITEMPID, INITDATE, ENDDATE)
values (1, 2012, 1, 1, 1, to_date('07-09-2009', 'dd-mm-yyyy'), to_date('01-03-2015 16:40:17', 'dd-mm-yyyy hh24:mi:ss'));
insert into RD_YEARMONTH (ID, READYEAR, READMONTH, ISCURRENT, INITEMPID, INITDATE, ENDDATE)
values (2, 2011, 2, 1, 1, to_date('03-09-2009', 'dd-mm-yyyy'), to_date('07-09-2011', 'dd-mm-yyyy'));
insert into RD_YEARMONTH (ID, READYEAR, READMONTH, ISCURRENT, INITEMPID, INITDATE, ENDDATE)
values (3, 2011, 3, 1, 2, to_date('04-09-2006', 'dd-mm-yyyy'), to_date('07-09-2011', 'dd-mm-yyyy'));
insert into RD_YEARMONTH (ID, READYEAR, READMONTH, ISCURRENT, INITEMPID, INITDATE, ENDDATE)
values (4, 2011, 4, 1, 2, to_date('20-09-2005', 'dd-mm-yyyy'), to_date('07-09-2011', 'dd-mm-yyyy'));
insert into RD_YEARMONTH (ID, READYEAR, READMONTH, ISCURRENT, INITEMPID, INITDATE, ENDDATE)
values (5, 2011, 5, 1, 4, to_date('12-09-2004', 'dd-mm-yyyy'), to_date('07-09-2011', 'dd-mm-yyyy'));
commit;
prompt 20 records loaded
prompt Loading SY_AREA...
insert into SY_AREA (ID, AREANAME, REMARK, DISABLED)
values (21, 'qwwweew', 'rtdyfyfgyfyy', 1);
insert into SY_AREA (ID, AREANAME, REMARK, DISABLED)
values (41, '��ɳ��´��', '�����Ǹ��õط���', 1);
insert into SY_AREA (ID, AREANAME, REMARK, DISABLED)
values (1, '�Ƕ���1', '11', 0);
insert into SY_AREA (ID, AREANAME, REMARK, DISABLED)
values (2, '������', null, 0);
insert into SY_AREA (ID, AREANAME, REMARK, DISABLED)
values (3, '������', null, 0);
insert into SY_AREA (ID, AREANAME, REMARK, DISABLED)
values (4, '�Ǳ���', null, 0);
insert into SY_AREA (ID, AREANAME, REMARK, DISABLED)
values (5, '�¿�����', null, 0);
insert into SY_AREA (ID, AREANAME, REMARK, DISABLED)
values (6, '�ɳ���', null, 0);
insert into SY_AREA (ID, AREANAME, REMARK, DISABLED)
values (7, '�ر��̻�', null, 0);
insert into SY_AREA (ID, AREANAME, REMARK, DISABLED)
values (8, '�Ƕ���', '����·���Զ�', 0);
insert into SY_AREA (ID, AREANAME, REMARK, DISABLED)
values (9, '������', '�ĺϴ�������', 0);
insert into SY_AREA (ID, AREANAME, REMARK, DISABLED)
values (11, '�Ǳ���', '�������Ա�', 0);
insert into SY_AREA (ID, AREANAME, REMARK, DISABLED)
values (12, '�¿�����', '���鿪����', 0);
insert into SY_AREA (ID, AREANAME, REMARK, DISABLED)
values (13, '�ɳ���', '�����ɳ���������', 0);
insert into SY_AREA (ID, AREANAME, REMARK, DISABLED)
values (14, '�ر��̻�', '��Ҫ���������������ˮ������', 0);
insert into SY_AREA (ID, AREANAME, REMARK, DISABLED)
values (10, '��ɳ', '��ɳ', 0);
insert into SY_AREA (ID, AREANAME, REMARK, DISABLED)
values (61, 'qwq', 'wqwqwqss', 1);
commit;
prompt 17 records loaded
prompt Loading SY_COSTTYPE...
insert into SY_COSTTYPE (ID, KIND, CODE, COSTTYPENAME, FULLNAME, PRICE, SURCHARGETEXT, REMARK, DISABLED)
values (1, 0, 'SY', '��ҵ��ˮ', null, 6, null, null, 0);
insert into SY_COSTTYPE (ID, KIND, CODE, COSTTYPENAME, FULLNAME, PRICE, SURCHARGETEXT, REMARK, DISABLED)
values (2, 0, 'GY', '��ҵ��ˮ', null, 7, null, null, 0);
insert into SY_COSTTYPE (ID, KIND, CODE, COSTTYPENAME, FULLNAME, PRICE, SURCHARGETEXT, REMARK, DISABLED)
values (3, 0, 'XZ', '������ˮ', null, 8, null, null, 0);
insert into SY_COSTTYPE (ID, KIND, CODE, COSTTYPENAME, FULLNAME, PRICE, SURCHARGETEXT, REMARK, DISABLED)
values (4, 0, 'JQ', '������ˮ', null, 9, null, null, 0);
insert into SY_COSTTYPE (ID, KIND, CODE, COSTTYPENAME, FULLNAME, PRICE, SURCHARGETEXT, REMARK, DISABLED)
values (5, 0, 'TZ', '������ˮ', null, 10, null, null, 0);
insert into SY_COSTTYPE (ID, KIND, CODE, COSTTYPENAME, FULLNAME, PRICE, SURCHARGETEXT, REMARK, DISABLED)
values (11, 0, 'SH', '������ˮ', null, 6, null, null, 0);
insert into SY_COSTTYPE (ID, KIND, CODE, COSTTYPENAME, FULLNAME, PRICE, SURCHARGETEXT, REMARK, DISABLED)
values (82, 1, 'QQQ', 'dsad', 'sds', 1.22, '��ҵ��ˮ,��ҵ��ˮ,������ˮ,������ˮ,', 'dsadas', 0);
insert into SY_COSTTYPE (ID, KIND, CODE, COSTTYPENAME, FULLNAME, PRICE, SURCHARGETEXT, REMARK, DISABLED)
values (27, 0, 'TZ', 'qqq', '������', 6.77, null, null, 0);
insert into SY_COSTTYPE (ID, KIND, CODE, COSTTYPENAME, FULLNAME, PRICE, SURCHARGETEXT, REMARK, DISABLED)
values (28, 1, 'LJF', '������', '�����������������', 1.11, '��ҵ��ˮ,��ҵ��ˮ,������ˮ,������ˮ,', 'dasd', 1);
insert into SY_COSTTYPE (ID, KIND, CODE, COSTTYPENAME, FULLNAME, PRICE, SURCHARGETEXT, REMARK, DISABLED)
values (29, 1, 'WSF', '��ˮ��', '��ˮ�����', .8, '������ˮ����ҵ��ˮ����ҵ��ˮ��������ˮ��������ˮ��������ˮ', null, 0);
insert into SY_COSTTYPE (ID, KIND, CODE, COSTTYPENAME, FULLNAME, PRICE, SURCHARGETEXT, REMARK, DISABLED)
values (30, 1, 'ZYF', '��Դ��', '����Ȼˮ��Դ��', .02, '������ˮ����ҵ��ˮ����ҵ��ˮ��������ˮ��������ˮ��������ˮ', null, 0);
insert into SY_COSTTYPE (ID, KIND, CODE, COSTTYPENAME, FULLNAME, PRICE, SURCHARGETEXT, REMARK, DISABLED)
values (42, 1, 'QQQ', 'qqqq', 'www', 1.99, '������ˮ,��ҵ��ˮ,��ҵ��ˮ,������ˮ,������ˮ,', 'fdgg', 1);
insert into SY_COSTTYPE (ID, KIND, CODE, COSTTYPENAME, FULLNAME, PRICE, SURCHARGETEXT, REMARK, DISABLED)
values (61, 0, 'YY', 'YY', null, 1.2, null, 'sdgfvsd', 0);
insert into SY_COSTTYPE (ID, KIND, CODE, COSTTYPENAME, FULLNAME, PRICE, SURCHARGETEXT, REMARK, DISABLED)
values (81, 0, 'AA', 'sasass', null, 1.22, null, 'dasdassas', 1);
insert into SY_COSTTYPE (ID, KIND, CODE, COSTTYPENAME, FULLNAME, PRICE, SURCHARGETEXT, REMARK, DISABLED)
values (41, 0, 'QQ', 'sss', null, 1.99, null, 'weivg', 1);
commit;
prompt 15 records loaded
prompt Loading SY_DEPT...
insert into SY_DEPT (ID, DEPTNAME, REMARK, DISABLED)
values (18, 'aaaaa', 'b', 1);
insert into SY_DEPT (ID, DEPTNAME, REMARK, DISABLED)
values (1, 'ϵͳ����Ա', null, 0);
insert into SY_DEPT (ID, DEPTNAME, REMARK, DISABLED)
values (2, '������', null, 0);
insert into SY_DEPT (ID, DEPTNAME, REMARK, DISABLED)
values (3, '������', null, 0);
insert into SY_DEPT (ID, DEPTNAME, REMARK, DISABLED)
values (4, '������', null, 0);
insert into SY_DEPT (ID, DEPTNAME, REMARK, DISABLED)
values (5, '�շ���', null, 0);
insert into SY_DEPT (ID, DEPTNAME, REMARK, DISABLED)
values (6, '�����', null, 0);
insert into SY_DEPT (ID, DEPTNAME, REMARK, DISABLED)
values (7, '�����', null, 0);
insert into SY_DEPT (ID, DEPTNAME, REMARK, DISABLED)
values (8, '��װ��', null, 0);
commit;
prompt 9 records loaded
prompt Loading SY_EMP...
insert into SY_EMP (ID, EMPNAME, EMPNO, PWD, DEPTID, REMARK, DISABLED)
values (21, 'x000', 'aaaaa', 'admin', 1, 'aaaaaaa', 1);
insert into SY_EMP (ID, EMPNAME, EMPNO, PWD, DEPTID, REMARK, DISABLED)
values (23, 'oyt', '999', 'admin', 5, null, null);
insert into SY_EMP (ID, EMPNAME, EMPNO, PWD, DEPTID, REMARK, DISABLED)
values (11, '����', '10010', '1001', 6, null, 0);
insert into SY_EMP (ID, EMPNAME, EMPNO, PWD, DEPTID, REMARK, DISABLED)
values (0, '������', 'x000', 'admin', 1, null, 0);
insert into SY_EMP (ID, EMPNAME, EMPNO, PWD, DEPTID, REMARK, DISABLED)
values (1, '����', 'x001', 'zhangsan', 3, null, 0);
insert into SY_EMP (ID, EMPNAME, EMPNO, PWD, DEPTID, REMARK, DISABLED)
values (2, '����', 'x002', 'lisi', 3, null, 0);
insert into SY_EMP (ID, EMPNAME, EMPNO, PWD, DEPTID, REMARK, DISABLED)
values (3, '����', 'x003', 'wangwu', 2, null, 0);
insert into SY_EMP (ID, EMPNAME, EMPNO, PWD, DEPTID, REMARK, DISABLED)
values (4, '����', 'x004', 'zhaoliu', 5, null, 0);
insert into SY_EMP (ID, EMPNAME, EMPNO, PWD, DEPTID, REMARK, DISABLED)
values (5, '����', 'x005', 'tianqi', 3, null, 0);
insert into SY_EMP (ID, EMPNAME, EMPNO, PWD, DEPTID, REMARK, DISABLED)
values (6, '���', 'x006', 'sunba', 5, null, 0);
insert into SY_EMP (ID, EMPNAME, EMPNO, PWD, DEPTID, REMARK, DISABLED)
values (7, '�ξ�', 'x007', 'hejiu', 3, null, 0);
insert into SY_EMP (ID, EMPNAME, EMPNO, PWD, DEPTID, REMARK, DISABLED)
values (8, '��ʮ', 'x008', 'bushi', 5, null, 0);
insert into SY_EMP (ID, EMPNAME, EMPNO, PWD, DEPTID, REMARK, DISABLED)
values (9, 'ʮһ��', 'x009', 'shiyilang', 5, null, 0);
insert into SY_EMP (ID, EMPNAME, EMPNO, PWD, DEPTID, REMARK, DISABLED)
values (22, 'x0000', 'aaaaa', 'admin', 8, 'asd', 1);
commit;
prompt 14 records loaded
prompt Loading SY_EMPAREAPOWER...
insert into SY_EMPAREAPOWER (ID, EMPID, AREAID)
values (4, 4, 5);
insert into SY_EMPAREAPOWER (ID, EMPID, AREAID)
values (5, 6, 6);
insert into SY_EMPAREAPOWER (ID, EMPID, AREAID)
values (32, 2, 1);
insert into SY_EMPAREAPOWER (ID, EMPID, AREAID)
values (33, 2, 2);
insert into SY_EMPAREAPOWER (ID, EMPID, AREAID)
values (34, 2, 3);
insert into SY_EMPAREAPOWER (ID, EMPID, AREAID)
values (35, 2, 4);
insert into SY_EMPAREAPOWER (ID, EMPID, AREAID)
values (36, 3, 1);
insert into SY_EMPAREAPOWER (ID, EMPID, AREAID)
values (37, 3, 2);
insert into SY_EMPAREAPOWER (ID, EMPID, AREAID)
values (38, 3, 3);
insert into SY_EMPAREAPOWER (ID, EMPID, AREAID)
values (39, 3, 4);
insert into SY_EMPAREAPOWER (ID, EMPID, AREAID)
values (40, 1, 1);
insert into SY_EMPAREAPOWER (ID, EMPID, AREAID)
values (41, 1, 2);
insert into SY_EMPAREAPOWER (ID, EMPID, AREAID)
values (42, 1, 3);
insert into SY_EMPAREAPOWER (ID, EMPID, AREAID)
values (43, 1, 4);
commit;
prompt 14 records loaded
prompt Loading SY_EMPMENUPOWER...
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (135, 2, 1);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (136, 2, 2);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (137, 2, 3);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (138, 2, 4);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (139, 2, 5);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (140, 2, 6);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (141, 2, 7);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (142, 2, 8);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (143, 2, 9);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (144, 3, 1);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (145, 3, 2);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (146, 3, 3);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (147, 3, 4);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (148, 3, 5);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (149, 3, 6);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (150, 3, 7);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (151, 3, 8);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (152, 3, 9);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (153, 4, 1);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (154, 4, 2);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (155, 4, 3);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (156, 4, 4);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (157, 4, 5);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (158, 4, 6);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (159, 4, 7);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (160, 4, 8);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (161, 4, 9);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (121, 1, 1);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (122, 1, 2);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (123, 1, 3);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (124, 1, 4);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (125, 1, 5);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (126, 1, 6);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (127, 1, 7);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (128, 1, 8);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (129, 1, 9);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (130, 1, 10);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (131, 1, 11);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (132, 1, 32);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (133, 1, 56);
insert into SY_EMPMENUPOWER (ID, EMPID, MENUID)
values (134, 1, 57);
commit;
prompt 41 records loaded
prompt Loading SY_MENU...
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (-1, 'ҵ������', null, null, null, null, 0, 6, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (-2, '�û�����', null, null, null, null, 0, 1, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (-3, '�������', null, null, null, null, 0, 5, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (-4, '�շѹ���', null, null, null, null, 0, 4, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (-5, '��Ʊ����', null, null, null, null, 0, 4, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (-6, 'ϵͳ����', null, null, null, null, 0, 7, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (1, '01�û�����', -1, '/Water/page/be__request.jsp', null, 'nav_menu', 1, 6, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (2, '02�������', -1, '/Water/order/shenHe', null, 'nav_menu', 2, 6, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (3, '03��ʩ����', -1, '/Water/order/gongFei', null, 'nav_menu', 3, 6, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (4, '04ˮ������', -1, '/Water/order/billclear', null, 'nav_menu', 4, 6, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (5, '05��ˮЭ��', -1, '/Water/order/contract', null, 'nav_menu', 5, 6, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (6, '06ʩ������', -1, '/Water/order/working', null, 'nav_menu', 6, 6, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (7, '07ͨˮͣˮ', -1, '/Water/order/open', null, 'nav_menu', 7, 6, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (8, '08�����浵', -1, '/Water/order/save', null, 'nav_menu', 8, 6, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (9, '��������', -1, '/Water/order/orders', null, 'nav_menu', 9, 6, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (10, '��ֹ����', -1, '/Water/order/abort', null, 'nav_menu', 10, 6, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (11, 'ҵ�����̽�չ', -1, '/Water/order/reportProgress', null, 'nav_menu', 11, 6, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (12, 'ҵ���շѱ���', -1, '/Water/order/reportMoney', null, 'nav_menu', 12, 6, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (13, '�û���ѯ', -2, '/Water/page/user_search.jsp', null, 'nav_menu', 1, 1, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (14, '����»�', -2, '/Water/us_userlm/hjmFindUserKJ', null, 'nav_menu', 2, 1, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (15, '��ݹ���', -2, '/Water/page/user_changeName.jsp', null, 'nav_menu', 3, 1, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (16, '��ݴ���', -2, '/Water/page/user_changeBank.jsp', null, 'nav_menu', 4, 1, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (17, '��ݻ���', -2, '/Water/page/user_changeMeter.jsp', null, 'nav_menu', 5, 1, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (18, '�����ǩ', -2, '/Water/page/user_changeFormula.jsp', null, 'nav_menu', 6, 1, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (19, '�������', -2, '/Water/page/user_delete.jsp', null, 'nav_menu', 7, 1, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (20, '��ݲ�����¼', -2, '/Water/us_userlm/qyfindPageBeol?cpage=1', null, 'nav_menu', 8, 1, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (21, '�����Ź���', -2, '/Water/page/user_docNum.jsp', null, 'nav_menu', 9, 1, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (22, '����Ⱥ��', -2, '/Water/us_userlm/selectDuanxin', null, 'nav_menu', 10, 1, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (23, '������', -3, '/Water/rd_volume/select_index?areaId=-1', null, 'nav_menu', 1, 5, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (24, '�����ʼ��', -3, '/Water/rd_yearmonth/select_ym', null, 'nav_menu', 2, 5, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (25, '�������', -3, '/Water/RD_Task/SelectAll', null, 'nav_menu', 3, 5, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (26, '����¼��', -3, '/Water/Rd_read/Select_read?id=1', null, 'nav_menu', 4, 5, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (27, '�������', -3, '/Water/Rd_audit/Select_audit', null, 'nav_menu', 5, 5, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (28, '���������ѯ', -3, '/Water/rd_read/select_rr', null, 'nav_menu', 6, 5, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (29, '����ͳ�Ʊ���', -3, '/Water/rd_read/selectList', null, 'nav_menu', 7, 5, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (30, '���λ�û���ѯ', -3, '/Water/rd_volume/findRd_read?cpage=1', null, 'nav_menu', 8, 5, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (31, '�����ֵ������¼', -3, '/Water/rd_volume/findRd_changemaxvalue?cpage=1', null, 'nav_menu', 9, 5, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (32, '����������¼', -3, '/Water/rd_volume/findRd_changevalue?cpage=1', null, 'nav_menu', 10, 5, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (33, 'ˮ���ܼ챨��', -3, '/Water/us_meter/time', null, 'nav_menu', 11, 5, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (34, '�����շ�', -4, '/Water/page/pay_window.jsp', null, 'nav_menu', 1, 4, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (35, '�����շ�', -4, '/Water/page/pay_batch.jsp', null, 'nav_menu', 2, 4, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (36, '��Ʊ����/����', -4, '/Water/iv_invoice/findAllGL', null, 'nav_menu', 3, 4, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (37, 'Ƿ�ѱ���', -4, '/Water/py_bill/findPy_bill_GL_User', null, 'nav_menu', 4, 4, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (38, '�շ��������', -4, '/Water/py_pay/findAllToPay?help.row=15&help.page=1', null, 'nav_menu', 5, 4, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (39, '���ʽ�����������', -4, '/Water/py_bill/findToYearMonth', null, 'nav_menu', 6, 4, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (40, '�û�Ԥ���������', -4, '/Water/us_user/findAllByMoney', null, 'nav_menu', 7, 4, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (41, '������ˮͳ���ܱ�', -4, '/Water/sumreport/toReportWaterType', null, 'nav_menu', 8, 4, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (42, '��Ʊ�ܱ�', -5, '/Water/page/inv_invoiceManage.jsp', null, 'nav_menu', 1, 4, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (43, '��Ʊ���', -5, '/Water/page/inv_invoiceIn.jsp', null, 'nav_menu', 2, 4, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (44, '��Ʊ����', -5, '/Water/IV_InInvoice/chuku', null, 'nav_menu', 3, 4, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (45, '��Ʊ��Ʊ', -5, '/Water/page/inv_invoiceArchive.jsp', null, 'nav_menu', 4, 4, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (46, '��Ʊ���������ѯ', -5, '/Water/page/inv_invoiceReportOut.jsp', null, 'nav_menu', 5, 4, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (47, '�շ���Ա��Ʊ��ѯ', -5, '/Water/page/inv_invoiceReportEmp.jsp', null, 'nav_menu', 6, 4, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (48, '��Ʊ��Ʊ�����ѯ', -5, '/Water/Iv_ArchiveForZhu/selectAll', null, 'nav_menu', 7, 4, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (49, '��Ʊʹ�������ѯ', -5, '/Water/IV_InvoiceForZhu/selectAll', null, 'nav_menu', 8, 4, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (50, '���˻��ܱ���', -5, '/Water/Iv_invoice/findAll', null, 'nav_menu', 9, 4, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (51, '������ϸ����', -5, '/Water/page/inv_invoiceReportMoneyDetail.jsp', null, 'nav_menu', 10, 4, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (52, '����Ͻ��', -6, '/Water/Sy_area/findAll', null, 'nav_menu', 1, 7, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (53, 'ˮ���ͺ�', -6, '/Water/sy_metertype/findAll', null, 'nav_menu', 2, 7, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (54, '���Ź���', -6, '/Water/Sy_dept/Select', null, 'nav_menu', 3, 7, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (55, 'Ա������', -6, '/Water/Sy_emp/Select', null, 'nav_menu', 4, 7, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (56, '�˵�Ȩ������', -6, '/Water/sy_EmpMenuPower/findEmp', null, 'nav_menu', 5, 7, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (57, 'Ͻ��Ȩ������', -6, '/Water/sy_EmpAreaPower/findEmp', null, 'nav_menu', 6, 7, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (58, '��ˮ�����趨', -6, '/Water/Sy_costtype/findAll', null, 'nav_menu', 7, 7, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (59, '���ӷ��趨', -6, '/Water/Sy_costtype/findAll2', null, 'nav_menu', 8, 7, 0);
insert into SY_MENU (ID, MENUNAME, PARENT, URL, ONCLICK, ICON, ORDERINDEX, FLOWID, DISABLED)
values (60, '��������', -6, '/Water/Be_flow/Select', null, 'nav_menu', 9, 7, 0);
commit;
prompt 66 records loaded
prompt Loading SY_METERTYPE...
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (42, null, 40, null, null, null, null, 0);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (23, null, 40, null, null, null, null, 0);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (25, null, 40, null, null, null, null, 0);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (5, 'ˮ���ͺ�����', 4, 1000, 1, 1, '��ע', 0);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (6, '��ˮ��', 10, 1000, 0, 1, '��ע', 0);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (7, 'Сˮ��', 6, 1000, 0, 1, '��ע', 0);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (8, 'Сˮ��', 6, 1000, 0, 1, '��ע', 0);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (9, 'Сˮ��', 6, 1000, 0, 1, '��ע', 0);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (10, 'Сˮ��', 6, 1000, 0, 1, '��ע', 0);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (11, 'ˮ��', 6, 1000, 0, 1, '��ע', 0);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (2, 'DN20', 20, 999, 2, 5, null, 0);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (3, 'DN40', 10, 9999, 2, 5, null, 0);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (4, 'DN100', 10, 9999, 2, 5, null, 0);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (12, 'DN200', 10, 9999, 2, 5, null, 0);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (13, 'DN250', 10, 999, 2, 5, null, 0);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (14, 'DN500', 10, 99999, 2, 5, null, 0);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (15, 'DN10', 10, 999, 2, 5, null, 0);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (16, 'DN20', 20, 999, 2, 5, null, 0);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (17, 'DN40', 10, 9999, 2, 5, null, 0);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (18, 'DN100', 10, 9999, 2, 5, null, 0);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (19, 'DN200', 10, 9999, 2, 5, null, 0);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (20, 'DN250', 10, 999, 2, 5, null, 0);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (21, 'DN500', 10, 99999, 2, 5, 'aedad', 1);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (24, null, 40, null, null, null, null, 0);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (26, null, 40, null, null, null, null, 0);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (1, 'DN10', 4, 99999, 0, 6, 'dfs', 0);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (22, 'ND10', 12, 9999, 1, 5, 'wertyudd', 1);
insert into SY_METERTYPE (ID, METERTYPENAME, APERTURE, MAVVALUE, MINVALUE, LIFE, REMARK, DISABLED)
values (41, 'ND11', 999, 999, 111, 4, 'dedsd', 0);
commit;
prompt 28 records loaded
prompt Loading SY_SURCHARGE...
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (81, 82, 1);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (82, 82, 2);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (83, 82, 3);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (84, 82, 4);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (21, 8, 1);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (22, 9, 1);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (23, 9, 3);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (24, 9, 4);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (25, 9, 5);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (26, 9, 6);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (27, 9, 7);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (29, 10, 3);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (30, 10, 4);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (31, 10, 5);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (32, 10, 6);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (33, 10, 7);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (34, 13, 2);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (35, 13, 3);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (36, 13, 4);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (37, 13, 5);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (38, 13, 6);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (39, 14, 1);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (40, 14, 3);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (41, 14, 4);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (43, 14, 6);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (44, 15, 1);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (45, 15, 4);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (46, 15, 5);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (47, 15, 6);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (48, 16, 1);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (49, 16, 2);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (50, 16, 3);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (51, 16, 4);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (52, 16, 5);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (53, 16, 6);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (1, 8, 1);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (2, 9, 1);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (3, 9, 3);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (4, 9, 4);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (5, 9, 5);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (6, 9, 6);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (7, 9, 7);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (8, 10, 1);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (9, 10, 3);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (10, 10, 4);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (11, 10, 5);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (12, 10, 6);
insert into SY_SURCHARGE (ID, SURCHARGEID, WATERTYPEID)
values (13, 10, 7);
commit;
prompt 48 records loaded
prompt Loading US_FORMULA...
prompt Table is empty
prompt Loading US_METER...
insert into US_METER (METERNO, USERNO, METERNAME, METERTYPEID, MAXVALUE, STARTVALUE, SETUPDATE, FACTORY, DISABLED)
values ('M2105111017-01', null, '01010001', 13, 99999, 2, to_date('05-03-2015', 'dd-mm-yyyy'), '����ˮ��', 0);
insert into US_METER (METERNO, USERNO, METERNAME, METERTYPEID, MAXVALUE, STARTVALUE, SETUPDATE, FACTORY, DISABLED)
values ('M2102010840-01', '0100000005', '01010001', 5, 99999, 1, to_date('04-03-2015', 'dd-mm-yyyy'), '������', 0);
insert into US_METER (METERNO, USERNO, METERNAME, METERTYPEID, MAXVALUE, STARTVALUE, SETUPDATE, FACTORY, DISABLED)
values ('M2104064857-01', null, '01010001', 13, 99999, 2, to_date('04-03-2015', 'dd-mm-yyyy'), '����ˮ��', 0);
insert into US_METER (METERNO, USERNO, METERNAME, METERTYPEID, MAXVALUE, STARTVALUE, SETUPDATE, FACTORY, DISABLED)
values ('M0100000987-01', '0100000987', '123456', 1, 9999, 12, to_date('27-03-2015 10:37:15', 'dd-mm-yyyy hh24:mi:ss'), '������', 0);
insert into US_METER (METERNO, USERNO, METERNAME, METERTYPEID, MAXVALUE, STARTVALUE, SETUPDATE, FACTORY, DISABLED)
values ('M0100003859-01', '0100003859', '123456', 2, 9999, 12, to_date('27-03-2015 10:37:51', 'dd-mm-yyyy hh24:mi:ss'), '������', 0);
insert into US_METER (METERNO, USERNO, METERNAME, METERTYPEID, MAXVALUE, STARTVALUE, SETUPDATE, FACTORY, DISABLED)
values ('M1000000001-01', '1000000001', '01010001', 1, 99999, 2, to_date('21-10-2013', 'dd-mm-yyyy'), '����ˮ��', 0);
insert into US_METER (METERNO, USERNO, METERNAME, METERTYPEID, MAXVALUE, STARTVALUE, SETUPDATE, FACTORY, DISABLED)
values ('M0100000001-01', '1020150228', '034-48AF110', 1, 99999, 99999, to_date('15-10-2007', 'dd-mm-yyyy'), '���Ͽ��ܻ���ˮ�����', 0);
insert into US_METER (METERNO, USERNO, METERNAME, METERTYPEID, MAXVALUE, STARTVALUE, SETUPDATE, FACTORY, DISABLED)
values ('M0100000002-01', '1001025925', '034-48AF110', 2, 99999, 9999, to_date('12-10-2006', 'dd-mm-yyyy'), '���Ͽ��ܻ���ˮ�����2', 0);
insert into US_METER (METERNO, USERNO, METERNAME, METERTYPEID, MAXVALUE, STARTVALUE, SETUPDATE, FACTORY, DISABLED)
values ('M101045156-01', null, '01010001', 2, 99999, 2, to_date('12-12-2013', 'dd-mm-yyyy'), '����ˮ��', 0);
insert into US_METER (METERNO, USERNO, METERNAME, METERTYPEID, MAXVALUE, STARTVALUE, SETUPDATE, FACTORY, DISABLED)
values ('M102092800-01', null, '01010001', 3, 99999, 2, to_date('12-12-2013', 'dd-mm-yyyy'), '����ˮ��', 0);
insert into US_METER (METERNO, USERNO, METERNAME, METERTYPEID, MAXVALUE, STARTVALUE, SETUPDATE, FACTORY, DISABLED)
values ('M0100000006-01', '0100000987', '034-48AF110', 3, 99999, 99, to_date('18-05-2000', 'dd-mm-yyyy'), '���Ͽ��ܻ���ˮ�����6', 0);
insert into US_METER (METERNO, USERNO, METERNAME, METERTYPEID, MAXVALUE, STARTVALUE, SETUPDATE, FACTORY, DISABLED)
values ('M101042334-01', null, '01010001', 3, 99999, 2, to_date('12-12-2014', 'dd-mm-yyyy'), '����ˮ��', 0);
insert into US_METER (METERNO, USERNO, METERNAME, METERTYPEID, MAXVALUE, STARTVALUE, SETUPDATE, FACTORY, DISABLED)
values ('M101040637-01', null, '01010001', 3, 99999, 2, to_date('11-11-2011', 'dd-mm-yyyy'), '����ˮ��', 0);
insert into US_METER (METERNO, USERNO, METERNAME, METERTYPEID, MAXVALUE, STARTVALUE, SETUPDATE, FACTORY, DISABLED)
values ('M102095745-01', null, '01010001', 3, 99999, 2, to_date('12-12-2013', 'dd-mm-yyyy'), '����ˮ��', 0);
insert into US_METER (METERNO, USERNO, METERNAME, METERTYPEID, MAXVALUE, STARTVALUE, SETUPDATE, FACTORY, DISABLED)
values ('M102081649-01', null, '01010001', 3, 99999, 2, to_date('11-12-2014', 'dd-mm-yyyy'), '����ˮ��', 0);
insert into US_METER (METERNO, USERNO, METERNAME, METERTYPEID, MAXVALUE, STARTVALUE, SETUPDATE, FACTORY, DISABLED)
values ('M102094039-01', null, '01010001', 3, 99999, 2, to_date('11-11-2013', 'dd-mm-yyyy'), '����ˮ��', 0);
insert into US_METER (METERNO, USERNO, METERNAME, METERTYPEID, MAXVALUE, STARTVALUE, SETUPDATE, FACTORY, DISABLED)
values ('M1001025027-01', '0100003859', '01010001', 3, 99999, 2, to_date('23-12-2013', 'dd-mm-yyyy'), '����ˮ��', 0);
insert into US_METER (METERNO, USERNO, METERNAME, METERTYPEID, MAXVALUE, STARTVALUE, SETUPDATE, FACTORY, DISABLED)
values ('M1001021632-01', '0100043900', '01010001', 3, 99999, 2, to_date('23-12-2013', 'dd-mm-yyyy'), '����ˮ��', 0);
insert into US_METER (METERNO, USERNO, METERNAME, METERTYPEID, MAXVALUE, STARTVALUE, SETUPDATE, FACTORY, DISABLED)
values ('M1001020835-01', '1001023551', '01010001', 3, 99999, 2, to_date('23-12-2013', 'dd-mm-yyyy'), '����ˮ��', 0);
insert into US_METER (METERNO, USERNO, METERNAME, METERTYPEID, MAXVALUE, STARTVALUE, SETUPDATE, FACTORY, DISABLED)
values ('M1001023340-01', '0100008834', '01010001', 3, 99999, 2, to_date('23-12-2013', 'dd-mm-yyyy'), '����ˮ��', 0);
insert into US_METER (METERNO, USERNO, METERNAME, METERTYPEID, MAXVALUE, STARTVALUE, SETUPDATE, FACTORY, DISABLED)
values ('M102080357-01', null, '01010001', 3, 99999, 2, to_date('12-12-2013', 'dd-mm-yyyy'), '����ˮ��', 0);
insert into US_METER (METERNO, USERNO, METERNAME, METERTYPEID, MAXVALUE, STARTVALUE, SETUPDATE, FACTORY, DISABLED)
values ('M2104060954-01', null, '01010001', 21, 99999, 2, to_date('04-03-2015', 'dd-mm-yyyy'), '����ˮ��', 0);
insert into US_METER (METERNO, USERNO, METERNAME, METERTYPEID, MAXVALUE, STARTVALUE, SETUPDATE, FACTORY, DISABLED)
values ('M2104075403-01', null, '01010001', 7, 99999, 2, to_date('03-03-2015', 'dd-mm-yyyy'), '����ˮ��', 0);
insert into US_METER (METERNO, USERNO, METERNAME, METERTYPEID, MAXVALUE, STARTVALUE, SETUPDATE, FACTORY, DISABLED)
values ('M10K6666666-01', '10K6666666', 'wzz', 1, 99999, 0, to_date('30-01-2015', 'dd-mm-yyyy'), '����˽������', 0);
commit;
prompt 24 records loaded
prompt Loading US_SMS...
prompt Table is empty
prompt Loading US_USER...
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100000987', '����', 'hh', to_date('24-12-2013 15:45:25', 'dd-mm-yyyy hh24:mi:ss'), '������', '88888888', '333333', 10, null, null, null, null, '[SH:80%][SY:20%]', 0, 1, 'xx22', '123', null, null, 4, 1, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100003859', '����', 'xx', to_date('13-01-2014 06:33:23', 'dd-mm-yyyy hh24:mi:ss'), '������', '66666666', '444444', 10, null, null, null, null, '[SH:80%][SY:20%]', 0, 1, 'as22', '123', null, null, 1, 1, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100043900', '�ٺ�', 'hh', to_date('26-10-2014 19:43:55', 'dd-mm-yyyy hh24:mi:ss'), '���', '55555555', '222222', 10, null, null, null, null, '[SH:80%][SY:20%]', 0, 1, null, '123', null, null, 1, 1, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100008834', '�Ǻ�', 'hh', to_date('11-07-2012 08:45:33', 'dd-mm-yyyy hh24:mi:ss'), '������', '99999999', '111111', 10, null, null, null, null, '[SH:80%][SY:20%]', 0, 1, '4', '123', null, null, 1, 1, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100000005', 'zz', 'zz', to_date('04-06-2010 15:23:33', 'dd-mm-yyyy hh24:mi:ss'), '����11', '13107411296', '234324234', 10, '˽��', '����', '������', '122343434', '[SH:80%][SY:20%]', -472, 1, 'wzz1234567890', '123', 't35452523', to_date('30-01-2015', 'dd-mm-yyyy'), 4, 1, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('2105111017', 'aa', 'aa', to_date('05-03-2015 11:17:11', 'dd-mm-yyyy hh24:mi:ss'), '�¿���������IT���Ļ�������ܲ��칫¥2219��', '13012345678', '13012345678', 21, '˽��', '����', '��������', '1234567890123456789', '[XZ :20%][JQ :*]', null, 1, 'A4954-394P1#4', null, 'W20101027-19', to_date('05-03-2015', 'dd-mm-yyyy'), 3, null, 1);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('2104064857', 'yyy', 'yyy', to_date('04-03-2015 18:57:48', 'dd-mm-yyyy hh24:mi:ss'), '�¿���������IT���Ļ�������ܲ��칫¥2219��', '13012345678', '13012345678', 21, '˽��', '����', '��������', '1234567890123456789', null, null, 1, 'A4954-394P1#4', null, 'W20101027-19', to_date('02-03-2015', 'dd-mm-yyyy'), 3, null, 1);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('2102010840', '��Ϣ', 'xx', to_date('02-03-2015 13:40:08', 'dd-mm-yyyy hh24:mi:ss'), '�¿���������IT���Ļ�������ܲ��칫¥2219��', '13012345678', '13012345678', 21, '˽��', '����', '��������', '1234567890123456789', '[GY :20%][XZ :*]', null, 1, 'A4954-394P1#4', null, 'W20101027-19', to_date('11-03-2015', 'dd-mm-yyyy'), 3, null, 1);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100000920', '����', 'hh', to_date('01-10-2014 13:44:21', 'dd-mm-yyyy hh24:mi:ss'), '������', '88888888', '333333', null, null, null, null, null, null, null, null, null, '123', null, null, null, null, 1);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100003821', '����', 'xx', to_date('01-10-2014 13:44:21', 'dd-mm-yyyy hh24:mi:ss'), '������', '66666666', '444444', null, null, null, null, null, null, null, null, null, '123', null, null, null, null, 1);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100043922', '�ٺ�', 'hh', to_date('01-10-2014 13:44:21', 'dd-mm-yyyy hh24:mi:ss'), '���', '55555555', '222222', null, null, null, null, null, null, null, null, null, '123', null, null, null, null, 1);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100008823', '�Ǻ�', 'hh', to_date('01-10-2014 13:44:21', 'dd-mm-yyyy hh24:mi:ss'), '������', '99999999', '111111', null, null, null, null, null, null, null, null, null, '123', null, null, null, null, 1);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100000024', '�û�����', 'yhxm', to_date('01-10-2014 13:44:21', 'dd-mm-yyyy hh24:mi:ss'), '��ϵ��ַ������ˮ��ַ', '��ϵ�绰', '���ŵ绰', 1, '�û�����', '�տʽ', '��������', '�����˺�', '�������ֵ', 100, 1, '�������', '����', '��ͬ���', to_date('01-12-2014 13:44:21', 'dd-mm-yyyy hh24:mi:ss'), 1, 1, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100000927', '����', 'hh', to_date('01-11-2014 13:44:21', 'dd-mm-yyyy hh24:mi:ss'), '������', '88888888', '333333', null, null, null, null, null, null, null, null, null, '123', null, null, null, null, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100003828', '����', 'xx', to_date('01-11-2014 13:44:21', 'dd-mm-yyyy hh24:mi:ss'), '������', '66666666', '444444', null, null, null, null, null, null, null, null, null, '123', null, null, null, null, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100043929', '�ٺ�', 'hh', to_date('01-11-2014 13:44:21', 'dd-mm-yyyy hh24:mi:ss'), '���', '55555555', '222222', null, null, null, null, null, null, null, null, null, '123', null, null, null, null, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100008830', '�Ǻ�', 'hh', to_date('01-11-2014 13:44:21', 'dd-mm-yyyy hh24:mi:ss'), '������', '99999999', '111111', null, null, null, null, null, null, null, null, null, '123', null, null, null, null, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100000031', '�û�����', 'yhxm', to_date('01-11-2014 13:44:21', 'dd-mm-yyyy hh24:mi:ss'), '��ϵ��ַ������ˮ��ַ', '��ϵ�绰', '���ŵ绰', 1, '�û�����', '�տʽ', '��������', '�����˺�', '�������ֵ', 100, 1, '�������', '����', '��ͬ���', to_date('01-12-2014 13:44:21', 'dd-mm-yyyy hh24:mi:ss'), 1, 1, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100000032', '������', 'dfmj', to_date('01-11-2014 13:44:21', 'dd-mm-yyyy hh24:mi:ss'), '������', '15199999', '3333', 1, '����', '����', '����', '324567865432', '�������ֵ', 100, 2, '233', '333', '2', to_date('01-02-2015 13:46:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 1, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100000033', '������', 'dfmj', to_date('01-10-2014 13:44:21', 'dd-mm-yyyy hh24:mi:ss'), '������', '15199999', '3333', 1, '����', '����', '����', '324567865432', '�������ֵ', 100, 2, '233', '333', '2', to_date('26-01-2015 13:46:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 1, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100043938', '�ٺ�', 'hh', to_date('01-11-2014 13:44:21', 'dd-mm-yyyy hh24:mi:ss'), '���', '55555555', '222222', null, null, null, null, null, null, null, null, null, '123', null, null, null, null, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100008837', '�Ǻ�', 'hh', to_date('01-11-2014 13:44:21', 'dd-mm-yyyy hh24:mi:ss'), '������', '99999999', '111111', null, null, null, null, null, null, null, null, null, '123', null, null, null, null, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100000036', '�û�����', 'yhxm', to_date('01-11-2014 13:44:21', 'dd-mm-yyyy hh24:mi:ss'), '��ϵ��ַ������ˮ��ַ', '��ϵ�绰', '���ŵ绰', 1, '�û�����', '�տʽ', '��������', '�����˺�', '�������ֵ', 100, 1, '�������', '����', '��ͬ���', to_date('01-12-2014 13:44:21', 'dd-mm-yyyy hh24:mi:ss'), 1, 1, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100000035', '������', 'dfmj', to_date('01-11-2014 13:44:21', 'dd-mm-yyyy hh24:mi:ss'), '������', '15199999', '3333', 1, '����', '����', '����', '324567865432', '�������ֵ', 100, 2, '233', '333', '2', to_date('01-02-2015 13:46:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 1, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100000034', '������', 'dfmj', to_date('01-10-2014 13:44:21', 'dd-mm-yyyy hh24:mi:ss'), '������', '15199999', '3333', 1, '����', '����', '����', '324567865432', '�������ֵ', 100, 2, '233', '333', '2', to_date('26-01-2015 13:46:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 1, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100000940', '����', 'hh', to_date('01-12-2014 13:44:21', 'dd-mm-yyyy hh24:mi:ss'), '������', '88888888', '333333', null, null, null, null, null, null, null, null, null, '123', null, null, null, null, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100003839', '����', 'xx', to_date('01-12-2014 13:44:21', 'dd-mm-yyyy hh24:mi:ss'), '������', '66666666', '444444', null, null, null, null, null, null, null, null, null, '123', null, null, null, null, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100000001', '�û�����', 'yhxm', to_date('26-01-2015 13:44:21', 'dd-mm-yyyy hh24:mi:ss'), '��ϵ��ַ������ˮ��ַ', '��ϵ�绰', '���ŵ绰', 1, '�û�����', '�տʽ', '��������', '�����˺�', '�������ֵ', 100, 1, '�������', '����', '��ͬ���', to_date('01-12-2014 13:44:21', 'dd-mm-yyyy hh24:mi:ss'), 1, 1, 1);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100000002', '������', 'dfmj', to_date('26-01-2015 13:46:33', 'dd-mm-yyyy hh24:mi:ss'), '������', '15199999', '3333', 1, '����', '����', '����', '324567865432', '�������ֵ', 100, 2, '233', '333', '2', to_date('01-02-2015 13:46:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 1, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100000003', '������', 'dfmj', to_date('26-01-2015 13:46:40', 'dd-mm-yyyy hh24:mi:ss'), '������', '15199999', '3333', 1, '����', '����', '����', '324567865432', '�������ֵ', 100, 2, '233', '333', '2', to_date('26-01-2015 13:46:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 1, 1);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100000917', '����', 'hh', to_date('02-02-2015 15:04:39', 'dd-mm-yyyy hh24:mi:ss'), '������', '88888888', '333333', null, null, null, null, null, null, null, null, null, '123', null, null, null, null, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100003819', '����', 'xx', to_date('02-02-2015 15:04:39', 'dd-mm-yyyy hh24:mi:ss'), '������', '66666666', '444444', null, null, null, null, null, null, null, null, null, '123', null, null, null, null, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100043910', '�ٺ�', 'hh', to_date('02-02-2015 15:04:39', 'dd-mm-yyyy hh24:mi:ss'), '���', '55555555', '222222', null, null, null, null, null, null, null, null, null, '123', null, null, null, null, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100008814', '�Ǻ�', 'hh', to_date('02-02-2015 15:04:39', 'dd-mm-yyyy hh24:mi:ss'), '������', '99999999', '111111', null, null, null, null, null, null, null, null, null, '123', null, null, null, null, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100000011', '�û�����', 'yhxm', to_date('02-02-2015 15:04:39', 'dd-mm-yyyy hh24:mi:ss'), '��ϵ��ַ������ˮ��ַ', '��ϵ�绰', '���ŵ绰', 1, '�û�����', '�տʽ', '��������', '�����˺�', '�������ֵ', 100, 1, '�������', '����', '��ͬ���', to_date('01-12-2014 13:44:21', 'dd-mm-yyyy hh24:mi:ss'), 1, 1, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100000012', '������', 'dfmj', to_date('02-02-2015 15:04:39', 'dd-mm-yyyy hh24:mi:ss'), '������', '15199999', '3333', 1, '����', '����', '����', '324567865432', '�������ֵ', 100, 2, '233', '333', '2', to_date('01-02-2015 13:46:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 1, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('0100000013', '������', 'dfmj', to_date('02-02-2015 15:04:39', 'dd-mm-yyyy hh24:mi:ss'), '������', '15199999', '3333', 1, '����', '����', '����', '324567865432', '�������ֵ', 100, 2, '233', '333', '2', to_date('26-01-2015 13:46:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 1, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('2104060954', 'sa', 'sa', to_date('04-03-2015 18:54:09', 'dd-mm-yyyy hh24:mi:ss'), '�¿���������IT���Ļ�������ܲ��칫¥2219��', '13012345678', '13012345678', 21, '˽��', '����', '��������', '1234567890123456789', '[XZ :20%][JQ :20%][SH :*]', null, 1, 'A4954-394P1#4', null, 'W20101027-19', to_date('04-03-2015', 'dd-mm-yyyy'), 3, null, 0);
insert into US_USER (USERNO, USERNAME, ABC, CREATEDATE, ADDRESS, PHONE, SMSPHONE, AREAID, USERTYPE, PAYTYPE, BANKNAME, BANKNUM, FORMULA, USERMONEY, METERID, DOCNUM, PWD, CONTRACTNUM, CONTRACTDATE, VOLUMEID, VOLUMEORDERINDEX, DISABLED)
values ('2104075403', 'ddd', 'ddd', to_date('04-03-2015 19:03:54', 'dd-mm-yyyy hh24:mi:ss'), '�¿���������IT���Ļ�������ܲ��칫¥2219��', '13012345678', '13012345678', 21, '˽��', '����', '��������', '1234567890123456789', '[JQ :20%][GY :*]', null, 1, 'A4954-394P1#4', null, 'W20101027-19', to_date('03-03-2015', 'dd-mm-yyyy'), 3, null, 0);
commit;
prompt 39 records loaded
prompt Enabling triggers for BE_COMMENT...
alter table BE_COMMENT enable all triggers;
prompt Enabling triggers for BE_FLOW...
alter table BE_FLOW enable all triggers;
prompt Enabling triggers for BE_FORMULA...
alter table BE_FORMULA enable all triggers;
prompt Enabling triggers for BE_HISTORY...
alter table BE_HISTORY enable all triggers;
prompt Enabling triggers for BE_ORDER...
alter table BE_ORDER enable all triggers;
prompt Enabling triggers for BE_ORDERLITE...
alter table BE_ORDERLITE enable all triggers;
prompt Enabling triggers for BE_ORDERTYPE...
alter table BE_ORDERTYPE enable all triggers;
prompt Enabling triggers for BE_ORDERUSER...
alter table BE_ORDERUSER enable all triggers;
prompt Enabling triggers for IV_ARCHIVE...
alter table IV_ARCHIVE enable all triggers;
prompt Enabling triggers for IV_ININVOICE...
alter table IV_ININVOICE enable all triggers;
prompt Enabling triggers for IV_INVOICE...
alter table IV_INVOICE enable all triggers;
prompt Enabling triggers for IV_OUTINVOICE...
alter table IV_OUTINVOICE enable all triggers;
prompt Enabling triggers for PY_BALANCE...
alter table PY_BALANCE enable all triggers;
prompt Enabling triggers for PY_BALANCEDETAIL...
alter table PY_BALANCEDETAIL enable all triggers;
prompt Enabling triggers for PY_BILL...
alter table PY_BILL enable all triggers;
prompt Enabling triggers for PY_BILLDETAIL...
alter table PY_BILLDETAIL enable all triggers;
prompt Enabling triggers for PY_PAY...
alter table PY_PAY enable all triggers;
prompt Enabling triggers for PY_SUMREPORT...
alter table PY_SUMREPORT enable all triggers;
prompt Enabling triggers for PY_USERHISTORY...
alter table PY_USERHISTORY enable all triggers;
prompt Enabling triggers for RD_CHANGEMAXVALUE...
alter table RD_CHANGEMAXVALUE enable all triggers;
prompt Enabling triggers for RD_CHANGEVALUE...
alter table RD_CHANGEVALUE enable all triggers;
prompt Enabling triggers for RD_READ...
alter table RD_READ enable all triggers;
prompt Enabling triggers for RD_READTYPES...
alter table RD_READTYPES enable all triggers;
prompt Enabling triggers for RD_TASK...
alter table RD_TASK enable all triggers;
prompt Enabling triggers for RD_VOLUME...
alter table RD_VOLUME enable all triggers;
prompt Enabling triggers for RD_YEARMONTH...
alter table RD_YEARMONTH enable all triggers;
prompt Enabling triggers for SY_AREA...
alter table SY_AREA enable all triggers;
prompt Enabling triggers for SY_COSTTYPE...
alter table SY_COSTTYPE enable all triggers;
prompt Enabling triggers for SY_DEPT...
alter table SY_DEPT enable all triggers;
prompt Enabling triggers for SY_EMP...
alter table SY_EMP enable all triggers;
prompt Enabling triggers for SY_EMPAREAPOWER...
alter table SY_EMPAREAPOWER enable all triggers;
prompt Enabling triggers for SY_EMPMENUPOWER...
alter table SY_EMPMENUPOWER enable all triggers;
prompt Enabling triggers for SY_MENU...
alter table SY_MENU enable all triggers;
prompt Enabling triggers for SY_METERTYPE...
alter table SY_METERTYPE enable all triggers;
prompt Enabling triggers for SY_SURCHARGE...
alter table SY_SURCHARGE enable all triggers;
prompt Enabling triggers for US_FORMULA...
alter table US_FORMULA enable all triggers;
prompt Enabling triggers for US_METER...
alter table US_METER enable all triggers;
prompt Enabling triggers for US_SMS...
alter table US_SMS enable all triggers;
prompt Enabling triggers for US_USER...
alter table US_USER enable all triggers;
set feedback on
set define on
prompt Done.
