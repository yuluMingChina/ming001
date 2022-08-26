--
-- Create Schema Script
--   Database Version            : 11.2.0.4.0
--   Database Compatible Level   : 11.2.0.4.0
--   Script Compatible Level     : 11.2.0.4.0
--   Toad Version                : 13.0.0.80
--   DB Connect String           : FITQMS_PROD
--   Schema                      : QMS
--   Script Created by           : QMS
--   Script Created at           : 2018/11/22 9:32:09
--   Notes                       : 
--

-- Object Counts: 
--   Tables: 184        Columns: 3666       


-- "Set define off" turns off substitution variables.
Set define off; 

--
-- A2ADEFECTPRODUCTMAPPING  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.A2ADEFECTPRODUCTMAPPING
(
  DEFECTID    CHAR(32 CHAR),
  PRODUCTID   CHAR(32 CHAR),
  CREATEDT    DATE,
  CREATEBY    NVARCHAR2(100),
  LASTEDITDT  DATE,
  LASTEDITBY  NVARCHAR2(100)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- A2AGOODSRECEIVEINFO  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.A2AGOODSRECEIVEINFO
(
  ID              CHAR(32 BYTE)                 DEFAULT sys_guid(),
  DATASOURCE      VARCHAR2(15 CHAR)             DEFAULT ('VMI'),
  PLANTID         VARCHAR2(32 CHAR)             DEFAULT (' '),
  RECEIVENO       VARCHAR2(50 BYTE),
  PARTNO          NVARCHAR2(32)                 DEFAULT (' '),
  GRNO            VARCHAR2(50 CHAR)             DEFAULT (' '),
  GRITEM          VARCHAR2(10 CHAR)             DEFAULT (' '),
  GRTYPE          VARCHAR2(20 CHAR)             DEFAULT (' '),
  GRDATE          DATE,
  QTY             NUMBER(18,5)                  DEFAULT (0),
  UNIT            VARCHAR2(10 CHAR)             DEFAULT ('PCS'),
  WAREHOUSEID     VARCHAR2(32 CHAR)             DEFAULT (' '),
  POSTDATE        DATE,
  BATCHNO         VARCHAR2(10 CHAR)             DEFAULT (' '),
  MOVEMENTTYPE    VARCHAR2(20 CHAR)             DEFAULT (' '),
  STOCKTYPE       VARCHAR2(20 CHAR)             DEFAULT (' '),
  VENDORCODE      VARCHAR2(40 CHAR)             DEFAULT (' '),
  CUSTOMERCODE    VARCHAR2(40 CHAR)             DEFAULT (' '),
  PONO            VARCHAR2(40 CHAR)             DEFAULT (' '),
  POITEM          VARCHAR2(10 CHAR)             DEFAULT (' '),
  SALESORDERNO    VARCHAR2(40 CHAR)             DEFAULT (' '),
  SALESORDERITEM  VARCHAR2(10 CHAR)             DEFAULT (' '),
  VENDOR          NVARCHAR2(100),
  CREATEBY        VARCHAR2(32 CHAR)             DEFAULT (' '),
  CREATEDT        DATE                          DEFAULT SYSDATE,
  LASTEDITBY      VARCHAR2(32 CHAR),
  LASTEDITDT      DATE,
  INSPECTQTY      NUMBER(18,5)                  DEFAULT (0),
  ISINSPECT       NUMBER(1)                     DEFAULT (1),
  HASINSPECTED    NUMBER(1)                     DEFAULT 0,
  THIRDDPROCESS   NUMBER(5,2)                   DEFAULT 0,
  IQCPROCESS      NUMBER(5,2)                   DEFAULT 0
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.A2AGOODSRECEIVEINFO.IQCPROCESS IS 'IQC檢驗進度';


--
-- A2AGOODSRECEIVEPALLETINFO  (Table) 
--
--   Row Count: 42577
CREATE TABLE QMS.A2AGOODSRECEIVEPALLETINFO
(
  ID           CHAR(32 BYTE)                    DEFAULT sys_guid(),
  GRRECEIVEID  CHAR(32 BYTE),
  RECEIVENO    VARCHAR2(50 BYTE),
  PLANTID      VARCHAR2(32 CHAR)                DEFAULT (' '),
  PARTNO       NVARCHAR2(32)                    DEFAULT (' '),
  GRNO         VARCHAR2(50 CHAR)                DEFAULT (' '),
  VENDOR       NVARCHAR2(100),
  GRDATE       DATE,
  PALLETNO     VARCHAR2(500 CHAR),
  PALLETQTY    NUMBER(18,5)                     DEFAULT (0),
  UNIT         VARCHAR2(10 CHAR)                DEFAULT ('PCS'),
  CREATEBY     VARCHAR2(32 CHAR)                DEFAULT ('VMI'),
  CREATEDT     DATE                             DEFAULT SYSDATE,
  LASTEDITBY   VARCHAR2(32 CHAR),
  LASTEDITDT   DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- A2AMATERIALNAMEDEFECTMAPPING  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.A2AMATERIALNAMEDEFECTMAPPING
(
  ID                 CHAR(32 CHAR)              DEFAULT sys_guid(),
  PARTCATEGORYCODE   VARCHAR2(20 CHAR),
  DEFECTTYPE         NVARCHAR2(40),
  DEFECTDESCRIPTION  NVARCHAR2(1000),
  CREATEBY           NVARCHAR2(100),
  CREATEDT           DATE,
  LASTEDITBY         NVARCHAR2(100),
  LASTEDITDT         DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.A2AMATERIALNAMEDEFECTMAPPING.PARTCATEGORYCODE IS '物料類別code';

COMMENT ON COLUMN QMS.A2AMATERIALNAMEDEFECTMAPPING.DEFECTTYPE IS '不良類型';

COMMENT ON COLUMN QMS.A2AMATERIALNAMEDEFECTMAPPING.DEFECTDESCRIPTION IS '不良描述';


--
-- A2AONSITEIQCBASICINFO  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.A2AONSITEIQCBASICINFO
(
  PLANTID         VARCHAR2(32 CHAR)             DEFAULT (' '),
  PARTNO          NVARCHAR2(32)                 DEFAULT (' '),
  CUSTOMERPARTNO  NVARCHAR2(32)                 DEFAULT (' '),
  PARTCATEGORY    NVARCHAR2(20)                 DEFAULT (' '),
  PARTTYPE        NVARCHAR2(20)                 DEFAULT (' '),
  PARTNAME        NVARCHAR2(40)                 DEFAULT (' '),
  VENDOR          NVARCHAR2(100)                DEFAULT (' '),
  CREATEBY        VARCHAR2(32 CHAR)             DEFAULT (' '),
  CREATEDT        DATE                          DEFAULT SYSDATE,
  LASTEDITBY      VARCHAR2(32 CHAR),
  LASTEDITDT      DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- A2APRODMATERIALGROUP  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.A2APRODMATERIALGROUP
(
  ID                CHAR(32 CHAR)               DEFAULT sys_guid(),
  PARTCATEGORYCODE  VARCHAR2(20 CHAR),
  PARTCATEGORY      NVARCHAR2(100),
  LEVEL_            NUMBER(10),
  PARENTCODE        VARCHAR2(20 CHAR),
  PLANTID           VARCHAR2(20 CHAR),
  CREATEBY          VARCHAR2(32 CHAR),
  CREATEDT          DATE                        DEFAULT SYSDATE,
  LASTEDITBY        VARCHAR2(32 CHAR),
  LASTEDITDT        DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.A2APRODMATERIALGROUP.LEVEL_ IS 'ORIGINAL NAME:Level';


--
-- A2APRODMATERIALMASTER  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.A2APRODMATERIALMASTER
(
  DATASOURCE                VARCHAR2(15 BYTE),
  PLANTID                   VARCHAR2(10 BYTE),
  PARTNO                    VARCHAR2(32 BYTE),
  PARTREV                   NVARCHAR2(10),
  PARTDESC                  NVARCHAR2(255),
  CUSTOMERPARTNO            VARCHAR2(32 BYTE),
  CUSTOMERPARTREV           NVARCHAR2(10),
  MANUFACTURERPN            VARCHAR2(32 BYTE),
  MANUFACTUERMODEL          NVARCHAR2(50),
  MANUFACTUERNAME           NVARCHAR2(100),
  PARTCATEGORY              NVARCHAR2(100),
  MATERIALTYPEID            CHAR(32 BYTE),
  MATERIALNAMEID            CHAR(32 BYTE),
  PRODUCT                   NVARCHAR2(60),
  VENDORCODE                VARCHAR2(32 BYTE),
  VENDORADDRESS             NVARCHAR2(100),
  COLOR                     NVARCHAR2(20),
  ISKEYPART                 NUMBER(1)           DEFAULT (0),
  ISNEWPART                 NUMBER(1)           DEFAULT (0),
  ISINSITEPART              NUMBER(1)           DEFAULT (0),
  IS3DINSPECTION            NUMBER(1)           DEFAULT (1),
  ISVISUALINSPECTION        NUMBER(1)           DEFAULT (1),
  VISUALSAMPLING            VARCHAR2(32 BYTE),
  VISUALAQL                 VARCHAR2(20 BYTE),
  ISVISUALSUMINSPECTION     NUMBER(1)           DEFAULT (0),
  ISFUNCTIONINSPECTION      NUMBER(1)           DEFAULT (1),
  FUNCTIONSAMPLING          VARCHAR2(32 BYTE),
  FUNCTIONAQL               VARCHAR2(20 BYTE),
  ISFUNCTIONSUMINSPECTION   NUMBER(1)           DEFAULT (0),
  ISDIMENSIONINSPECTION     NUMBER(1)           DEFAULT (1),
  DIMENSIONSAMPLING         VARCHAR2(32 BYTE),
  DIMENSIONAQL              VARCHAR2(20 BYTE),
  ISDIMENSIONSUMINSPECTION  NUMBER(1)           DEFAULT (0),
  ISPACKINGINSPECTION       NUMBER(1)           DEFAULT (1),
  PACKINGSAMPLING           VARCHAR2(32 BYTE),
  PACKINGAQL                VARCHAR2(20 BYTE),
  ISPACKINGSUMINSPECTION    NUMBER(1)           DEFAULT (0),
  GOALDPPM                  NUMBER(10)          DEFAULT (0),
  ISRETURNPART              NUMBER(1)           DEFAULT (0),
  CREATEDT                  DATE                DEFAULT SYSDATE,
  CREATEBY                  VARCHAR2(32 BYTE)   DEFAULT '',
  LASTEDITDT                DATE,
  LASTEDITBY                VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- A2APRODMATERIALMASTER_BAK  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.A2APRODMATERIALMASTER_BAK
(
  DATASOURCE         VARCHAR2(15 CHAR)          DEFAULT (' '),
  PLANTID            NVARCHAR2(32)              DEFAULT (' '),
  PARTNO             NVARCHAR2(32)              DEFAULT (' '),
  PARTCATEGORY       NVARCHAR2(256)             DEFAULT (' '),
  PARTREV            NVARCHAR2(10)              DEFAULT (' '),
  PARTDESC           NVARCHAR2(256)             DEFAULT (' '),
  PRODUCTTYPE        NVARCHAR2(20)              DEFAULT (' '),
  MATERIALTYPE       NVARCHAR2(20)              DEFAULT (' '),
  SOURCETYPE         NVARCHAR2(20)              DEFAULT (' '),
  ISSKUAPPROVED      NUMBER(1)                  DEFAULT (0),
  VENDORCODE         NVARCHAR2(40)              DEFAULT (' '),
  UPCODE             NVARCHAR2(32)              DEFAULT (' '),
  EEECODE            NVARCHAR2(40)              DEFAULT (' '),
  ISTAXEXEMPT        NUMBER(1)                  DEFAULT (0),
  TAXCODE            NVARCHAR2(40)              DEFAULT (' '),
  MAINWAREHOUSEID    NVARCHAR2(32)              DEFAULT (' '),
  UOM                VARCHAR2(50 CHAR)          DEFAULT (' '),
  WEIGHT             NUMBER(18,5)               DEFAULT (0),
  LENGTH             NUMBER(18,5)               DEFAULT (0),
  WIDTH              NUMBER(18,5)               DEFAULT (0),
  HEIGHT             NUMBER(18,5)               DEFAULT (0),
  ISBOMITEM          NUMBER(1)                  DEFAULT (0),
  ISVIRTUAL          NUMBER(1)                  DEFAULT (0),
  ISJITITEM          NUMBER(1)                  DEFAULT (0),
  ISOOD              NUMBER(1)                  DEFAULT (0),
  OODDATE            DATE,
  ISMATERIAL         NUMBER(1)                  DEFAULT (0),
  ISCONSUMPTIONITEM  NUMBER(1)                  DEFAULT (0),
  ISPACKMATERIAL     NUMBER(1)                  DEFAULT (0),
  CURRENCYTYPE       NVARCHAR2(20)              DEFAULT (' '),
  STDCOST            NUMBER(18,5)               DEFAULT (0),
  STDPRICE           NUMBER(18,5)               DEFAULT (0),
  UNITCOST           NUMBER(18,5)               DEFAULT (0),
  UNITPRICE          NUMBER(18,5)               DEFAULT (0),
  GRAPHICLINK        NVARCHAR2(100)             DEFAULT (' '),
  CUSTOMERPARTNO     NVARCHAR2(32)              DEFAULT (' '),
  CUSTOMERREV        NVARCHAR2(10)              DEFAULT (' '),
  ABCCODE            NVARCHAR2(40)              DEFAULT (' '),
  ISKEYPART          NUMBER(1)                  DEFAULT (0),
  RFA                VARCHAR2(50 CHAR)          DEFAULT (' '),
  OTHERCATEGORYNAME  NVARCHAR2(20)              DEFAULT (' '),
  PRODUCTIONGROUP    VARCHAR2(50 CHAR)          DEFAULT (' '),
  GROSSWEIGHT        NUMBER(18,5)               DEFAULT (0),
  WEIGHTUNIT         VARCHAR2(20 CHAR)          DEFAULT (' '),
  ASSEMBLYCODE       VARCHAR2(50 CHAR)          DEFAULT (' '),
  UPCCODE2           NVARCHAR2(40)              DEFAULT (' '),
  MRPGROUP           VARCHAR2(10 CHAR)          DEFAULT (' '),
  MRPCONTROLLER      VARCHAR2(10 CHAR)          DEFAULT (' '),
  PRODSCHEDULE       VARCHAR2(20 CHAR)          DEFAULT (' '),
  UOMOFDIM           VARCHAR2(10 CHAR)          DEFAULT (' '),
  SERIALPROFILE      VARCHAR2(50 CHAR)          DEFAULT (' '),
  COMMODITYCODE      NVARCHAR2(40)              DEFAULT (' '),
  PROCUREMENTTYPE    NVARCHAR2(20)              DEFAULT (' '),
  KITSLOC            NVARCHAR2(100)             DEFAULT (' '),
  OTHERDATE          VARCHAR2(10 CHAR)          DEFAULT (' '),
  OTHERTIME          VARCHAR2(10 CHAR)          DEFAULT (' '),
  ROHSFLAG           VARCHAR2(10 CHAR)          DEFAULT (' '),
  MANUFACTURERPN     NVARCHAR2(50)              DEFAULT (' '),
  MANUFACTUERMODEL   VARCHAR2(50 CHAR)          DEFAULT (' '),
  MANUFACTUERNAME    NVARCHAR2(100)             DEFAULT (' '),
  CTREV              NVARCHAR2(255)             DEFAULT (' '),
  CTSTIECODE         NVARCHAR2(255)             DEFAULT (' '),
  ISHOLD             NUMBER(1)                  DEFAULT (0),
  PARTCATEGORYCODE   NVARCHAR2(20),
  FILED1             VARCHAR2(10 CHAR)          DEFAULT (' '),
  FILED2             NVARCHAR2(1000)            DEFAULT (' '),
  FILED3             NVARCHAR2(256)             DEFAULT (' '),
  CREATEBY           NVARCHAR2(32)              DEFAULT (' '),
  CREATEDT           DATE                       DEFAULT SYSDATE,
  LASTEDITBY         NVARCHAR2(32),
  LASTEDITDT         DATE,
  ISRETURNPART       NUMBER(1)                  DEFAULT (0)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.A2APRODMATERIALMASTER_BAK.PARTCATEGORY IS '昜蹋??';


--
-- A2APURCHASEITEM  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.A2APURCHASEITEM
(
  DATASOURCE       VARCHAR2(15 CHAR)            DEFAULT (' '),
  PLANTID          VARCHAR2(32 CHAR)            DEFAULT (' '),
  PONO             VARCHAR2(40 CHAR)            DEFAULT (' '),
  ITEMNO           VARCHAR2(10 CHAR)            DEFAULT (' '),
  PARTNO           NVARCHAR2(32)                DEFAULT (' '),
  SCHEDULELINE     VARCHAR2(5 CHAR)             DEFAULT '0001',
  PURCHASEDOCDATE  DATE,
  ORDERQTY         NUMBER(18,5)                 DEFAULT (0),
  WAREHOUSEID      VARCHAR2(32 CHAR)            DEFAULT (' '),
  VENDORPARTNO     NVARCHAR2(32)                DEFAULT (' '),
  UNITPRICE        NUMBER(18,5)                 DEFAULT (0),
  PRICEUNIT        VARCHAR2(10 CHAR)            DEFAULT (' '),
  RECEIVEDQTY      NUMBER(18,5)                 DEFAULT (0),
  ISGRCOMPLETE     NUMBER(1)                    DEFAULT (0),
  QTYUNIT          VARCHAR2(10 CHAR)            DEFAULT (' '),
  UNITEXCHAGERATE  NUMBER(18,5)                 DEFAULT (1),
  PRNO             VARCHAR2(40 CHAR)            DEFAULT (' '),
  PRITEM           VARCHAR2(10 CHAR)            DEFAULT (' '),
  ISDEL            NUMBER(1)                    DEFAULT (0),
  CREATEBY         VARCHAR2(32 CHAR)            DEFAULT (' '),
  CREATEDT         DATE                         DEFAULT SYSDATE,
  LASTEDITBY       VARCHAR2(32 CHAR),
  LASTEDITDT       DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- A2AVENDORMASTER  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.A2AVENDORMASTER
(
  DATASOURCE     VARCHAR2(15 CHAR),
  PLANTID        VARCHAR2(32 CHAR),
  VENDORCODE     VARCHAR2(40 CHAR)              DEFAULT (' '),
  ORGCODE        VARCHAR2(40 CHAR)              DEFAULT (' '),
  COMPANY        VARCHAR2(10 CHAR)              DEFAULT (' '),
  ROLEID         VARCHAR2(10 CHAR)              DEFAULT (' '),
  VENDORNAME     NVARCHAR2(100)                 DEFAULT (' '),
  SHORTNAME      NVARCHAR2(40)                  DEFAULT (' '),
  ALTNAME        NVARCHAR2(100)                 DEFAULT (' '),
  REFERENCECODE  VARCHAR2(40 CHAR)              DEFAULT (' '),
  BUSINESSTYPE   VARCHAR2(40 CHAR)              DEFAULT (' '),
  PAYMENTTERM    VARCHAR2(40 CHAR)              DEFAULT (' '),
  TAXID          VARCHAR2(40 CHAR)              DEFAULT (' '),
  STREET1        NVARCHAR2(800)                 DEFAULT (' '),
  STREET2        NVARCHAR2(800)                 DEFAULT (' '),
  CITY           NVARCHAR2(100)                 DEFAULT (' '),
  STATE          NVARCHAR2(100)                 DEFAULT (' '),
  ZIPCODE        VARCHAR2(40 CHAR)              DEFAULT (' '),
  COUNTRY        NVARCHAR2(100)                 DEFAULT (' '),
  FAX            VARCHAR2(40 CHAR)              DEFAULT (' '),
  PHONE          VARCHAR2(40 CHAR)              DEFAULT (' '),
  WEBURL         VARCHAR2(50 CHAR)              DEFAULT (' '),
  ISVALIDAVL     NUMBER(1)                      DEFAULT (0),
  LEADTIME       NUMBER(15,5)                   DEFAULT (0),
  CREATEBY       VARCHAR2(32 CHAR)              DEFAULT (' '),
  CREATEDT       DATE                           DEFAULT SYSDATE,
  LASTEDITBY     VARCHAR2(32 CHAR),
  LASTEDITDT     DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- APPVERSION  (Table) 
--
--   Row Count: 1
CREATE TABLE QMS.APPVERSION
(
  ID           CHAR(32 BYTE)                    DEFAULT sys_guid(),
  PLATFORM     VARCHAR2(30 BYTE),
  APPNAME      NVARCHAR2(100),
  APPVERSION   VARCHAR2(30 BYTE),
  DOWNLOADURL  VARCHAR2(200 BYTE),
  UPGRADEBY    VARCHAR2(30 BYTE),
  UPGRADEDATE  DATE                             DEFAULT sysdate,
  CREATEBY     VARCHAR2(30 BYTE),
  CREATEDATE   DATE                             DEFAULT SYSDATE,
  REMARK       NVARCHAR2(1000)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- ESYSCODE  (Table) 
--
--   Row Count: 308
CREATE TABLE QMS.ESYSCODE
(
  CODEID        CHAR(32 CHAR)                   DEFAULT sys_guid(),
  PLANTID       VARCHAR2(32 CHAR)               DEFAULT 'ALL',
  CODEVALUE     NVARCHAR2(100)                  DEFAULT (' '),
  CODETYPE      NVARCHAR2(50)                   DEFAULT (' '),
  CODECATEGORY  NVARCHAR2(40)                   DEFAULT (' '),
  CODESEQNO     VARCHAR2(10 CHAR)               DEFAULT '10',
  CODEINFO      NVARCHAR2(256)                  DEFAULT (' '),
  CODEINFO2     NVARCHAR2(256)                  DEFAULT (' '),
  CREATEBY      VARCHAR2(32 CHAR)               DEFAULT (' '),
  CREATEDT      DATE                            DEFAULT SYSDATE,
  LASTEDITBY    VARCHAR2(32 CHAR),
  LASTEDITDT    DATE,
  REFVALUE      NVARCHAR2(100)                  DEFAULT (' ')
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.ESYSCODE.CODEID IS 'ID';

COMMENT ON COLUMN QMS.ESYSCODE.CODEVALUE IS 'Code ?, ????';

COMMENT ON COLUMN QMS.ESYSCODE.CODETYPE IS 'Code ??';

COMMENT ON COLUMN QMS.ESYSCODE.CODECATEGORY IS 'Code??Group';

COMMENT ON COLUMN QMS.ESYSCODE.CODESEQNO IS 'Code???Group?????';

COMMENT ON COLUMN QMS.ESYSCODE.CODEINFO IS 'Code ????';

COMMENT ON COLUMN QMS.ESYSCODE.CODEINFO2 IS 'Code????(?????????????????????????????)';

COMMENT ON COLUMN QMS.ESYSCODE.CREATEBY IS '????????';

COMMENT ON COLUMN QMS.ESYSCODE.CREATEDT IS '????????';

COMMENT ON COLUMN QMS.ESYSCODE.LASTEDITBY IS '????????????';

COMMENT ON COLUMN QMS.ESYSCODE.LASTEDITDT IS '????????????';


--
-- ESYSCODECATEGORY  (Table) 
--
--   Row Count: 12
CREATE TABLE QMS.ESYSCODECATEGORY
(
  CODETYPE       NVARCHAR2(20)                  DEFAULT (' '),
  CODECATEGORY   NVARCHAR2(40)                  DEFAULT (' '),
  CATEGORYINFO   NVARCHAR2(256)                 DEFAULT (' '),
  CATEGORYINFO2  NVARCHAR2(256)                 DEFAULT (' '),
  CREATEBY       VARCHAR2(32 CHAR)              DEFAULT (' '),
  CREATEDT       DATE                           DEFAULT SYSDATE,
  LASTEDITBY     VARCHAR2(32 CHAR),
  LASTEDITDT     DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.ESYSCODECATEGORY.CODETYPE IS 'Code ??, ????';

COMMENT ON COLUMN QMS.ESYSCODECATEGORY.CODECATEGORY IS 'Code??Group, ????';

COMMENT ON COLUMN QMS.ESYSCODECATEGORY.CATEGORYINFO IS 'Code ????';

COMMENT ON COLUMN QMS.ESYSCODECATEGORY.CATEGORYINFO2 IS 'Code????(?????????????????????????????)';

COMMENT ON COLUMN QMS.ESYSCODECATEGORY.CREATEBY IS '????????';

COMMENT ON COLUMN QMS.ESYSCODECATEGORY.CREATEDT IS '????????';

COMMENT ON COLUMN QMS.ESYSCODECATEGORY.LASTEDITBY IS '????????????';

COMMENT ON COLUMN QMS.ESYSCODECATEGORY.LASTEDITDT IS '????????????';


--
-- ESYSCONTROLVALUE  (Table) 
--
--   Row Count: 1
CREATE TABLE QMS.ESYSCONTROLVALUE
(
  CONTROLID       CHAR(32 CHAR)                 DEFAULT sys_guid(),
  CONTROLCODE     VARCHAR2(40 CHAR)             DEFAULT (' '),
  CONTROLVALUE    VARCHAR2(40 CHAR)             DEFAULT (' '),
  CONTROLTYPE     VARCHAR2(20 CHAR)             DEFAULT (' '),
  CONTROLSEQNO    VARCHAR2(10 CHAR)             DEFAULT '1',
  ISGROUPDEFAULT  NUMBER(1)                     DEFAULT (0),
  DESCRIPTION     NVARCHAR2(256)                DEFAULT (' '),
  CREATEBY        VARCHAR2(32 CHAR)             DEFAULT (' '),
  CREATEDT        DATE                          DEFAULT SYSDATE,
  LASTEDITBY      VARCHAR2(32 CHAR),
  LASTEDITDT      DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.ESYSCONTROLVALUE.CONTROLCODE IS '????????,????';

COMMENT ON COLUMN QMS.ESYSCONTROLVALUE.CONTROLVALUE IS '???????,????';

COMMENT ON COLUMN QMS.ESYSCONTROLVALUE.CONTROLTYPE IS '????????????????????SINGLE  ???????MULTIPLE';

COMMENT ON COLUMN QMS.ESYSCONTROLVALUE.CONTROLSEQNO IS '???????????????MULTIPLE ???';

COMMENT ON COLUMN QMS.ESYSCONTROLVALUE.ISGROUPDEFAULT IS '??MULTIPLE ???????????????????';

COMMENT ON COLUMN QMS.ESYSCONTROLVALUE.DESCRIPTION IS '????????????';

COMMENT ON COLUMN QMS.ESYSCONTROLVALUE.CREATEBY IS '????????';

COMMENT ON COLUMN QMS.ESYSCONTROLVALUE.CREATEDT IS '????????';

COMMENT ON COLUMN QMS.ESYSCONTROLVALUE.LASTEDITBY IS '????????????';

COMMENT ON COLUMN QMS.ESYSCONTROLVALUE.LASTEDITDT IS '????????????';


--
-- ESYSDEPARTMENTINFO  (Table) 
--
--   Row Count: 2
CREATE TABLE QMS.ESYSDEPARTMENTINFO
(
  ID              CHAR(32 CHAR)                 DEFAULT sys_guid(),
  DEPARTMENTCODE  VARCHAR2(40 CHAR),
  PLANTCODE       VARCHAR2(40 CHAR)             DEFAULT (' '),
  CUSTOMERCODE    VARCHAR2(40 CHAR)             DEFAULT (' '),
  DESCRIPTION     NVARCHAR2(256)                DEFAULT (' '),
  LOCATIONCODE    VARCHAR2(40 CHAR)             DEFAULT (' '),
  COSTCODE        VARCHAR2(40 CHAR)             DEFAULT (' '),
  CREATEBY        VARCHAR2(32 CHAR)             DEFAULT (' '),
  CREATEDT        DATE                          DEFAULT SYSDATE,
  LASTEDITBY      VARCHAR2(32 CHAR),
  LASTEDITDT      DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.ESYSDEPARTMENTINFO.DEPARTMENTCODE IS '????';

COMMENT ON COLUMN QMS.ESYSDEPARTMENTINFO.PLANTCODE IS '????';

COMMENT ON COLUMN QMS.ESYSDEPARTMENTINFO.CUSTOMERCODE IS '????';

COMMENT ON COLUMN QMS.ESYSDEPARTMENTINFO.DESCRIPTION IS '??????';

COMMENT ON COLUMN QMS.ESYSDEPARTMENTINFO.LOCATIONCODE IS 'Location Code';

COMMENT ON COLUMN QMS.ESYSDEPARTMENTINFO.COSTCODE IS '????';

COMMENT ON COLUMN QMS.ESYSDEPARTMENTINFO.CREATEBY IS '????????';

COMMENT ON COLUMN QMS.ESYSDEPARTMENTINFO.CREATEDT IS '????????';

COMMENT ON COLUMN QMS.ESYSDEPARTMENTINFO.LASTEDITBY IS '????????????';

COMMENT ON COLUMN QMS.ESYSDEPARTMENTINFO.LASTEDITDT IS '????????????';


--
-- ESYSINSPECTZONE  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.ESYSINSPECTZONE
(
  ID           CHAR(32 CHAR)                    DEFAULT sys_guid(),
  PLANTID      VARCHAR2(32 CHAR)                DEFAULT (' '),
  INSPECTZONE  NVARCHAR2(100)                   DEFAULT (' '),
  CREATEBY     NVARCHAR2(100)                   DEFAULT (' '),
  CREATEDT     DATE,
  LASTEDITBY   NVARCHAR2(100),
  LASTEDITDT   DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- ESYSSEQNO  (Table) 
--
--   Row Count: 2
CREATE TABLE QMS.ESYSSEQNO
(
  SEQNOCODE     VARCHAR2(40 CHAR)               DEFAULT (' '),
  DESCRIPTION   NVARCHAR2(256)                  DEFAULT (' '),
  CURRENTSEQNO  VARCHAR2(40 CHAR)               DEFAULT (' '),
  DIGITS        NUMBER(10)                      DEFAULT (1),
  MINIMUM       VARCHAR2(40 CHAR)               DEFAULT (' '),
  MAXIMUM       VARCHAR2(40 CHAR)               DEFAULT (' '),
  PREFIXED      VARCHAR2(40 CHAR)               DEFAULT (' '),
  FORMTYPE      VARCHAR2(20 CHAR)               DEFAULT (' '),
  CREATEBY      VARCHAR2(32 CHAR)               DEFAULT (' '),
  CREATEDT      DATE                            DEFAULT SYSDATE,
  LASTEDITBY    VARCHAR2(32 CHAR),
  LASTEDITDT    DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.ESYSSEQNO.SEQNOCODE IS '????????';

COMMENT ON COLUMN QMS.ESYSSEQNO.DESCRIPTION IS '???????';

COMMENT ON COLUMN QMS.ESYSSEQNO.CURRENTSEQNO IS '??????????';

COMMENT ON COLUMN QMS.ESYSSEQNO.DIGITS IS '?????????';

COMMENT ON COLUMN QMS.ESYSSEQNO.MINIMUM IS '??????????';

COMMENT ON COLUMN QMS.ESYSSEQNO.MAXIMUM IS '??????????';

COMMENT ON COLUMN QMS.ESYSSEQNO.PREFIXED IS '???????';

COMMENT ON COLUMN QMS.ESYSSEQNO.FORMTYPE IS '?????????';

COMMENT ON COLUMN QMS.ESYSSEQNO.CREATEBY IS '????????';

COMMENT ON COLUMN QMS.ESYSSEQNO.CREATEDT IS '????????';

COMMENT ON COLUMN QMS.ESYSSEQNO.LASTEDITBY IS '????????????';

COMMENT ON COLUMN QMS.ESYSSEQNO.LASTEDITDT IS '????????????';


--
-- ESYSUSERDEPARTMENT  (Table) 
--
--   Row Count: 728
CREATE TABLE QMS.ESYSUSERDEPARTMENT
(
  ID              CHAR(32 CHAR)                 DEFAULT sys_guid(),
  USERNAME        VARCHAR2(32 CHAR)             DEFAULT (' '),
  DEPARTMENTCODE  VARCHAR2(40 CHAR)             DEFAULT (' '),
  CREATEBY        VARCHAR2(32 CHAR)             DEFAULT (' '),
  CREATEDT        DATE                          DEFAULT SYSDATE,
  LASTEDITBY      VARCHAR2(32 CHAR),
  LASTEDITDT      DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.ESYSUSERDEPARTMENT.USERNAME IS '?????????';

COMMENT ON COLUMN QMS.ESYSUSERDEPARTMENT.DEPARTMENTCODE IS '????';

COMMENT ON COLUMN QMS.ESYSUSERDEPARTMENT.CREATEBY IS '????????';

COMMENT ON COLUMN QMS.ESYSUSERDEPARTMENT.CREATEDT IS '????????';

COMMENT ON COLUMN QMS.ESYSUSERDEPARTMENT.LASTEDITBY IS '????????????';

COMMENT ON COLUMN QMS.ESYSUSERDEPARTMENT.LASTEDITDT IS '????????????';


--
-- MDAREA  (Table) 
--
--   Row Count: 2
CREATE TABLE QMS.MDAREA
(
  ID          CHAR(32 BYTE)                     DEFAULT sys_guid(),
  PLANTID     VARCHAR2(10 BYTE),
  AREA        NVARCHAR2(100),
  CREATEDT    DATE                              DEFAULT SYSDATE,
  CREATEBY    VARCHAR2(32 BYTE)                 DEFAULT '',
  LASTEDITDT  DATE,
  LASTEDITBY  VARCHAR2(32 BYTE),
  MAILLOOP1   NCLOB,
  MAILLOOP2   NCLOB
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.MDAREA.PLANTID IS '馱測徨';

COMMENT ON COLUMN QMS.MDAREA.AREA IS '?郖靡想';


--
-- MDCONFIRMOWNER  (Table) 
--
--   Row Count: 839
CREATE TABLE QMS.MDCONFIRMOWNER
(
  ID           CHAR(32 BYTE)                    DEFAULT sys_guid(),
  PLANTID      VARCHAR2(10 BYTE),
  NAME         NVARCHAR2(100),
  NAMEID       VARCHAR2(32 BYTE),
  DESCRIPTION  NVARCHAR2(256),
  PARENTID     CHAR(32 BYTE),
  PARENTIDS    VARCHAR2(150 BYTE),
  TYPELEVEL    NUMBER                           DEFAULT 0,
  CREATEDT     DATE                             DEFAULT SYSDATE,
  CREATEBY     VARCHAR2(32 BYTE)                DEFAULT '',
  LASTEDITDT   DATE,
  LASTEDITBY   VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- MDCONFIRMOWNERHIST  (Table) 
--
--   Row Count: 1
CREATE TABLE QMS.MDCONFIRMOWNERHIST
(
  ID           CHAR(32 BYTE)                    DEFAULT sys_guid(),
  PLANTID      VARCHAR2(10 BYTE),
  NAME         NVARCHAR2(100),
  NAMEID       VARCHAR2(32 BYTE),
  DESCRIPTION  NVARCHAR2(256),
  PARENTID     CHAR(32 BYTE),
  PARENTIDS    VARCHAR2(150 BYTE),
  TYPELEVEL    NUMBER                           DEFAULT 0,
  CREATEDT     DATE                             DEFAULT SYSDATE,
  CREATEBY     VARCHAR2(32 BYTE)                DEFAULT '',
  LASTEDITDT   DATE,
  LASTEDITBY   VARCHAR2(32 BYTE),
  LOGDT        DATE,
  LOGBY        VARCHAR2(32 BYTE),
  LOGID        CHAR(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- MDDEPARTMENT  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.MDDEPARTMENT
(
  ID                CHAR(32 BYTE)               DEFAULT sys_guid(),
  PLANTID           VARCHAR2(10 BYTE),
  DEPARTMENTNAME    NVARCHAR2(100),
  DEPARTMENTLEADER  NVARCHAR2(30),
  CREATEDT          DATE                        DEFAULT SYSDATE,
  CREATEBY          VARCHAR2(32 BYTE)           DEFAULT '',
  LASTEDITDT        DATE,
  LASTEDITBY        VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.MDDEPARTMENT.PLANTID IS '馱測徨';

COMMENT ON COLUMN QMS.MDDEPARTMENT.DEPARTMENTNAME IS '靡想';

COMMENT ON COLUMN QMS.MDDEPARTMENT.DEPARTMENTLEADER IS '???';


--
-- MDDEPARTMENTLEADER  (Table) 
--
--   Row Count: 4
CREATE TABLE QMS.MDDEPARTMENTLEADER
(
  ID                CHAR(32 BYTE)               DEFAULT sys_guid(),
  PLANTID           VARCHAR2(10 BYTE),
  DEPARTMENTID      CHAR(32 BYTE),
  DEPARTMENTLEADER  NVARCHAR2(30),
  CREATEDT          DATE                        DEFAULT SYSDATE,
  CREATEBY          VARCHAR2(32 BYTE)           DEFAULT '',
  LASTEDITDT        DATE,
  LASTEDITBY        VARCHAR2(32 BYTE),
  USERID            VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- MDDIALYMANPOWER  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.MDDIALYMANPOWER
(
  ID           CHAR(32 BYTE)                    DEFAULT sys_guid(),
  PLANTID      VARCHAR2(32 BYTE),
  SUPERVISEID  VARCHAR2(32 BYTE),
  SUPERVISOR   NVARCHAR2(30),
  WORKDATE     DATE,
  QTY          NUMBER(20,2)                     DEFAULT 0,
  CREATEBY     VARCHAR2(32 BYTE)                DEFAULT '',
  CREATEDT     DATE                             DEFAULT SYSDATE,
  LASTEDITDT   DATE,
  LASTEDITBY   VARCHAR2(32 BYTE),
  YEAR         VARCHAR2(4 BYTE),
  WEEK         VARCHAR2(2 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- MDERRORCODE  (Table) 
--
--   Row Count: 1047
CREATE TABLE QMS.MDERRORCODE
(
  ID            CHAR(32 BYTE)                   DEFAULT sys_guid(),
  PLANTID       VARCHAR2(10 BYTE),
  ERRORCODE     VARCHAR2(15 BYTE),
  ERRORNAME     NVARCHAR2(100),
  DESCRIPTION   NVARCHAR2(256),
  ERRORTYPE     VARCHAR2(32 BYTE),
  GROUPTYPE     VARCHAR2(32 BYTE),
  CREATEDT      DATE                            DEFAULT SYSDATE,
  CREATEBY      VARCHAR2(32 BYTE)               DEFAULT '',
  LASTEDITDT    DATE,
  LASTEDITBY    VARCHAR2(32 BYTE),
  GROUPTYPESEQ  INTEGER                         DEFAULT 0
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.MDERRORCODE.PLANTID IS '馱測徨';

COMMENT ON COLUMN QMS.MDERRORCODE.ERRORCODE IS '祥謎測徨';

COMMENT ON COLUMN QMS.MDERRORCODE.ERRORNAME IS '祥謎政砓';

COMMENT ON COLUMN QMS.MDERRORCODE.DESCRIPTION IS '鏡扴ㄛ褫蚚?湔?荎恅?桽政砓';

COMMENT ON COLUMN QMS.MDERRORCODE.ERRORTYPE IS '祥謎?倰';

COMMENT ON COLUMN QMS.MDERRORCODE.GROUPTYPE IS '祥謎煦瞎ㄛIQC?蕣鋤荾?昜蹋瞎靡';


--
-- MDFLOOR  (Table) 
--
--   Row Count: 6
CREATE TABLE QMS.MDFLOOR
(
  ID          CHAR(32 BYTE)                     DEFAULT sys_guid(),
  PLANTID     VARCHAR2(10 BYTE),
  AREAID      CHAR(32 BYTE),
  FLOOR       NVARCHAR2(100),
  CREATEDT    DATE                              DEFAULT SYSDATE,
  CREATEBY    VARCHAR2(32 BYTE)                 DEFAULT '',
  LASTEDITDT  DATE,
  LASTEDITBY  VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.MDFLOOR.PLANTID IS '馱測徨';

COMMENT ON COLUMN QMS.MDFLOOR.AREAID IS '??垀??郖Id';

COMMENT ON COLUMN QMS.MDFLOOR.FLOOR IS '??靡想';


--
-- MDGROUP  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.MDGROUP
(
  ID             CHAR(32 BYTE)                  DEFAULT sys_guid(),
  PLANTID        VARCHAR2(10 BYTE),
  SUPERVISEID    CHAR(32 BYTE),
  GROUPNAME      NVARCHAR2(100),
  GROUPOWNER     NVARCHAR2(30),
  MAPPINGLINEID  CHAR(32 BYTE),
  CREATEDT       DATE                           DEFAULT SYSDATE,
  CREATEBY       VARCHAR2(32 BYTE)              DEFAULT '',
  LASTEDITDT     DATE,
  LASTEDITBY     VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.MDGROUP.PLANTID IS '馱測徨';

COMMENT ON COLUMN QMS.MDGROUP.SUPERVISEID IS '垀?掝?Id';

COMMENT ON COLUMN QMS.MDGROUP.GROUPNAME IS '靡想';

COMMENT ON COLUMN QMS.MDGROUP.GROUPOWNER IS '???';

COMMENT ON COLUMN QMS.MDGROUP.MAPPINGLINEID IS '??腔??Id';


--
-- MDGROUPOWNER  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.MDGROUPOWNER
(
  ID          CHAR(32 BYTE)                     DEFAULT sys_guid(),
  PLANTID     VARCHAR2(10 BYTE),
  GROUPID     CHAR(32 BYTE),
  GROUPOWNER  NVARCHAR2(30),
  CREATEDT    DATE                              DEFAULT SYSDATE,
  CREATEBY    VARCHAR2(32 BYTE)                 DEFAULT '',
  LASTEDITDT  DATE,
  LASTEDITBY  VARCHAR2(32 BYTE),
  SHIFT       VARCHAR2(10 BYTE),
  USERID      VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- MDIQCREPORTGOAL  (Table) 
--
--   Row Count: 4
CREATE TABLE QMS.MDIQCREPORTGOAL
(
  ID              CHAR(32 BYTE)                 DEFAULT sys_guid(),
  MATERIALTYPE    VARCHAR2(200 BYTE),
  YEAR            INTEGER,
  GOAL            NUMBER(18,3),
  DELFLAG         NUMBER(1)                     DEFAULT 0,
  CREATEBY        VARCHAR2(32 BYTE),
  CREATEDT        DATE,
  LASTEDITBY      VARCHAR2(32 BYTE),
  LASTEDITDT      DATE,
  MATERIALTYPEID  CHAR(32 BYTE),
  PLANTID         VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- MDLINE  (Table) 
--
--   Row Count: 343
CREATE TABLE QMS.MDLINE
(
  ID              CHAR(32 BYTE)                 DEFAULT sys_guid(),
  PLANTID         VARCHAR2(10 BYTE),
  FLOORID         CHAR(32 BYTE),
  LINE            NVARCHAR2(100),
  CREATEDT        DATE                          DEFAULT SYSDATE,
  CREATEBY        VARCHAR2(32 BYTE)             DEFAULT '',
  LASTEDITDT      DATE,
  LASTEDITBY      VARCHAR2(32 BYTE),
  MAPPINGGROUPID  CHAR(32 BYTE),
  MFGLINENAME     NVARCHAR2(100),
  LINETYPE        VARCHAR2(20 BYTE)             DEFAULT 'Normal'
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.MDLINE.PLANTID IS '馱測徨';

COMMENT ON COLUMN QMS.MDLINE.FLOORID IS '??Id';

COMMENT ON COLUMN QMS.MDLINE.LINE IS '??靡想';


--
-- MDLINEQEOWNER  (Table) 
--
--   Row Count: 238
CREATE TABLE QMS.MDLINEQEOWNER
(
  ID          CHAR(32 BYTE)                     DEFAULT sys_guid(),
  PLANTID     VARCHAR2(10 BYTE),
  LINEID      CHAR(32 BYTE),
  QEOWNER     NVARCHAR2(30),
  SHIFT       VARCHAR2(10 BYTE),
  CREATEDT    DATE                              DEFAULT SYSDATE,
  CREATEBY    VARCHAR2(32 BYTE),
  LASTEDITDT  DATE,
  LASTEDITBY  VARCHAR2(32 BYTE),
  PEOWNER     NVARCHAR2(30)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- MDMATERIALBOM  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.MDMATERIALBOM
(
  ID               CHAR(32 BYTE)                DEFAULT sys_guid(),
  PLANTID          VARCHAR2(10 BYTE),
  PARTNO           VARCHAR2(32 BYTE),
  PARTREV          VARCHAR2(10 BYTE),
  MODEL            NVARCHAR2(32),
  PARTNAME         NVARCHAR2(100),
  CUSTOMERPARTNO   VARCHAR2(32 BYTE),
  CUSTOMERPARTREV  VARCHAR2(10 BYTE),
  CREATEDT         DATE                         DEFAULT SYSDATE,
  CREATEBY         VARCHAR2(32 BYTE)            DEFAULT '',
  LASTEDITDT       DATE,
  LASTEDITBY       VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- MDMATERIALBOMDETAIL  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.MDMATERIALBOMDETAIL
(
  ID            CHAR(32 BYTE)                   DEFAULT sys_guid(),
  PLANTID       VARCHAR2(10 BYTE),
  BOMID         CHAR(32 BYTE),
  BOMTYPE       VARCHAR2(20 BYTE),
  ITEM          NVARCHAR2(5),
  PARTNO        VARCHAR2(32 BYTE),
  PARTREV       VARCHAR2(10 BYTE),
  DESCRIPTION   NVARCHAR2(100),
  QTY           NUMBER,
  LOCATIONS     VARCHAR2(1000 BYTE),
  ISMASTERPART  NUMBER(1)                       DEFAULT (1),
  CREATEDT      DATE                            DEFAULT SYSDATE,
  CREATEBY      VARCHAR2(32 BYTE)               DEFAULT '',
  LASTEDITDT    DATE,
  LASTEDITBY    VARCHAR2(32 BYTE),
  VENDORCODE    NVARCHAR2(32),
  VENDORPARTNO  NVARCHAR2(32),
  ITEMINDEX     NUMBER(8)                       DEFAULT 1
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- MDMATERIALMASTER  (Table) 
--
--   Row Count: 1567
CREATE TABLE QMS.MDMATERIALMASTER
(
  ID                  CHAR(32 BYTE)             DEFAULT SYS_GUID(),
  PLANTID             VARCHAR2(10 BYTE),
  PARTNO              VARCHAR2(32 BYTE),
  PARTREV             NVARCHAR2(10)             DEFAULT '/',
  PARTDESC            NVARCHAR2(255),
  CUSTOMERPARTNO      VARCHAR2(32 BYTE),
  CUSTOMERPARTREV     NVARCHAR2(10),
  PARTCATEGORYID      NVARCHAR2(32),
  PARTCATEGORY        NVARCHAR2(100),
  MATERIALTYPEID      NVARCHAR2(32),
  MATERIALTYPE        NVARCHAR2(100),
  MATERIALNAMEID      NVARCHAR2(32),
  MATERIALNAME        NVARCHAR2(50),
  PRODUCT             NVARCHAR2(60)             DEFAULT '/',
  VENDORTYPE          VARCHAR2(20 BYTE),
  VENDOR              NVARCHAR2(100),
  VENDORCODE          VARCHAR2(32 BYTE),
  VENDORPARTNO        VARCHAR2(32 BYTE),
  VENDORPLACE         NVARCHAR2(100),
  COLOR               NVARCHAR2(20),
  GOALDPPM            NUMBER(10)                DEFAULT (0),
  ISINSITEPART        NUMBER(1)                 DEFAULT (0),
  ISKEYPART           NUMBER(1)                 DEFAULT (0),
  ISNEWPART           NUMBER(1)                 DEFAULT (0),
  ISRETURNPART        NUMBER(1)                 DEFAULT (0),
  ISHOLD              NUMBER(1)                 DEFAULT (0),
  CREATEDT            DATE                      DEFAULT SYSDATE,
  CREATEBY            VARCHAR2(32 BYTE),
  LASTEDITDT          DATE,
  LASTEDITBY          VARCHAR2(32 BYTE),
  ISALLOWSTS          NUMBER(1)                 DEFAULT 0,
  ISNOTUSEEEREPORT    NUMBER(1)                 DEFAULT 1,
  ROHSTESTFREQUENCY   INTEGER                   DEFAULT 0,
  ROHSFREQUENCYUNIT   NVARCHAR2(30)             DEFAULT '月',
  ROHSTESTRULE        NVARCHAR2(50),
  LASTROHSTESTDT      DATE,
  VMIVENDOR           NVARCHAR2(100),
  NEWCONTROLCOUNT     INTEGER                   DEFAULT 1,
  LONGCONTROLCOUNT    INTEGER                   DEFAULT 1,
  EXCEPCONTROLCOUNT   INTEGER                   DEFAULT 1,
  LONGCONTROLMONTHS   INTEGER                   DEFAULT 6,
  LATESTINCOMINGDATE  DATE,
  ISPREEXCEP          NUMBER(1)                 DEFAULT 0,
  NEWCONTROLSUM       INTEGER                   DEFAULT 0,
  LONGCONTROLSUM      INTEGER                   DEFAULT 0,
  EXCEPCONTROLSUM     INTEGER                   DEFAULT 0
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- MDMATERIALPRODUCT  (Table) 
--
--   Row Count: 34
CREATE TABLE QMS.MDMATERIALPRODUCT
(
  ID           CHAR(32 BYTE)                    DEFAULT sys_guid(),
  PLANTID      VARCHAR2(10 BYTE),
  PRODUCTNAME  NVARCHAR2(20),
  DESCRIPTION  NVARCHAR2(256),
  ISNEW        NUMBER(1)                        DEFAULT (0),
  ENABLE       NUMBER(1)                        DEFAULT (1),
  CREATEDT     DATE                             DEFAULT SYSDATE,
  CREATEBY     VARCHAR2(32 BYTE)                DEFAULT '',
  LASTEDITDT   DATE,
  LASTEDITBY   VARCHAR2(32 BYTE),
  PRODUCTTYPE  NVARCHAR2(20)                    DEFAULT 'Pyramid',
  PLATFORMID   VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- MDMATERIALSAMPLE  (Table) 
--
--   Row Count: 37
CREATE TABLE QMS.MDMATERIALSAMPLE
(
  ID                        CHAR(32 BYTE)       DEFAULT SYS_GUID(),
  PLANTID                   VARCHAR2(10 BYTE),
  MAPPINGID                 VARCHAR2(60 BYTE),
  MAPPINGTYPE               VARCHAR2(40 BYTE),
  ISKEYPART                 NUMBER(1)           DEFAULT (0),
  ISINSITEPART              NUMBER(1)           DEFAULT (0),
  IS3DINSPECTION            NUMBER(1)           DEFAULT (1),
  ISVISUALINSPECTION        NUMBER(1)           DEFAULT (1),
  VISUALSAMPLING            VARCHAR2(32 BYTE),
  VISUALAQL                 VARCHAR2(20 BYTE),
  ISVISUALSUMINSPECTION     NUMBER(1)           DEFAULT (0),
  ISFUNCTIONINSPECTION      NUMBER(1)           DEFAULT (1),
  FUNCTIONSAMPLING          VARCHAR2(32 BYTE),
  FUNCTIONAQL               VARCHAR2(20 BYTE),
  ISFUNCTIONSUMINSPECTION   NUMBER(1)           DEFAULT (0),
  ISDIMENSIONINSPECTION     NUMBER(1)           DEFAULT (1),
  DIMENSIONSAMPLING         VARCHAR2(32 BYTE),
  DIMENSIONAQL              VARCHAR2(20 BYTE),
  ISDIMENSIONSUMINSPECTION  NUMBER(1)           DEFAULT (0),
  ISPACKINGINSPECTION       NUMBER(1)           DEFAULT (1),
  PACKINGSAMPLING           VARCHAR2(32 BYTE),
  PACKINGAQL                VARCHAR2(20 BYTE),
  ISPACKINGSUMINSPECTION    NUMBER(1)           DEFAULT (0),
  GOALDPPM                  NUMBER(10)          DEFAULT (0),
  CREATEDT                  DATE                DEFAULT SYSDATE,
  CREATEBY                  VARCHAR2(32 BYTE)   DEFAULT '',
  LASTEDITDT                DATE,
  LASTEDITBY                VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- MDMATERIALTYPE  (Table) 
--
--   Row Count: 143
CREATE TABLE QMS.MDMATERIALTYPE
(
  ID           CHAR(32 BYTE)                    DEFAULT sys_guid(),
  PLANTID      VARCHAR2(10 BYTE),
  NAME         NVARCHAR2(100),
  DESCRIPTION  NVARCHAR2(256),
  PARENTID     CHAR(32 BYTE),
  PARENTIDS    VARCHAR2(150 BYTE),
  TYPELEVEL    NUMBER                           DEFAULT 0,
  CREATEDT     DATE                             DEFAULT SYSDATE,
  CREATEBY     VARCHAR2(32 BYTE)                DEFAULT '',
  LASTEDITDT   DATE,
  LASTEDITBY   VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.MDMATERIALTYPE.PLANTID IS '馱測徨';

COMMENT ON COLUMN QMS.MDMATERIALTYPE.NAME IS '靡想';

COMMENT ON COLUMN QMS.MDMATERIALTYPE.DESCRIPTION IS '鏡扴';

COMMENT ON COLUMN QMS.MDMATERIALTYPE.PARENTID IS '虜撰晤瘍Id';

COMMENT ON COLUMN QMS.MDMATERIALTYPE.PARENTIDS IS '垀衄虜撰晤瘍ㄛ眕飯?煦路';

COMMENT ON COLUMN QMS.MDMATERIALTYPE.TYPELEVEL IS '0-昜蹋?倰 1-昜蹋瞎靡 2-昜蹋靡想';


--
-- MDPLATFORM  (Table) 
--
--   Row Count: 6
CREATE TABLE QMS.MDPLATFORM
(
  ID           CHAR(32 BYTE)                    DEFAULT sys_guid(),
  PLANTID      VARCHAR2(10 BYTE),
  PLATFORM     NVARCHAR2(20),
  SEQNO        INTEGER                          DEFAULT 0,
  DESCRIPTION  NVARCHAR2(256),
  ENABLE       NUMBER(1)                        DEFAULT (1),
  CREATEDT     DATE                             DEFAULT SYSDATE,
  CREATEBY     VARCHAR2(32 BYTE)                DEFAULT '',
  LASTEDITDT   DATE,
  LASTEDITBY   VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- MDPRODUCTMATERIALLIST  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.MDPRODUCTMATERIALLIST
(
  ID               CHAR(32 BYTE)                DEFAULT sys_guid(),
  PLANTID          VARCHAR2(10 BYTE),
  PRODUCT          NVARCHAR2(32),
  BOMTYPE          VARCHAR2(20 BYTE),
  ITEM             NVARCHAR2(20),
  PARTNO           VARCHAR2(32 BYTE),
  PARTREV          VARCHAR2(10 BYTE),
  PARTDESC         NVARCHAR2(200),
  CUSTOMERPARTNO   VARCHAR2(32 BYTE),
  CUSTOMERPARTREV  VARCHAR2(10 BYTE),
  QTY              NUMBER,
  LOCATIONS        VARCHAR2(1000 BYTE),
  ISMASTERPART     NUMBER(1)                    DEFAULT (1),
  CREATEDT         DATE                         DEFAULT SYSDATE,
  CREATEBY         VARCHAR2(32 BYTE)            DEFAULT '',
  LASTEDITDT       DATE,
  LASTEDITBY       VARCHAR2(32 BYTE),
  VENDORCODE       NVARCHAR2(32),
  VENDORNAME       NVARCHAR2(150),
  VENDORPARTNO     NVARCHAR2(32),
  ITEMINDEX        NUMBER(8)                    DEFAULT 1
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- MDREPORTGOAL  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.MDREPORTGOAL
(
  ID           CHAR(32 CHAR)                    DEFAULT sys_guid(),
  PLANTID      VARCHAR2(32 CHAR)                DEFAULT 'ALL',
  REPORTNAME   NVARCHAR2(100),
  PRODUCT      NVARCHAR2(32),
  CATEGORY     NVARCHAR2(100),
  SUBCATEGORY  NVARCHAR2(100),
  YEAR         NUMBER,
  DATETYPE     VARCHAR2(30 BYTE),
  DATEVALUE    VARCHAR2(20 BYTE),
  GOAL         NUMBER(10,2)                     DEFAULT 0,
  CREATEBY     VARCHAR2(32 CHAR),
  CREATEDT     DATE                             DEFAULT SYSDATE,
  LASTEDITBY   VARCHAR2(32 CHAR),
  LASTEDITDT   DATE                             DEFAULT SYSDATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- MDROHSPROJECT  (Table) 
--
--   Row Count: 14
CREATE TABLE QMS.MDROHSPROJECT
(
  ID              CHAR(32 BYTE)                 DEFAULT sys_guid(),
  PLANTID         VARCHAR2(10 BYTE),
  RSUBSTANCECODE  VARCHAR2(20 BYTE),
  RSUBSTANCENAME  NVARCHAR2(100),
  DESCRIPTION     NVARCHAR2(256),
  MAXVALUE        INTEGER                       DEFAULT 0,
  MINNAVALUE      INTEGER                       DEFAULT 0,
  GROUPTYPE       NVARCHAR2(32),
  GROUPTYPESEQ    INTEGER                       DEFAULT 0,
  CREATEDT        DATE                          DEFAULT SYSDATE,
  CREATEBY        VARCHAR2(32 BYTE)             DEFAULT '',
  LASTEDITDT      DATE,
  LASTEDITBY      VARCHAR2(32 BYTE),
  CHECKTYPE       VARCHAR2(10 BYTE)             DEFAULT 'IQC'
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- MDSECTION  (Table) 
--
--   Row Count: 10
CREATE TABLE QMS.MDSECTION
(
  ID          CHAR(32 BYTE)                     DEFAULT sys_guid(),
  PLANTID     VARCHAR2(10 BYTE),
  SECTION     NVARCHAR2(50),
  CREATEDT    DATE                              DEFAULT SYSDATE,
  CREATEBY    VARCHAR2(32 BYTE)                 DEFAULT '',
  LASTEDITDT  DATE,
  LASTEDITBY  VARCHAR2(32 BYTE),
  PRODUCT     VARCHAR2(20 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.MDSECTION.PLANTID IS '馱測徨';

COMMENT ON COLUMN QMS.MDSECTION.SECTION IS '馱僇靡想';

COMMENT ON COLUMN QMS.MDSECTION.PRODUCT IS '工段機種';


--
-- MDSECTION_BAK  (Table) 
--
--   Row Count: 4
CREATE TABLE QMS.MDSECTION_BAK
(
  ID          CHAR(32 BYTE),
  PLANTID     VARCHAR2(10 BYTE),
  SECTION     NVARCHAR2(50),
  CREATEDT    DATE,
  CREATEBY    VARCHAR2(32 BYTE),
  LASTEDITDT  DATE,
  LASTEDITBY  VARCHAR2(32 BYTE),
  PRODUCT     VARCHAR2(200 BYTE),
  BAKDATE     DATE                              DEFAULT sysdate
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- MDSTAGE  (Table) 
--
--   Row Count: 33
CREATE TABLE QMS.MDSTAGE
(
  ID           CHAR(32 BYTE)                    DEFAULT sys_guid(),
  PLANTID      VARCHAR2(10 BYTE),
  PARENTID     CHAR(32 BYTE),
  NAME         NVARCHAR2(32),
  STAGELEVEL   NUMBER                           DEFAULT (0),
  DESCRIPTION  NVARCHAR2(255),
  CREATEDT     DATE                             DEFAULT SYSDATE,
  CREATEBY     VARCHAR2(32 BYTE)                DEFAULT '',
  LASTEDITDT   DATE,
  LASTEDITBY   VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- MDSTATION  (Table) 
--
--   Row Count: 38
CREATE TABLE QMS.MDSTATION
(
  ID           CHAR(32 BYTE)                    DEFAULT sys_guid(),
  PLANTID      VARCHAR2(10 BYTE),
  PRODUCT      VARCHAR2(20 BYTE),
  SECTIONID    CHAR(32 BYTE),
  STATIONTYPE  VARCHAR2(20 BYTE),
  STATION      NVARCHAR2(150),
  SEQNO        INTEGER                          DEFAULT 0,
  CREATEDT     DATE                             DEFAULT SYSDATE,
  CREATEBY     VARCHAR2(32 BYTE)                DEFAULT '',
  LASTEDITDT   DATE,
  LASTEDITBY   VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.MDSTATION.PLANTID IS '馱測徨';

COMMENT ON COLUMN QMS.MDSTATION.PRODUCT IS '工站機種';

COMMENT ON COLUMN QMS.MDSTATION.SECTIONID IS '馱桴垀?馱僇Id';

COMMENT ON COLUMN QMS.MDSTATION.STATION IS '馱桴靡想';


--
-- MDSTATION_BAK  (Table) 
--
--   Row Count: 158
CREATE TABLE QMS.MDSTATION_BAK
(
  ID          CHAR(32 BYTE),
  PLANTID     VARCHAR2(10 BYTE),
  SECTIONID   CHAR(32 BYTE),
  STATION     NVARCHAR2(150),
  CREATEDT    DATE,
  CREATEBY    VARCHAR2(32 BYTE),
  LASTEDITDT  DATE,
  LASTEDITBY  VARCHAR2(32 BYTE),
  SEQNO       VARCHAR2(5 BYTE),
  PRODUCT     VARCHAR2(200 BYTE),
  BAKDATE     DATE                              DEFAULT sysdate
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- MDSUPERVISE  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.MDSUPERVISE
(
  ID              CHAR(32 BYTE)                 DEFAULT sys_guid(),
  PLANTID         VARCHAR2(10 BYTE),
  DEPARTMENTID    CHAR(32 BYTE),
  SUPERVISENAME   NVARCHAR2(100),
  SUPERVISEOWNER  NVARCHAR2(30),
  CREATEDT        DATE                          DEFAULT SYSDATE,
  CREATEBY        VARCHAR2(32 BYTE)             DEFAULT '',
  LASTEDITDT      DATE,
  LASTEDITBY      VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.MDSUPERVISE.PLANTID IS '馱測徨';

COMMENT ON COLUMN QMS.MDSUPERVISE.DEPARTMENTID IS '垀?窒嬡Id';

COMMENT ON COLUMN QMS.MDSUPERVISE.SUPERVISENAME IS '靡想';

COMMENT ON COLUMN QMS.MDSUPERVISE.SUPERVISEOWNER IS '???';


--
-- MDSUPERVISEOWNER  (Table) 
--
--   Row Count: 1
CREATE TABLE QMS.MDSUPERVISEOWNER
(
  ID              CHAR(32 BYTE)                 DEFAULT sys_guid(),
  PLANTID         VARCHAR2(10 BYTE),
  SUPERVISEID     CHAR(32 BYTE),
  SUPERVISEOWNER  NVARCHAR2(30),
  CREATEDT        DATE                          DEFAULT SYSDATE,
  CREATEBY        VARCHAR2(32 BYTE)             DEFAULT '',
  LASTEDITDT      DATE,
  LASTEDITBY      VARCHAR2(32 BYTE),
  USERID          VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- MDVENDORMATERIAL  (Table) 
--
--   Row Count: 9941
CREATE TABLE QMS.MDVENDORMATERIAL
(
  ID            CHAR(32 BYTE)                   DEFAULT sys_guid(),
  PLANTID       VARCHAR2(10 BYTE),
  PARTNO        VARCHAR2(32 BYTE),
  VENDORCODE    VARCHAR2(20 BYTE),
  VENDORNAME    NVARCHAR2(100),
  VENDORPARTNO  VARCHAR2(32 BYTE),
  VENDORPLACE   NVARCHAR2(100),
  CREATEDT      DATE                            DEFAULT SYSDATE,
  CREATEBY      VARCHAR2(32 BYTE)               DEFAULT '',
  LASTEDITDT    DATE,
  LASTEDITBY    VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- MDWEEKOFMONTH  (Table) 
--
--   Row Count: 1461
CREATE TABLE QMS.MDWEEKOFMONTH
(
  STARTDATE     VARCHAR2(10 BYTE),
  WEEKNO        VARCHAR2(10 BYTE),
  WEEKNOOFYEAR  VARCHAR2(10 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.MDWEEKOFMONTH.WEEKNO IS '所屬月周別';

COMMENT ON COLUMN QMS.MDWEEKOFMONTH.WEEKNOOFYEAR IS '所屬當年周別';


--
-- PFSYSTEMROLE  (Table) 
--
--   Row Count: 30
CREATE TABLE QMS.PFSYSTEMROLE
(
  ROLENAME    VARCHAR2(32 CHAR)                 DEFAULT (' '),
  ROLEDESC    NVARCHAR2(256)                    DEFAULT (' '),
  CREATEBY    VARCHAR2(32 CHAR)                 DEFAULT (' '),
  CREATEDT    DATE                              DEFAULT SYSDATE,
  LASTEDITBY  VARCHAR2(32 CHAR),
  LASTEDITDT  DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.PFSYSTEMROLE.ROLENAME IS '?????';

COMMENT ON COLUMN QMS.PFSYSTEMROLE.ROLEDESC IS '?????';

COMMENT ON COLUMN QMS.PFSYSTEMROLE.CREATEBY IS '????????';

COMMENT ON COLUMN QMS.PFSYSTEMROLE.CREATEDT IS '????????';

COMMENT ON COLUMN QMS.PFSYSTEMROLE.LASTEDITBY IS '????????????';

COMMENT ON COLUMN QMS.PFSYSTEMROLE.LASTEDITDT IS '????????????';


--
-- PFSYSTEMROLEMEMBER  (Table) 
--
--   Row Count: 997
CREATE TABLE QMS.PFSYSTEMROLEMEMBER
(
  ROLENAME    VARCHAR2(32 CHAR)                 DEFAULT (' '),
  USERNAME    VARCHAR2(32 CHAR)                 DEFAULT (' '),
  CREATEBY    VARCHAR2(32 CHAR)                 DEFAULT (' '),
  CREATEDT    DATE                              DEFAULT SYSDATE,
  LASTEDITBY  VARCHAR2(32 CHAR),
  LASTEDITDT  DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.PFSYSTEMROLEMEMBER.ROLENAME IS '?????';

COMMENT ON COLUMN QMS.PFSYSTEMROLEMEMBER.USERNAME IS '?????????';

COMMENT ON COLUMN QMS.PFSYSTEMROLEMEMBER.CREATEBY IS '????????';

COMMENT ON COLUMN QMS.PFSYSTEMROLEMEMBER.CREATEDT IS '????????';

COMMENT ON COLUMN QMS.PFSYSTEMROLEMEMBER.LASTEDITBY IS '????????????';

COMMENT ON COLUMN QMS.PFSYSTEMROLEMEMBER.LASTEDITDT IS '????????????';


--
-- PFSYSTEMSECTION  (Table) 
--
--   Row Count: 432
CREATE TABLE QMS.PFSYSTEMSECTION
(
  SECTIONID         VARCHAR2(40 CHAR)           DEFAULT (' '),
  SECTIONNAME       NVARCHAR2(100)              DEFAULT (' '),
  SECTIONNAME_ZHTW  NVARCHAR2(100)              DEFAULT (' '),
  SECTIONDESC       NVARCHAR2(256)              DEFAULT (' '),
  SECTIONURL        VARCHAR2(150 CHAR)          DEFAULT (' '),
  SECTIONLEVEL      CHAR(1 CHAR)                DEFAULT '1',
  SECTIONSORTNO     VARCHAR2(10 CHAR)           DEFAULT (' '),
  PARENTID          VARCHAR2(40 CHAR)           DEFAULT (' '),
  PARENTPATH        VARCHAR2(100 CHAR)          DEFAULT (' '),
  CSSCLASS          VARCHAR2(32 CHAR)           DEFAULT (' '),
  ISLEAF            NUMBER(1)                   DEFAULT '0',
  ISACTIVED         NUMBER(1)                   DEFAULT '0',
  CREATEBY          VARCHAR2(32 CHAR)           DEFAULT (' '),
  CREATEDT          DATE                        DEFAULT SYSDATE,
  LASTEDITBY        VARCHAR2(32 CHAR),
  LASTEDITDT        DATE,
  TCODE             VARCHAR2(10 BYTE),
  ISAPP             NUMBER(1)                   DEFAULT 0,
  ISAPPLYAPP        NUMBER(1)                   DEFAULT 0
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.PFSYSTEMSECTION.SECTIONID IS '?????/?????????';

COMMENT ON COLUMN QMS.PFSYSTEMSECTION.SECTIONNAME IS '?????/??????';

COMMENT ON COLUMN QMS.PFSYSTEMSECTION.SECTIONNAME_ZHTW IS '?????/??????';

COMMENT ON COLUMN QMS.PFSYSTEMSECTION.SECTIONDESC IS '?????/??????';

COMMENT ON COLUMN QMS.PFSYSTEMSECTION.SECTIONURL IS '?????/????????';

COMMENT ON COLUMN QMS.PFSYSTEMSECTION.SECTIONLEVEL IS '????';

COMMENT ON COLUMN QMS.PFSYSTEMSECTION.SECTIONSORTNO IS '??????????';

COMMENT ON COLUMN QMS.PFSYSTEMSECTION.PARENTID IS '???ID';

COMMENT ON COLUMN QMS.PFSYSTEMSECTION.PARENTPATH IS '????????????,???????,?1,2,6,8';

COMMENT ON COLUMN QMS.PFSYSTEMSECTION.ISLEAF IS '??????????????????1 ???,0 ???';

COMMENT ON COLUMN QMS.PFSYSTEMSECTION.ISACTIVED IS '????';

COMMENT ON COLUMN QMS.PFSYSTEMSECTION.CREATEBY IS '????????';

COMMENT ON COLUMN QMS.PFSYSTEMSECTION.CREATEDT IS '????????';

COMMENT ON COLUMN QMS.PFSYSTEMSECTION.LASTEDITBY IS '????????????';

COMMENT ON COLUMN QMS.PFSYSTEMSECTION.LASTEDITDT IS '????????????';

COMMENT ON COLUMN QMS.PFSYSTEMSECTION.TCODE IS 'TCode';

COMMENT ON COLUMN QMS.PFSYSTEMSECTION.ISAPP IS '岆瘁App粕?';


--
-- PFSYSTEMUPDATELOG  (Table) 
--
--   Row Count: 1
CREATE TABLE QMS.PFSYSTEMUPDATELOG
(
  UPDATEID         NVARCHAR2(12),
  UPDATECONTENT    NVARCHAR2(256),
  SYSTEMVERSION    VARCHAR2(7 CHAR),
  DOCUMENTNO       NVARCHAR2(50),
  REQUIREMENTDESC  NVARCHAR2(256),
  CREATEBY         VARCHAR2(10 CHAR),
  CREATEDT         DATE                         DEFAULT SYSDATE,
  LASTEDITBY       VARCHAR2(10 CHAR),
  LASTEDITDT       DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.PFSYSTEMUPDATELOG.UPDATEID IS '??ID,???ESysSeqNo??,??SysUpdateCode';

COMMENT ON COLUMN QMS.PFSYSTEMUPDATELOG.UPDATECONTENT IS '????';

COMMENT ON COLUMN QMS.PFSYSTEMUPDATELOG.SYSTEMVERSION IS '?????';

COMMENT ON COLUMN QMS.PFSYSTEMUPDATELOG.DOCUMENTNO IS '????';

COMMENT ON COLUMN QMS.PFSYSTEMUPDATELOG.REQUIREMENTDESC IS '????';

COMMENT ON COLUMN QMS.PFSYSTEMUPDATELOG.CREATEBY IS '????????';

COMMENT ON COLUMN QMS.PFSYSTEMUPDATELOG.CREATEDT IS '????????';

COMMENT ON COLUMN QMS.PFSYSTEMUPDATELOG.LASTEDITBY IS '????????????';

COMMENT ON COLUMN QMS.PFSYSTEMUPDATELOG.LASTEDITDT IS '????????????';


--
-- PFSYSTEMUSER  (Table) 
--
--   Row Count: 776
CREATE TABLE QMS.PFSYSTEMUSER
(
  USERNAME            VARCHAR2(32 CHAR)         DEFAULT (' '),
  PASSWORD            VARCHAR2(50 CHAR)         DEFAULT (' '),
  USERTYPE            VARCHAR2(20 CHAR)         DEFAULT (' '),
  USERLEVEL           CHAR(1 CHAR)              DEFAULT '1',
  ISADMIN             NUMBER(1)                 DEFAULT (0),
  ISACTIVED           NUMBER(1)                 DEFAULT (1),
  CANQUERYNEWPRODUCT  NUMBER(1)                 DEFAULT (0),
  NICKNAME            NVARCHAR2(100)            DEFAULT (' '),
  FIRSTNAME           NVARCHAR2(100)            DEFAULT (' '),
  MIDNAME             NVARCHAR2(100)            DEFAULT (' '),
  LASTNAME            NVARCHAR2(100)            DEFAULT (' '),
  BIRTHDAY            DATE,
  COMPANYNAME         NVARCHAR2(100)            DEFAULT (' '),
  DEPARTMENTNAME      NVARCHAR2(100)            DEFAULT (' '),
  SUPERVISORNAME      NVARCHAR2(100)            DEFAULT (' '),
  POSITIONNAME        NVARCHAR2(100)            DEFAULT (' '),
  EMPLOYEEID          VARCHAR2(40 CHAR)         DEFAULT (' '),
  EXTENSIONNO         VARCHAR2(40 CHAR)         DEFAULT (' '),
  MOBILEPHONENO       VARCHAR2(40 CHAR)         DEFAULT (' '),
  HOMEPHONENO         VARCHAR2(40 CHAR)         DEFAULT (' '),
  FAXNO               VARCHAR2(40 CHAR)         DEFAULT (' '),
  WEBSITE             NVARCHAR2(100)            DEFAULT (' '),
  EMAILADDRESS        NVARCHAR2(100)            DEFAULT (' '),
  REGION              NVARCHAR2(100)            DEFAULT (' '),
  COUNTRY             NVARCHAR2(100)            DEFAULT (' '),
  STATE               NVARCHAR2(100)            DEFAULT (' '),
  CITY                NVARCHAR2(100)            DEFAULT (' '),
  COUNTY              NVARCHAR2(100)            DEFAULT (' '),
  ZIPCODE             VARCHAR2(40 CHAR)         DEFAULT (' '),
  ADDRESSNAME1        NVARCHAR2(100)            DEFAULT (' '),
  ADDRESSNAME2        NVARCHAR2(100)            DEFAULT (' '),
  ADDRESSNAME3        NVARCHAR2(100)            DEFAULT (' '),
  CREATEBY            VARCHAR2(32 CHAR)         DEFAULT (' '),
  CREATEDT            DATE                      DEFAULT SYSDATE,
  LASTEDITBY          VARCHAR2(32 CHAR),
  LASTEDITDT          DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.PFSYSTEMUSER.USERNAME IS '?????????';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.PASSWORD IS '????';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.USERTYPE IS '????';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.USERLEVEL IS '?????';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.ISADMIN IS '??????';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.ISACTIVED IS '????????';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.NICKNAME IS '??';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.FIRSTNAME IS '?';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.MIDNAME IS '???';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.LASTNAME IS '?';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.BIRTHDAY IS '??';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.COMPANYNAME IS '????';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.DEPARTMENTNAME IS '????';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.SUPERVISORNAME IS '????';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.POSITIONNAME IS '??';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.EMPLOYEEID IS '??';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.EXTENSIONNO IS '??';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.MOBILEPHONENO IS '??';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.HOMEPHONENO IS '????';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.FAXNO IS '??';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.WEBSITE IS '??';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.EMAILADDRESS IS '????';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.REGION IS '??';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.COUNTRY IS '??';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.STATE IS '?/?';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.CITY IS '??';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.COUNTY IS '?/?';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.ZIPCODE IS '????';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.ADDRESSNAME1 IS '??';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.ADDRESSNAME2 IS '??';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.ADDRESSNAME3 IS '??';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.CREATEBY IS '????????';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.CREATEDT IS '????????';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.LASTEDITBY IS '????????????';

COMMENT ON COLUMN QMS.PFSYSTEMUSER.LASTEDITDT IS '????????????';


--
-- PFSYSTEMUSERLOG  (Table) 
--
--   Row Count: 25616
CREATE TABLE QMS.PFSYSTEMUSERLOG
(
  USERNAME    VARCHAR2(32 CHAR)                 DEFAULT (' '),
  ACTIONDATE  DATE,
  ACTIONNAME  NVARCHAR2(100)                    DEFAULT (' '),
  ACTIONDESC  NVARCHAR2(256)                    DEFAULT (' '),
  ACTIONIP    VARCHAR2(40 CHAR)                 DEFAULT (' '),
  CREATEBY    VARCHAR2(32 CHAR)                 DEFAULT (' '),
  CREATEDT    DATE                              DEFAULT SYSDATE,
  LASTEDITBY  VARCHAR2(32 CHAR),
  LASTEDITDT  DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.PFSYSTEMUSERLOG.USERNAME IS '?????????';

COMMENT ON COLUMN QMS.PFSYSTEMUSERLOG.ACTIONDATE IS 'Action ?????';

COMMENT ON COLUMN QMS.PFSYSTEMUSERLOG.ACTIONNAME IS 'Action ??';

COMMENT ON COLUMN QMS.PFSYSTEMUSERLOG.ACTIONDESC IS 'Action ??';

COMMENT ON COLUMN QMS.PFSYSTEMUSERLOG.ACTIONIP IS 'Action ???IP';

COMMENT ON COLUMN QMS.PFSYSTEMUSERLOG.CREATEBY IS '????????';

COMMENT ON COLUMN QMS.PFSYSTEMUSERLOG.CREATEDT IS '????????';

COMMENT ON COLUMN QMS.PFSYSTEMUSERLOG.LASTEDITBY IS '????????????';

COMMENT ON COLUMN QMS.PFSYSTEMUSERLOG.LASTEDITDT IS '????????????';


--
-- PFSYSTEMUSERPERMISSION  (Table) 
--
--   Row Count: 3363
CREATE TABLE QMS.PFSYSTEMUSERPERMISSION
(
  PERMISSNAME   VARCHAR2(32 CHAR)               DEFAULT (' '),
  PERMISSTYPE   VARCHAR2(20 CHAR)               DEFAULT (' '),
  SECTIONID     VARCHAR2(40 CHAR)               DEFAULT (' '),
  SECTIONNAME   NVARCHAR2(100)                  DEFAULT (' '),
  PERMISSORDER  NUMBER(10)                      DEFAULT (0),
  CREATEBY      VARCHAR2(32 CHAR)               DEFAULT (' '),
  CREATEDT      DATE                            DEFAULT SYSDATE,
  LASTEDITBY    VARCHAR2(32 CHAR),
  LASTEDITDT    DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.PFSYSTEMUSERPERMISSION.PERMISSNAME IS '????????????????????';

COMMENT ON COLUMN QMS.PFSYSTEMUSERPERMISSION.PERMISSTYPE IS '?????????By UserId?? GroupId';

COMMENT ON COLUMN QMS.PFSYSTEMUSERPERMISSION.SECTIONID IS '???Section???Id';

COMMENT ON COLUMN QMS.PFSYSTEMUSERPERMISSION.SECTIONNAME IS '???Section?????';

COMMENT ON COLUMN QMS.PFSYSTEMUSERPERMISSION.PERMISSORDER IS '??Section???????';

COMMENT ON COLUMN QMS.PFSYSTEMUSERPERMISSION.CREATEBY IS '????????';

COMMENT ON COLUMN QMS.PFSYSTEMUSERPERMISSION.CREATEDT IS '????????';

COMMENT ON COLUMN QMS.PFSYSTEMUSERPERMISSION.LASTEDITBY IS '????????????';

COMMENT ON COLUMN QMS.PFSYSTEMUSERPERMISSION.LASTEDITDT IS '????????????';


--
-- QMAUDITLOG  (Table) 
--
--   Row Count: 58951
CREATE TABLE QMS.QMAUDITLOG
(
  MASTERID       CHAR(32 BYTE),
  OPERATOR       VARCHAR2(32 BYTE),
  OPERATEDATE    DATE,
  REJECTREASON   VARCHAR2(1000 BYTE),
  CONFIRMRESULT  VARCHAR2(100 BYTE),
  CREATEBY       VARCHAR2(32 BYTE),
  CREATEDT       DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMEIPINFO  (Table) 
--
--   Row Count: 488
CREATE TABLE QMS.QMEIPINFO
(
  ID                  CHAR(32 BYTE)             DEFAULT sys_guid(),
  CSRMNO              VARCHAR2(100 BYTE),
  CUSTOMERID          VARCHAR2(100 BYTE),
  CUSTOMERNAME        VARCHAR2(100 BYTE),
  REVNO               VARCHAR2(32 BYTE),
  CUSTREGIONID        VARCHAR2(100 BYTE),
  CREATEDATETIME      DATE,
  MODIFIEDDATETIME    DATE,
  EXECUTEDATE         DATE,
  CURRENTSTATUS       VARCHAR2(32 BYTE),
  ITEMNO              NUMBER,
  REQUESTDESCRIPTION  VARCHAR2(4000 BYTE),
  DEPARTMENTNAME      VARCHAR2(100 BYTE),
  BUID                VARCHAR2(100 BYTE),
  PLANTID             VARCHAR2(32 BYTE),
  DELFLAG             NUMBER(1)                 DEFAULT 0,
  CREATEBY            VARCHAR2(32 BYTE),
  CREATEDT            DATE,
  LASTEDITBY          VARCHAR2(32 BYTE),
  LASTEDITDT          DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCAUDITITEM  (Table) 
--
--   Row Count: 236428
CREATE TABLE QMS.QMIPQCAUDITITEM
(
  ID                 CHAR(32 BYTE)              DEFAULT sys_guid(),
  PLANTID            VARCHAR2(10 BYTE),
  AUDITMASTERID      CHAR(32 BYTE),
  PROJECTNAME        NVARCHAR2(150),
  INSPECTITEM        NVARCHAR2(256),
  OCCURSECTION       NVARCHAR2(50),
  OCCURSTATION       NVARCHAR2(50),
  INSPECTRESULT      VARCHAR2(10 BYTE)          DEFAULT 'NO',
  DEFECTQTY          INTEGER                    DEFAULT 0,
  EXCEPTIONCODE      NVARCHAR2(15),
  EXCEPTIONTYPE      NVARCHAR2(100),
  EXCEPTIONDESP      NVARCHAR2(256),
  OTHERCONTENT       NVARCHAR2(256),
  PDCSNO             VARCHAR2(30 BYTE),
  REMARK             NVARCHAR2(256),
  DELFLAG            NUMBER(1)                  DEFAULT 0,
  CREATEDT           DATE                       DEFAULT SYSDATE,
  CREATEBY           VARCHAR2(32 BYTE),
  LASTEDITDT         DATE,
  LASTEDITBY         VARCHAR2(32 BYTE),
  PROCESSITEMID      CHAR(32 BYTE),
  INSPECTITEMNO      INTEGER                    DEFAULT 0,
  EXCEPTIONCATEGORY  VARCHAR2(200 BYTE),
  INSPECTNAME        NVARCHAR2(200),
  ISGREATEXCEPTION   NUMBER(1)                  DEFAULT 0,
  AUDITTIME          DATE,
  SUPERVISENAME      NVARCHAR2(50),
  SUPERVISOR         NVARCHAR2(50),
  CORRECTACTION      NVARCHAR2(256),
  CONFIRMRESULT      NVARCHAR2(256),
  LABELPIC           NVARCHAR2(2000),
  TESTTYPE           VARCHAR2(32 BYTE)          DEFAULT 'D',
  PRODUCEREASON      VARCHAR2(4000 BYTE),
  FLOWREASON         VARCHAR2(4000 BYTE),
  SHORTMETHOD        VARCHAR2(4000 BYTE),
  LONGMETHOD         VARCHAR2(4000 BYTE),
  NGINPUTER          VARCHAR2(32 BYTE),
  NGINPUTDATE        DATE,
  NGCONFIRMER        VARCHAR2(32 BYTE),
  NGCONFIRMDATE      DATE,
  NGREJECTREASON     VARCHAR2(4000 BYTE),
  ITEMSTATUS         VARCHAR2(32 BYTE)          DEFAULT 'Open'
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCAUDITITEMLOG  (Table) 
--
--   Row Count: 12
CREATE TABLE QMS.QMIPQCAUDITITEMLOG
(
  ID                 CHAR(32 BYTE)              DEFAULT sys_guid(),
  PLANTID            VARCHAR2(10 BYTE),
  AUDITITEMID        CHAR(32 BYTE),
  AUDITMASTERID      CHAR(32 BYTE),
  RECORDTYPE         VARCHAR2(15 BYTE)          DEFAULT 'Original',
  OCCURSECTION       NVARCHAR2(50),
  OCCURSTATION       NVARCHAR2(50),
  INSPECTRESULT      VARCHAR2(10 BYTE),
  DEFECTQTY          INTEGER                    DEFAULT 0,
  EXCEPTIONCODE      NVARCHAR2(15),
  EXCEPTIONTYPE      NVARCHAR2(100),
  EXCEPTIONDESP      NVARCHAR2(256),
  OTHERCONTENT       NVARCHAR2(256),
  PDCSNO             VARCHAR2(30 BYTE),
  REMARK             NVARCHAR2(256),
  DELFLAG            NUMBER(1)                  DEFAULT 0,
  CREATEDT           DATE                       DEFAULT SYSDATE,
  CREATEBY           VARCHAR2(32 BYTE),
  LASTEDITDT         DATE,
  LASTEDITBY         VARCHAR2(32 BYTE),
  EXCEPTIONCATEGORY  VARCHAR2(32 BYTE),
  ISGREATEXCEPTION   NUMBER(1)                  DEFAULT 0,
  AUDITTIME          DATE,
  SUPERVISENAME      NVARCHAR2(50),
  SUPERVISOR         NVARCHAR2(50),
  CORRECTACTION      NVARCHAR2(256),
  CONFIRMRESULT      NVARCHAR2(256)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCAUDITMASTER  (Table) 
--
--   Row Count: 6502
CREATE TABLE QMS.QMIPQCAUDITMASTER
(
  ID                CHAR(32 BYTE)               DEFAULT sys_guid(),
  PLANTID           VARCHAR2(10 BYTE),
  BATCHNO           VARCHAR2(15 BYTE),
  OCCURDATE         VARCHAR2(10 BYTE),
  OCCURSHIFT        VARCHAR2(10 BYTE),
  PRODUCT           NVARCHAR2(20),
  OCCURAREA         NVARCHAR2(50),
  OCCURFLOOR        NVARCHAR2(50),
  OCCURLINE         NVARCHAR2(50),
  LINELEADER        NVARCHAR2(10),
  GROUPNAME         NVARCHAR2(50),
  GROUPLEADER       NVARCHAR2(10),
  SUPERVISENAME     NVARCHAR2(50),
  SUPERVISOR        NVARCHAR2(10),
  DEPARTMENTNAME    NVARCHAR2(50),
  DEPARTMENTLEADER  NVARCHAR2(10),
  IPQCAUDITOR       NVARCHAR2(50),
  QECONFIRMOWNER    NVARCHAR2(50),
  AUDITSTATUS       VARCHAR2(15 BYTE)           DEFAULT 'Open',
  CLOSEDATE         DATE,
  DELFLAG           NUMBER(1)                   DEFAULT 0,
  CREATEDT          DATE                        DEFAULT SYSDATE,
  CREATEBY          VARCHAR2(32 BYTE),
  LASTEDITDT        DATE,
  LASTEDITBY        VARCHAR2(32 BYTE),
  AUDITLOG          NVARCHAR2(2000),
  LASTREJECTREASON  NVARCHAR2(150),
  REJECTCOUNT       INTEGER                     DEFAULT 0,
  QECONFIRMDATE     DATE,
  AUDITSHIFT        VARCHAR2(10 BYTE),
  ISCONTAINNG       NUMBER(1)                   DEFAULT 0,
  LEADEREMAIL       VARCHAR2(150 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCBASEINFO  (Table) 
--
--   Row Count: 6712
CREATE TABLE QMS.QMIPQCBASEINFO
(
  ID          CHAR(32 BYTE)                     DEFAULT SYS_GUID(),
  PLANTID     VARCHAR2(32 BYTE),
  PRODUCT     VARCHAR2(50 BYTE),
  PARTNO      VARCHAR2(100 BYTE),
  AREA        VARCHAR2(100 BYTE),
  FLOOR       VARCHAR2(100 BYTE),
  LINE        VARCHAR2(100 BYTE),
  DEPARTMENT  VARCHAR2(100 BYTE),
  TYPE        VARCHAR2(32 BYTE),
  DELFLAG     NUMBER(1)                         DEFAULT 0,
  CREATEBY    VARCHAR2(32 BYTE),
  CREATEDT    DATE,
  LASTEDITBY  VARCHAR2(32 BYTE),
  LASTEDITDT  DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCCHECKITEM  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.QMIPQCCHECKITEM
(
  ID                 CHAR(32 BYTE)              DEFAULT sys_guid(),
  PLANTID            VARCHAR2(10 BYTE),
  AUDITMASTERID      CHAR(32 BYTE),
  PROJECTNAME        NVARCHAR2(150),
  INSPECTITEM        NVARCHAR2(256),
  FREQUENCY          INTEGER                    DEFAULT 0,
  FREQUENCYUNIT      NVARCHAR2(15),
  TIMEFROM           CHAR(5 BYTE),
  TIMETO             CHAR(5 BYTE),
  OCCURSECTION       NVARCHAR2(50),
  OCCURSTATION       NVARCHAR2(50),
  INSPECTRESULT      VARCHAR2(10 BYTE)          DEFAULT 'NA',
  DEFECTQTY          INTEGER                    DEFAULT 0,
  EXCEPTIONCODE      NVARCHAR2(15),
  EXCEPTIONTYPE      NVARCHAR2(100),
  EXCEPTIONDESP      NVARCHAR2(256),
  OTHERCONTENT       NVARCHAR2(256),
  PDCSNO             VARCHAR2(30 BYTE),
  REMARK             NVARCHAR2(256),
  DELFLAG            NUMBER(1)                  DEFAULT 0,
  CREATEDT           DATE                       DEFAULT SYSDATE,
  CREATEBY           VARCHAR2(32 BYTE),
  LASTEDITDT         DATE,
  LASTEDITBY         VARCHAR2(32 BYTE),
  PROCESSITEMID      CHAR(32 BYTE),
  TIMESEQ            VARCHAR2(10 BYTE),
  INSPECTITEMNO      INTEGER                    DEFAULT 0,
  EXCEPTIONCATEGORY  VARCHAR2(32 BYTE),
  INSPECTNAME        NVARCHAR2(200),
  ISGREATEXCEPTION   NUMBER(1)                  DEFAULT 0,
  AUDITTIME          DATE,
  SUPERVISENAME      NVARCHAR2(50),
  SUPERVISOR         NVARCHAR2(50),
  CORRECTACTION      NVARCHAR2(256),
  CONFIRMRESULT      NVARCHAR2(256),
  LABELPIC           NVARCHAR2(2000)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCCHECKITEMLOG  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.QMIPQCCHECKITEMLOG
(
  ID                 CHAR(32 BYTE)              DEFAULT sys_guid(),
  PLANTID            VARCHAR2(10 BYTE),
  CHECKITEMID        CHAR(32 BYTE),
  AUDITMASTERID      CHAR(32 BYTE),
  RECORDTYPE         VARCHAR2(15 BYTE)          DEFAULT 'Original',
  OCCURSECTION       NVARCHAR2(50),
  OCCURSTATION       NVARCHAR2(50),
  INSPECTRESULT      VARCHAR2(10 BYTE)          DEFAULT NULL,
  DEFECTQTY          INTEGER                    DEFAULT 0,
  EXCEPTIONCODE      NVARCHAR2(15),
  EXCEPTIONTYPE      NVARCHAR2(100),
  EXCEPTIONDESP      NVARCHAR2(256),
  OTHERCONTENT       NVARCHAR2(256),
  PDCSNO             VARCHAR2(30 BYTE),
  REMARK             NVARCHAR2(256),
  DELFLAG            NUMBER(1)                  DEFAULT 0,
  CREATEDT           DATE                       DEFAULT SYSDATE,
  CREATEBY           VARCHAR2(32 BYTE),
  LASTEDITDT         DATE,
  LASTEDITBY         VARCHAR2(32 BYTE),
  EXCEPTIONCATEGORY  VARCHAR2(32 BYTE),
  ISGREATEXCEPTION   NUMBER(1)                  DEFAULT 0,
  AUDITTIME          DATE,
  SUPERVISENAME      NVARCHAR2(50),
  SUPERVISOR         NVARCHAR2(50),
  CORRECTACTION      NVARCHAR2(256),
  CONFIRMRESULT      NVARCHAR2(256)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCCHECKMASTER  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.QMIPQCCHECKMASTER
(
  ID                CHAR(32 BYTE)               DEFAULT sys_guid(),
  PLANTID           VARCHAR2(10 BYTE),
  BATCHNO           VARCHAR2(15 BYTE),
  OCCURDATE         VARCHAR2(10 BYTE),
  OCCURSHIFT        VARCHAR2(10 BYTE),
  PRODUCT           NVARCHAR2(20),
  OCCURAREA         NVARCHAR2(50),
  OCCURFLOOR        NVARCHAR2(50),
  OCCURLINE         NVARCHAR2(50),
  LINELEADER        NVARCHAR2(10),
  GROUPNAME         NVARCHAR2(50),
  GROUPLEADER       NVARCHAR2(10),
  SUPERVISENAME     NVARCHAR2(50),
  SUPERVISOR        NVARCHAR2(10),
  DEPARTMENTNAME    NVARCHAR2(50),
  DEPARTMENTLEADER  NVARCHAR2(10),
  IPQCAUDITOR       NVARCHAR2(50),
  QECONFIRMOWNER    NVARCHAR2(50),
  AUDITSTATUS       VARCHAR2(15 BYTE)           DEFAULT 'Open',
  CLOSEDATE         DATE,
  DELFLAG           NUMBER(1)                   DEFAULT 0,
  CREATEDT          DATE                        DEFAULT SYSDATE,
  CREATEBY          VARCHAR2(32 BYTE),
  LASTEDITDT        DATE,
  LASTEDITBY        VARCHAR2(32 BYTE),
  AUDITLOG          NVARCHAR2(2000),
  LASTREJECTREASON  NVARCHAR2(150),
  REJECTCOUNT       INTEGER                     DEFAULT 0,
  QECONFIRMDATE     DATE,
  AUDITSHIFT        VARCHAR2(10 BYTE),
  ISCONTAINNG       NUMBER(1)                   DEFAULT 0
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCFAICHECKITEM  (Table) 
--
--   Row Count: 484281
CREATE TABLE QMS.QMIPQCFAICHECKITEM
(
  ID                 CHAR(32 BYTE)              DEFAULT sys_guid(),
  PLANTID            VARCHAR2(10 BYTE),
  AUDITMASTERID      CHAR(32 BYTE),
  PROJECTNAME        NVARCHAR2(150),
  PROCESSITEMID      CHAR(32 BYTE),
  INSPECTSTANDARD    NVARCHAR2(256),
  INSPECTMETHOD      NVARCHAR2(256),
  INSPECTRESULT      VARCHAR2(10 BYTE)          DEFAULT 'NO',
  EXCEPTIONCODE      NVARCHAR2(15),
  EXCEPTIONTYPE      NVARCHAR2(100),
  EXCEPTIONDESP      NVARCHAR2(256),
  OTHERCONTENT       NVARCHAR2(256),
  REMARK             NVARCHAR2(256),
  DELFLAG            NUMBER(1)                  DEFAULT 0,
  CREATEDT           DATE                       DEFAULT SYSDATE,
  CREATEBY           VARCHAR2(32 BYTE),
  LASTEDITDT         DATE,
  LASTEDITBY         VARCHAR2(32 BYTE),
  INSPECTITEMNO      INTEGER                    DEFAULT 0,
  EXCEPTIONCATEGORY  VARCHAR2(200 BYTE),
  INSPECTNAME        NVARCHAR2(200),
  INPUTTIME          DATE,
  SUPERVISENAME      NVARCHAR2(50),
  SUPERVISOR         NVARCHAR2(50),
  CORRECTACTION      NVARCHAR2(256),
  CONFIRMRESULT      NVARCHAR2(256),
  LABELPIC           NVARCHAR2(2000),
  TESTNO             VARCHAR2(50 BYTE),
  TESTINFO           VARCHAR2(4000 BYTE),
  DRAWING            VARCHAR2(100 BYTE),
  INSPECTSPEC        VARCHAR2(500 BYTE),
  TESTTYPE           VARCHAR2(32 BYTE)          DEFAULT 'D',
  PRODUCEREASON      VARCHAR2(4000 BYTE),
  FLOWREASON         VARCHAR2(4000 BYTE),
  SHORTMETHOD        VARCHAR2(4000 BYTE),
  LONGMETHOD         VARCHAR2(4000 BYTE),
  NGINPUTER          VARCHAR2(32 BYTE),
  NGINPUTDATE        DATE,
  NGCONFIRMER        VARCHAR2(32 BYTE),
  NGCONFIRMDATE      DATE,
  NGREJECTREASON     VARCHAR2(4000 BYTE),
  ITEMSTATUS         VARCHAR2(32 BYTE)          DEFAULT 'Open',
  REPORTFILE         VARCHAR2(1000 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCFAICHECKITEMLOG  (Table) 
--
--   Row Count: 8415728
CREATE TABLE QMS.QMIPQCFAICHECKITEMLOG
(
  ID                 CHAR(32 BYTE)              DEFAULT sys_guid(),
  PLANTID            VARCHAR2(10 BYTE),
  FAICHECKITEMID     CHAR(32 BYTE),
  AUDITMASTERID      CHAR(32 BYTE),
  RECORDTYPE         VARCHAR2(15 BYTE)          DEFAULT 'Original',
  INSPECTRESULT      VARCHAR2(10 BYTE)          DEFAULT NULL,
  EXCEPTIONCODE      NVARCHAR2(15),
  EXCEPTIONTYPE      NVARCHAR2(100),
  EXCEPTIONDESP      NVARCHAR2(256),
  OTHERCONTENT       NVARCHAR2(256),
  TESTRESULT         NVARCHAR2(50),
  PDCSNO             VARCHAR2(30 BYTE),
  REMARK             NVARCHAR2(256),
  DELFLAG            NUMBER(1)                  DEFAULT 0,
  CREATEDT           DATE                       DEFAULT SYSDATE,
  CREATEBY           VARCHAR2(32 BYTE),
  LASTEDITDT         DATE,
  LASTEDITBY         VARCHAR2(32 BYTE),
  EXCEPTIONCATEGORY  VARCHAR2(32 BYTE),
  INPUTTIME          DATE,
  SUPERVISENAME      NVARCHAR2(50),
  SUPERVISOR         NVARCHAR2(50),
  CORRECTACTION      NVARCHAR2(256),
  CONFIRMRESULT      NVARCHAR2(256)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCFAICHECKMASTER  (Table) 
--
--   Row Count: 15524
CREATE TABLE QMS.QMIPQCFAICHECKMASTER
(
  ID                CHAR(32 BYTE)               DEFAULT sys_guid(),
  PLANTID           VARCHAR2(10 BYTE),
  BATCHNO           VARCHAR2(15 BYTE),
  OCCURDATE         VARCHAR2(10 BYTE),
  OCCURSHIFT        VARCHAR2(10 BYTE),
  CHECKTYPE         NVARCHAR2(50),
  PRODUCT           NVARCHAR2(20),
  OCCURAREA         NVARCHAR2(50),
  OCCURFLOOR        NVARCHAR2(50),
  OCCURLINE         NVARCHAR2(50),
  FAIINPUTER        NVARCHAR2(50),
  ENGCONFIRMOWNER   NVARCHAR2(50),
  ENGCONFIRMDATE    DATE,
  QECONFIRMOWNER    NVARCHAR2(50),
  QECONFIRMDATE     DATE,
  LASTREJECTREASON  NVARCHAR2(150),
  REJECTCOUNT       INTEGER                     DEFAULT 0,
  AUDITLOG          NVARCHAR2(2000),
  AUDITSTATUS       VARCHAR2(15 BYTE)           DEFAULT 'Open',
  CLOSEDATE         DATE,
  WORKORDER         VARCHAR2(30 BYTE),
  SKUNO             VARCHAR2(32 BYTE),
  SN                VARCHAR2(50 BYTE),
  BARCODE1          VARCHAR2(50 BYTE),
  BARCODE2          VARCHAR2(50 BYTE),
  BARCODE3          VARCHAR2(50 BYTE),
  BARCODE4          VARCHAR2(50 BYTE),
  BARCODE5          VARCHAR2(50 BYTE),
  BARCODE6          VARCHAR2(50 BYTE),
  BARCODE7          VARCHAR2(50 BYTE),
  BARCODE8          VARCHAR2(50 BYTE),
  BARCODE9          VARCHAR2(50 BYTE),
  TESTRESULT        NVARCHAR2(50),
  PDCSNO            VARCHAR2(30 BYTE),
  LABELPIC          NVARCHAR2(2000),
  DELFLAG           NUMBER(1)                   DEFAULT 0,
  CREATEDT          DATE                        DEFAULT SYSDATE,
  CREATEBY          VARCHAR2(32 BYTE),
  LASTEDITDT        DATE,
  LASTEDITBY        VARCHAR2(32 BYTE),
  BARCODE10         VARCHAR2(50 BYTE),
  AUDITSHIFT        VARCHAR2(10 BYTE),
  ISCONTAINNG       NUMBER(1)                   DEFAULT 0,
  ALLBARCODE        NVARCHAR2(2000),
  DEPARTMENT        VARCHAR2(200 BYTE),
  SENDTIME          VARCHAR2(20 BYTE),
  QTY               VARCHAR2(20 BYTE),
  DATECODE          VARCHAR2(200 BYTE),
  DRAWINGNO         VARCHAR2(100 BYTE),
  DRAWINGREV        VARCHAR2(10 BYTE),
  SPECNO            VARCHAR2(100 BYTE),
  SPECREV           VARCHAR2(10 BYTE),
  LEADEREMAIL       VARCHAR2(200 BYTE),
  DEPARTMENTLEADER  VARCHAR2(100 BYTE),
  ISUPDATEEQC       NUMBER(1)                   DEFAULT 0
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCFAIITEMDATA  (Table) 
--
--   Row Count: 1887183
CREATE TABLE QMS.QMIPQCFAIITEMDATA
(
  ID          CHAR(32 BYTE),
  ITEMID      CHAR(32 BYTE),
  MASTERID    CHAR(32 BYTE),
  UT          VARCHAR2(100 BYTE),
  LT          VARCHAR2(100 BYTE),
  MODULENO    VARCHAR2(100 BYTE),
  TESTDATA    NUMBER(18,3),
  DELFLAG     NUMBER(1)                         DEFAULT 0,
  CREATEBY    VARCHAR2(32 BYTE),
  CREATEDT    DATE                              DEFAULT sysdate,
  LASTEDITBY  VARCHAR2(32 BYTE),
  LASTEDITDT  DATE,
  SPEC        VARCHAR2(100 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCFFGICHECKITEM  (Table) 
--
--   Row Count: 1420
CREATE TABLE QMS.QMIPQCFFGICHECKITEM
(
  ID                 CHAR(32 BYTE)              DEFAULT sys_guid(),
  PLANTID            VARCHAR2(10 BYTE),
  AUDITMASTERID      CHAR(32 BYTE),
  PROJECTNAME        NVARCHAR2(150),
  PROCESSITEMID      CHAR(32 BYTE),
  INSPECTNAME        NVARCHAR2(200),
  INSPECTITEMNO      INTEGER                    DEFAULT 0,
  INSPECTSTANDARD    NVARCHAR2(256),
  INSPECTRESULT      VARCHAR2(10 BYTE)          DEFAULT 'OK',
  EXCEPTIONCATEGORY  VARCHAR2(32 BYTE),
  EXCEPTIONCODE      NVARCHAR2(15),
  EXCEPTIONTYPE      NVARCHAR2(100),
  EXCEPTIONDESP      NVARCHAR2(256),
  OTHERCONTENT       NVARCHAR2(256),
  PDCSNO             VARCHAR2(30 BYTE),
  REMARK             NVARCHAR2(256),
  DELFLAG            NUMBER(1)                  DEFAULT 0,
  CREATEDT           DATE                       DEFAULT SYSDATE,
  CREATEBY           VARCHAR2(32 BYTE),
  LASTEDITDT         DATE,
  LASTEDITBY         VARCHAR2(32 BYTE),
  CHECKTYPE          INTEGER                    DEFAULT 0,
  DEFECTPARTS        NVARCHAR2(100),
  INSPECTVALUE       NVARCHAR2(100),
  SUPERVISENAME      NVARCHAR2(50),
  SUPERVISOR         NVARCHAR2(50),
  CORRECTACTION      NVARCHAR2(256),
  CONFIRMRESULT      NVARCHAR2(256),
  LABELPIC           NVARCHAR2(2000)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCFFGICHECKITEMLOG  (Table) 
--
--   Row Count: 23
CREATE TABLE QMS.QMIPQCFFGICHECKITEMLOG
(
  ID                 CHAR(32 BYTE)              DEFAULT sys_guid(),
  PLANTID            VARCHAR2(10 BYTE),
  FFGICHECKITEMID    CHAR(32 BYTE),
  AUDITMASTERID      CHAR(32 BYTE),
  RECORDTYPE         VARCHAR2(15 BYTE)          DEFAULT 'Original',
  INSPECTRESULT      VARCHAR2(10 BYTE)          DEFAULT NULL,
  EXCEPTIONCATEGORY  VARCHAR2(32 BYTE),
  EXCEPTIONCODE      NVARCHAR2(15),
  EXCEPTIONTYPE      NVARCHAR2(100),
  EXCEPTIONDESP      NVARCHAR2(256),
  OTHERCONTENT       NVARCHAR2(256),
  PDCSNO             VARCHAR2(30 BYTE),
  REMARK             NVARCHAR2(256),
  DELFLAG            NUMBER(1)                  DEFAULT 0,
  CREATEDT           DATE                       DEFAULT SYSDATE,
  CREATEBY           VARCHAR2(32 BYTE),
  LASTEDITDT         DATE,
  LASTEDITBY         VARCHAR2(32 BYTE),
  DEFECTPARTS        NVARCHAR2(100),
  INSPECTVALUE       NVARCHAR2(100),
  SUPERVISENAME      NVARCHAR2(50),
  SUPERVISOR         NVARCHAR2(50),
  CORRECTACTION      NVARCHAR2(256),
  CONFIRMRESULT      NVARCHAR2(256)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCFFGICHECKMASTER  (Table) 
--
--   Row Count: 2
CREATE TABLE QMS.QMIPQCFFGICHECKMASTER
(
  ID                CHAR(32 BYTE)               DEFAULT sys_guid(),
  PLANTID           VARCHAR2(10 BYTE),
  BATCHNO           VARCHAR2(15 BYTE),
  OCCURDATE         VARCHAR2(10 BYTE),
  OCCURSHIFT        VARCHAR2(10 BYTE),
  AUDITSHIFT        VARCHAR2(10 BYTE),
  PRODUCT           NVARCHAR2(20),
  OCCURAREA         NVARCHAR2(50),
  OCCURFLOOR        NVARCHAR2(50),
  OCCURLINE         NVARCHAR2(50),
  SKUNO             VARCHAR2(32 BYTE),
  SN                VARCHAR2(50 BYTE),
  FFGIINPUTER       NVARCHAR2(50),
  QECONFIRMOWNER    NVARCHAR2(50),
  QECONFIRMDATE     DATE,
  LASTREJECTREASON  NVARCHAR2(150),
  AUDITSTATUS       VARCHAR2(15 BYTE)           DEFAULT 'Open',
  REJECTCOUNT       INTEGER                     DEFAULT 0,
  AUDITLOG          NVARCHAR2(2000),
  CLOSEDATE         DATE,
  DELFLAG           NUMBER(1)                   DEFAULT 0,
  CREATEDT          DATE                        DEFAULT SYSDATE,
  CREATEBY          VARCHAR2(32 BYTE),
  LASTEDITDT        DATE,
  LASTEDITBY        VARCHAR2(32 BYTE),
  CHECKTYPE         INTEGER                     DEFAULT 0,
  PALLETNO          VARCHAR2(50 BYTE),
  ISCONTAINNG       NUMBER(1)                   DEFAULT 0
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCGOALINFO  (Table) 
--
--   Row Count: 12
CREATE TABLE QMS.QMIPQCGOALINFO
(
  ID          CHAR(32 BYTE)                     DEFAULT sys_guid(),
  PLANTID     VARCHAR2(32 BYTE),
  TYPE        VARCHAR2(10 BYTE),
  PRODUCT     VARCHAR2(50 BYTE),
  YEAR        VARCHAR2(4 BYTE),
  JAN         VARCHAR2(10 BYTE),
  FEB         VARCHAR2(10 BYTE),
  MAR         VARCHAR2(10 BYTE),
  APR         VARCHAR2(10 BYTE),
  MAY         VARCHAR2(10 BYTE),
  JUN         VARCHAR2(10 BYTE),
  JUL         VARCHAR2(10 BYTE),
  AUG         VARCHAR2(10 BYTE),
  SEP         VARCHAR2(10 BYTE),
  OCT         VARCHAR2(10 BYTE),
  NOV         VARCHAR2(10 BYTE),
  DEC         VARCHAR2(10 BYTE),
  DELFLAG     NUMBER(1)                         DEFAULT 0,
  CREATEBY    VARCHAR2(32 BYTE),
  CREATEDT    DATE,
  LASTEDITBY  VARCHAR2(32 BYTE),
  LASTEDITDT  DATE,
  PRODUCTID   VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCINSPECTSPEC  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.QMIPQCINSPECTSPEC
(
  ID               CHAR(32 BYTE)                DEFAULT sys_guid(),
  PLANTID          VARCHAR2(32 BYTE),
  PARTNO           VARCHAR2(32 BYTE),
  PARTREV          VARCHAR2(10 BYTE),
  VENDOR           NVARCHAR2(100),
  MATERIALTYPE     NVARCHAR2(100),
  MATERIALNAME     NVARCHAR2(100),
  INSPECTTYPE      VARCHAR2(20 BYTE)            DEFAULT 'Dimension',
  LOCATIONCONTENT  NVARCHAR2(100),
  SPEC             NVARCHAR2(100),
  SPECPIC          NVARCHAR2(300),
  ITEMINDEX        INTEGER                      DEFAULT 0,
  MINVALUE         NUMBER(18,3),
  MINVALUESPEC     NVARCHAR2(10),
  MAXVALUE         NUMBER(18,3),
  MAXVALUESPEC     NVARCHAR2(10),
  INSPECTSPEC      NVARCHAR2(150),
  UNIT             NVARCHAR2(30),
  TESTTOOLS        NVARCHAR2(30),
  TOOLSSIZE        NVARCHAR2(30),
  CREATEDT         DATE                         DEFAULT SYSDATE,
  CREATEBY         VARCHAR2(32 BYTE),
  LASTEDITDT       DATE,
  LASTEDITBY       VARCHAR2(32 BYTE),
  TIGTENMAXCOUNT   INTEGER                      DEFAULT 0,
  NORMALMAXCOUNT   INTEGER                      DEFAULT 0,
  SPECBASE64       NCLOB,
  DRAWINGNO        VARCHAR2(64 BYTE),
  DRAWINGREV       VARCHAR2(10 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCLINE  (Table) 
--
--   Row Count: 490
CREATE TABLE QMS.QMIPQCLINE
(
  ID             CHAR(32 BYTE)                  DEFAULT sys_guid(),
  PLANTID        VARCHAR2(32 BYTE),
  MESLINE        VARCHAR2(50 BYTE),
  QMSLINE        VARCHAR2(50 BYTE),
  DELFLAG        NUMBER(1)                      DEFAULT 0,
  CREATEBY       VARCHAR2(32 BYTE),
  CREATEDT       DATE,
  LASTEDITBY     VARCHAR2(32 BYTE),
  LASTEDITDT     DATE,
  MESDEPARTMENT  VARCHAR2(50 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCPARTINFO  (Table) 
--
--   Row Count: 944
CREATE TABLE QMS.QMIPQCPARTINFO
(
  ID          CHAR(32 BYTE)                     DEFAULT sys_guid(),
  PARTNO      VARCHAR2(100 BYTE),
  DRAWINGNO   VARCHAR2(100 BYTE),
  SPECNO      VARCHAR2(100 BYTE),
  DELFLAG     NUMBER(1)                         DEFAULT 0,
  CREATEBY    VARCHAR2(32 BYTE),
  CREATEDT    DATE,
  LASTEDITBY  VARCHAR2(32 BYTE),
  LASTEDITDT  DATE,
  PLANTID     VARCHAR2(32 BYTE),
  TYPE        VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCPROCESSLINEITEM  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.QMIPQCPROCESSLINEITEM
(
  ID          CHAR(32 BYTE)                     DEFAULT sys_guid(),
  ITEMID      CHAR(32 BYTE),
  AREA        VARCHAR2(50 BYTE),
  LINE        VARCHAR2(50 BYTE),
  TESTTYPE    VARCHAR2(32 BYTE),
  TESTDATE    DATE,
  CREATEBY    VARCHAR2(32 BYTE),
  CREATEDT    DATE,
  LASTEDITBY  VARCHAR2(32 BYTE),
  LASTEDITDT  DATE,
  PARTNO      VARCHAR2(100 BYTE),
  CHECKTYPE   VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCPROJECTPROCESS  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.QMIPQCPROJECTPROCESS
(
  ID             CHAR(32 BYTE)                  DEFAULT sys_guid(),
  PLANTID        VARCHAR2(10 BYTE),
  PROJECTTYPE    VARCHAR2(15 BYTE),
  PROJECTNAME    NVARCHAR2(150),
  PROJECTSTATUS  NUMBER(1)                      DEFAULT 0,
  DELFLAG        NUMBER(1)                      DEFAULT 0,
  CREATEDT       DATE                           DEFAULT SYSDATE,
  CREATEBY       VARCHAR2(32 BYTE),
  LASTEDITDT     DATE,
  LASTEDITBY     VARCHAR2(32 BYTE),
  PRODUCTS       VARCHAR2(20 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCPROJECTPROCESSITEM  (Table) 
--
--   Row Count: 64750
CREATE TABLE QMS.QMIPQCPROJECTPROCESSITEM
(
  ID                CHAR(32 BYTE)               DEFAULT sys_guid(),
  PLANTID           VARCHAR2(10 BYTE),
  PROJECTPROCESSID  CHAR(32 BYTE),
  INSPECTITEM       NVARCHAR2(256),
  INSPECTITEMNO     INTEGER                     DEFAULT 1,
  FREQUENCY         INTEGER                     DEFAULT 0,
  FREQUENCYUNIT     NVARCHAR2(15),
  INSPECTSTANDARD   NVARCHAR2(256),
  INSPECTMETHOD     NVARCHAR2(256),
  DELFLAG           NUMBER(1)                   DEFAULT 0,
  CREATEDT          DATE                        DEFAULT SYSDATE,
  CREATEBY          VARCHAR2(32 BYTE),
  LASTEDITDT        DATE,
  LASTEDITBY        VARCHAR2(32 BYTE),
  INSPECTNAME       NVARCHAR2(200)              DEFAULT NULL,
  INSPECTTYPE       VARCHAR2(15 BYTE),
  PRODUCT           VARCHAR2(20 BYTE),
  CHECKTYPE         INTEGER                     DEFAULT 0,
  PARTNO            VARCHAR2(100 BYTE),
  DRAWING           VARCHAR2(100 BYTE),
  TESTTYPE          VARCHAR2(32 BYTE)           DEFAULT 'D',
  TESTDATE          DATE,
  TESTFREQUENCY     INTEGER                     DEFAULT 1
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.QMIPQCPROJECTPROCESSITEM.TESTTYPE IS 'D:日,W:周,M:月,';


--
-- QMIPQCPROJECTPROCESSLINE  (Table) 
--
--   Row Count: 88186
CREATE TABLE QMS.QMIPQCPROJECTPROCESSLINE
(
  ID             CHAR(32 BYTE)                  DEFAULT sys_guid(),
  ITEMID         CHAR(32 BYTE),
  AREA           VARCHAR2(100 BYTE),
  FLOOR          VARCHAR2(100 BYTE),
  LINE           VARCHAR2(100 BYTE),
  TESTTYPE       VARCHAR2(100 BYTE),
  TESTDATE       DATE,
  DELFLAG        NUMBER(1)                      DEFAULT 0,
  CREATEBY       VARCHAR2(32 BYTE),
  CREATEDT       DATE,
  LASTEDITBY     VARCHAR2(32 BYTE),
  LASTEDITDT     DATE,
  PRODUCT        VARCHAR2(100 BYTE),
  PARTNO         VARCHAR2(100 BYTE),
  PLANTID        VARCHAR2(32 BYTE),
  INSPECTTYPE    VARCHAR2(32 BYTE),
  TESTFREQUENCY  INTEGER                        DEFAULT 1
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCQTYINFO  (Table) 
--
--   Row Count: 15889
CREATE TABLE QMS.QMIPQCQTYINFO
(
  ID              CHAR(32 BYTE)                 DEFAULT sys_guid(),
  PLANTID         VARCHAR2(10 BYTE),
  PRODUCTDATE     DATE,
  DEPARTMENTNAME  VARCHAR2(50 BYTE),
  LINE            VARCHAR2(50 BYTE),
  PARTNO          VARCHAR2(200 BYTE),
  QTY             INTEGER,
  DELFLAG         NUMBER(1)                     DEFAULT 0,
  CREATEBY        VARCHAR2(32 BYTE),
  CREATEDT        DATE,
  LASTEDITBY      VARCHAR2(32 BYTE),
  LASTEDITDT      DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCROHSINSPECTDATA  (Table) 
--
--   Row Count: 8
CREATE TABLE QMS.QMIPQCROHSINSPECTDATA
(
  ID          CHAR(32 BYTE)                     DEFAULT sys_guid(),
  ITEMID      CHAR(32 BYTE),
  TESTVALUE   VARCHAR2(100 BYTE),
  CREATEBY    VARCHAR2(32 BYTE),
  CREATEDT    DATE,
  LASTEDITBY  VARCHAR2(32 BYTE),
  LASTEDITDT  DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCROHSINSPECTDETAIL  (Table) 
--
--   Row Count: 1388
CREATE TABLE QMS.QMIPQCROHSINSPECTDETAIL
(
  ID          CHAR(32 BYTE)                     DEFAULT sys_guid(),
  MASTERID    CHAR(32 BYTE),
  ITEMNAME    VARCHAR2(100 BYTE),
  UT          VARCHAR2(100 BYTE),
  LT          VARCHAR2(100 BYTE),
  TESTVALUE   VARCHAR2(1000 BYTE),
  TESTRESULT  VARCHAR2(100 BYTE),
  CREATEBY    VARCHAR2(32 BYTE),
  CREATEDT    DATE,
  LASTEDITBY  VARCHAR2(32 BYTE),
  LASTEDITDT  DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCROHSINSPECTITEM  (Table) 
--
--   Row Count: 5352
CREATE TABLE QMS.QMIPQCROHSINSPECTITEM
(
  ID          CHAR(32 BYTE)                     DEFAULT sys_guid(),
  MASTERID    CHAR(32 BYTE),
  ITEMNAME    VARCHAR2(100 BYTE),
  UT          VARCHAR2(100 BYTE),
  LT          VARCHAR2(100 BYTE),
  DELFLAG     NUMBER(1)                         DEFAULT 0,
  CREATEBY    VARCHAR2(32 BYTE),
  CREATEDT    DATE,
  LASTEDITBY  VARCHAR2(32 BYTE),
  LASTEDITDT  DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCROHSINSPECTLIST  (Table) 
--
--   Row Count: 377
CREATE TABLE QMS.QMIPQCROHSINSPECTLIST
(
  ID                 CHAR(32 BYTE)              DEFAULT SYS_GUID(),
  PLANTID            VARCHAR2(10 BYTE),
  AREA               VARCHAR2(32 BYTE),
  LINE               VARCHAR2(100 BYTE),
  PRODUCT            VARCHAR2(100 BYTE),
  ROHSTESTFREQUENCY  INTEGER                    DEFAULT 0,
  ROHSFREQUENCYUNIT  NVARCHAR2(30)              DEFAULT '月/次',
  PLANTESTDATE       DATE,
  TESTITEMS          VARCHAR2(100 BYTE),
  DELFLAG            NUMBER(1)                  DEFAULT 0,
  CREATEDT           DATE                       DEFAULT SYSDATE,
  CREATEBY           VARCHAR2(32 BYTE),
  LASTEDITDT         DATE,
  LASTEDITBY         VARCHAR2(32 BYTE),
  OWNER              VARCHAR2(50 BYTE),
  EMAIL              VARCHAR2(200 BYTE),
  COMPONENT          VARCHAR2(100 BYTE),
  FLOOR              VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCROHSINSPECTMASTER  (Table) 
--
--   Row Count: 182
CREATE TABLE QMS.QMIPQCROHSINSPECTMASTER
(
  ID             CHAR(32 BYTE)                  DEFAULT sys_guid(),
  PLANTID        VARCHAR2(10 BYTE),
  AREA           VARCHAR2(32 BYTE),
  LINE           VARCHAR2(100 BYTE),
  PARTNAME       VARCHAR2(100 BYTE),
  PARTNO         VARCHAR2(100 BYTE),
  DATECODE       VARCHAR2(30 BYTE),
  TESTFREQUENCY  VARCHAR2(50 BYTE),
  PLANTESTDT     DATE,
  ACTUALTESTDT   DATE,
  TESTNO         VARCHAR2(100 BYTE),
  TESTITEMS      VARCHAR2(100 BYTE),
  INSPECTRESULT  VARCHAR2(10 BYTE)              DEFAULT 'OK',
  REMARK         NVARCHAR2(256),
  DELFLAG        NUMBER(1)                      DEFAULT 0,
  CREATEDT       DATE                           DEFAULT SYSDATE,
  CREATEBY       VARCHAR2(32 BYTE),
  LASTEDITDT     DATE,
  LASTEDITBY     VARCHAR2(32 BYTE),
  ROHSID         CHAR(32 BYTE),
  STATUS         VARCHAR2(20 BYTE)              DEFAULT 'Open',
  REPORT         VARCHAR2(1000 BYTE),
  COMPONENT      VARCHAR2(100 BYTE),
  FLOOR          VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCSNINFO  (Table) 
--
--   Row Count: 178197
CREATE TABLE QMS.QMIPQCSNINFO
(
  ID                 CHAR(32 BYTE)              DEFAULT sys_guid(),
  BARCODE            VARCHAR2(200 BYTE),
  DEPARTMENTNAME     VARCHAR2(50 BYTE),
  PRODUCTNAME        VARCHAR2(200 BYTE),
  SPLITDATE          DATE,
  KEYPARTSN          VARCHAR2(200 BYTE),
  PLANTID            VARCHAR2(10 BYTE),
  DELFLAG            NUMBER(1)                  DEFAULT 0,
  CREATEBY           VARCHAR2(32 BYTE),
  CREATEDT           DATE                       DEFAULT sysdate,
  LASTEDITBY         VARCHAR2(32 BYTE),
  LASTEDITDT         DATE,
  KEYDEPARTMENTNAME  VARCHAR2(50 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCTOURITEM  (Table) 
--
--   Row Count: 465617
CREATE TABLE QMS.QMIPQCTOURITEM
(
  ID                 CHAR(32 BYTE)              DEFAULT sys_guid(),
  PLANTID            VARCHAR2(10 BYTE),
  AUDITMASTERID      CHAR(32 BYTE),
  PROJECTNAME        NVARCHAR2(150),
  INSPECTITEM        NVARCHAR2(256),
  FREQUENCY          INTEGER                    DEFAULT 0,
  FREQUENCYUNIT      NVARCHAR2(15),
  TIMEFROM           CHAR(5 BYTE),
  TIMETO             CHAR(5 BYTE),
  OCCURSECTION       NVARCHAR2(50),
  OCCURSTATION       NVARCHAR2(50),
  INSPECTRESULT      VARCHAR2(10 BYTE)          DEFAULT 'NO',
  DEFECTQTY          INTEGER                    DEFAULT 0,
  EXCEPTIONCODE      NVARCHAR2(15),
  EXCEPTIONTYPE      NVARCHAR2(100),
  EXCEPTIONDESP      NVARCHAR2(256),
  OTHERCONTENT       NVARCHAR2(256),
  PDCSNO             VARCHAR2(30 BYTE),
  REMARK             NVARCHAR2(256),
  DELFLAG            NUMBER(1)                  DEFAULT 0,
  CREATEDT           DATE                       DEFAULT SYSDATE,
  CREATEBY           VARCHAR2(32 BYTE),
  LASTEDITDT         DATE,
  LASTEDITBY         VARCHAR2(32 BYTE),
  PROCESSITEMID      CHAR(32 BYTE),
  TIMESEQ            VARCHAR2(10 BYTE),
  INSPECTITEMNO      INTEGER                    DEFAULT 0,
  EXCEPTIONCATEGORY  VARCHAR2(200 BYTE),
  INSPECTNAME        NVARCHAR2(200),
  ISGREATEXCEPTION   NUMBER(1)                  DEFAULT 0,
  AUDITTIME          DATE,
  SUPERVISENAME      NVARCHAR2(50),
  SUPERVISOR         NVARCHAR2(50),
  CORRECTACTION      NVARCHAR2(256),
  CONFIRMRESULT      NVARCHAR2(256),
  LABELPIC           NVARCHAR2(2000),
  DRAWING            VARCHAR2(100 BYTE),
  TESTNO             VARCHAR2(100 BYTE),
  TESTINFO           VARCHAR2(1000 BYTE),
  INSPECTMETHOD      VARCHAR2(1000 BYTE),
  TESTTYPE           VARCHAR2(32 BYTE)          DEFAULT 'D',
  PRODUCEREASON      VARCHAR2(4000 BYTE),
  FLOWREASON         VARCHAR2(4000 BYTE),
  SHORTMETHOD        VARCHAR2(4000 BYTE),
  LONGMETHOD         VARCHAR2(4000 BYTE),
  NGINPUTER          VARCHAR2(32 BYTE),
  NGINPUTDATE        DATE,
  NGCONFIRMER        VARCHAR2(32 BYTE),
  NGCONFIRMDATE      DATE,
  NGREJECTREASON     VARCHAR2(4000 BYTE),
  ITEMSTATUS         VARCHAR2(32 BYTE)          DEFAULT 'Open'
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCTOURITEMDATA  (Table) 
--
--   Row Count: 2330167
CREATE TABLE QMS.QMIPQCTOURITEMDATA
(
  ID          CHAR(32 BYTE),
  ITEMID      CHAR(32 BYTE),
  MASTERID    CHAR(32 BYTE),
  UT          VARCHAR2(100 BYTE),
  LT          VARCHAR2(100 BYTE),
  MODULENO    VARCHAR2(100 BYTE),
  TESTDATA    NUMBER(18,3),
  DELFLAG     NUMBER(1)                         DEFAULT 0,
  CREATEBY    VARCHAR2(32 BYTE),
  CREATEDT    DATE                              DEFAULT sysdate,
  LASTEDITBY  VARCHAR2(32 BYTE),
  LASTEDITDT  DATE,
  SPEC        VARCHAR2(100 BYTE),
  TIMEFROM    CHAR(5 BYTE),
  TIMETO      CHAR(5 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCTOURITEMLOG  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.QMIPQCTOURITEMLOG
(
  ID                 CHAR(32 BYTE)              DEFAULT sys_guid(),
  PLANTID            VARCHAR2(10 BYTE),
  CHECKITEMID        CHAR(32 BYTE),
  AUDITMASTERID      CHAR(32 BYTE),
  RECORDTYPE         VARCHAR2(15 BYTE)          DEFAULT 'Original',
  OCCURSECTION       NVARCHAR2(50),
  OCCURSTATION       NVARCHAR2(50),
  INSPECTRESULT      VARCHAR2(10 BYTE),
  DEFECTQTY          INTEGER                    DEFAULT 0,
  EXCEPTIONCODE      NVARCHAR2(15),
  EXCEPTIONTYPE      NVARCHAR2(100),
  EXCEPTIONDESP      NVARCHAR2(256),
  OTHERCONTENT       NVARCHAR2(256),
  PDCSNO             VARCHAR2(30 BYTE),
  REMARK             NVARCHAR2(256),
  DELFLAG            NUMBER(1)                  DEFAULT 0,
  CREATEDT           DATE                       DEFAULT SYSDATE,
  CREATEBY           VARCHAR2(32 BYTE),
  LASTEDITDT         DATE,
  LASTEDITBY         VARCHAR2(32 BYTE),
  EXCEPTIONCATEGORY  VARCHAR2(32 BYTE),
  ISGREATEXCEPTION   NUMBER(1)                  DEFAULT 0,
  AUDITTIME          DATE,
  SUPERVISENAME      NVARCHAR2(50),
  SUPERVISOR         NVARCHAR2(50),
  CORRECTACTION      NVARCHAR2(256),
  CONFIRMRESULT      NVARCHAR2(256)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIPQCTOURMASTER  (Table) 
--
--   Row Count: 9895
CREATE TABLE QMS.QMIPQCTOURMASTER
(
  ID                CHAR(32 BYTE)               DEFAULT sys_guid(),
  PLANTID           VARCHAR2(10 BYTE),
  BATCHNO           VARCHAR2(15 BYTE),
  OCCURDATE         VARCHAR2(10 BYTE),
  OCCURSHIFT        VARCHAR2(10 BYTE),
  CHECKTYPE         NVARCHAR2(50),
  PRODUCT           NVARCHAR2(20),
  OCCURAREA         NVARCHAR2(50),
  OCCURFLOOR        NVARCHAR2(50),
  OCCURLINE         NVARCHAR2(50),
  FAIINPUTER        NVARCHAR2(50),
  ENGCONFIRMOWNER   NVARCHAR2(50),
  ENGCONFIRMDATE    DATE,
  QECONFIRMOWNER    NVARCHAR2(50),
  QECONFIRMDATE     DATE,
  LASTREJECTREASON  NVARCHAR2(150),
  REJECTCOUNT       INTEGER                     DEFAULT 0,
  AUDITLOG          NVARCHAR2(2000),
  AUDITSTATUS       VARCHAR2(15 BYTE)           DEFAULT 'Open',
  CLOSEDATE         DATE,
  WORKORDER         VARCHAR2(30 BYTE),
  SKUNO             VARCHAR2(32 BYTE),
  SN                VARCHAR2(50 BYTE),
  BARCODE1          VARCHAR2(50 BYTE),
  BARCODE2          VARCHAR2(50 BYTE),
  BARCODE3          VARCHAR2(50 BYTE),
  BARCODE4          VARCHAR2(50 BYTE),
  BARCODE5          VARCHAR2(50 BYTE),
  BARCODE6          VARCHAR2(50 BYTE),
  BARCODE7          VARCHAR2(50 BYTE),
  BARCODE8          VARCHAR2(50 BYTE),
  BARCODE9          VARCHAR2(50 BYTE),
  TESTRESULT        NVARCHAR2(50),
  PDCSNO            VARCHAR2(30 BYTE),
  LABELPIC          NVARCHAR2(2000),
  DELFLAG           NUMBER(1)                   DEFAULT 0,
  CREATEDT          DATE                        DEFAULT SYSDATE,
  CREATEBY          VARCHAR2(32 BYTE),
  LASTEDITDT        DATE,
  LASTEDITBY        VARCHAR2(32 BYTE),
  BARCODE10         VARCHAR2(50 BYTE),
  AUDITSHIFT        VARCHAR2(10 BYTE),
  ISCONTAINNG       NUMBER(1)                   DEFAULT 0,
  ALLBARCODE        NVARCHAR2(2000),
  DEPARTMENT        VARCHAR2(200 BYTE),
  SENDTIME          VARCHAR2(20 BYTE),
  QTY               VARCHAR2(20 BYTE),
  DATECODE          VARCHAR2(200 BYTE),
  DRAWINGNO         VARCHAR2(100 BYTE),
  DRAWINGREV        VARCHAR2(50 BYTE),
  SPECNO            VARCHAR2(100 BYTE),
  SPECREV           VARCHAR2(50 BYTE),
  ISUPDATEEQC       NUMBER(1)                   DEFAULT 0,
  DATATYPE          VARCHAR2(10 BYTE)           DEFAULT 'T'
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCABNORMALINSPECTION  (Table) 
--
--   Row Count: 20
CREATE TABLE QMS.QMIQCABNORMALINSPECTION
(
  ID               CHAR(32 BYTE)                DEFAULT SYS_GUID(),
  PLANTID          VARCHAR2(10 BYTE),
  PARTNO           VARCHAR2(32 BYTE),
  VENDOR           NVARCHAR2(100),
  PARTCATEGORY     NVARCHAR2(30),
  PARTTYPE         NVARCHAR2(30),
  PARTNAME         NVARCHAR2(30),
  ABNORMALTYPE     VARCHAR2(20 BYTE),
  CAVITYNO         VARCHAR2(30 BYTE),
  INSPECTDATE      VARCHAR2(10 BYTE),
  BATCHQTY         NUMBER(18,3)                 DEFAULT 0,
  DATECODE         VARCHAR2(30 BYTE),
  ABNORMALDESC     NVARCHAR2(256),
  SAMPLEMET        VARCHAR2(10 BYTE),
  NORMAL           NVARCHAR2(100),
  ABNORMALTIGTEN   NVARCHAR2(100),
  REWORKTIGTEN     NVARCHAR2(100),
  INSPECTRESULT    VARCHAR2(10 BYTE)            DEFAULT 'NG',
  DEFECTRATE       VARCHAR2(10 BYTE),
  SQE              NVARCHAR2(30),
  HANDLESTYLE      VARCHAR2(30 BYTE)            DEFAULT 'Pending',
  LINERETURNTRACK  NVARCHAR2(256),
  REWORKDT         VARCHAR2(10 BYTE),
  REMARK           NVARCHAR2(256),
  DELFLAG          NUMBER(1)                    DEFAULT 0,
  CREATEDT         DATE                         DEFAULT SYSDATE,
  CREATEBY         VARCHAR2(32 BYTE),
  LASTEDITDT       DATE,
  LASTEDITBY       VARCHAR2(32 BYTE),
  ISINSPECTOUT     VARCHAR2(5 BYTE),
  VENDORTYPE       VARCHAR2(20 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCAPPROVEPROGRESS  (Table) 
--
--   Row Count: 25
CREATE TABLE QMS.QMIQCAPPROVEPROGRESS
(
  ID                         CHAR(32 BYTE)      DEFAULT sys_guid(),
  INSPECTIONID               CHAR(32 BYTE),
  INSPECTRESULT              VARCHAR2(20 BYTE),
  INSPECTRESULTREASON        NVARCHAR2(500),
  VDCSNO                     VARCHAR2(30 BYTE),
  CHANGEINSPECTRESULT        VARCHAR2(20 BYTE),
  CHANGEINSPECTRESULTREASON  NVARCHAR2(500),
  CHANGEVDCSNO               VARCHAR2(30 BYTE),
  REMARK                     NVARCHAR2(500),
  APPROVEBY                  NVARCHAR2(20),
  APPROVEREMARK              NVARCHAR2(500),
  APPROVERESULT              VARCHAR2(20 BYTE),
  ISFINISH                   NUMBER             DEFAULT 0,
  CREATEBY                   VARCHAR2(32 BYTE),
  CREATEDT                   DATE               DEFAULT SYSDATE,
  LASTEDITBY                 VARCHAR2(32 BYTE),
  LASTEDITDT                 DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCEQCDATA  (Table) 
--
--   Row Count: 2393
CREATE TABLE QMS.QMIQCEQCDATA
(
  ID          CHAR(32 BYTE),
  TESTNO      CHAR(32 BYTE),
  SPEC        VARCHAR2(100 BYTE),
  UT          VARCHAR2(100 BYTE),
  LT          VARCHAR2(100 BYTE),
  MODULENO    VARCHAR2(100 BYTE),
  TESTDATA    NUMBER(18,3),
  DELFLAG     NUMBER(1)                         DEFAULT 0,
  CREATEBY    VARCHAR2(32 BYTE),
  CREATEDT    DATE                              DEFAULT sysdate,
  LASTEDITBY  VARCHAR2(32 BYTE),
  LASTEDITDT  DATE,
  PLANTID     VARCHAR2(32 BYTE),
  DRAWING     VARCHAR2(50 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCFREEINSPECT  (Table) 
--
--   Row Count: 391
CREATE TABLE QMS.QMIQCFREEINSPECT
(
  ID               CHAR(32 BYTE)                DEFAULT sys_guid(),
  VENDORCODE       VARCHAR2(200 BYTE),
  VENDOR           VARCHAR2(200 BYTE),
  MATERIALTYPE     VARCHAR2(200 BYTE),
  MATERIALTYPEID   CHAR(32 BYTE),
  FREESCOPE        VARCHAR2(200 BYTE),
  PARTNO           VARCHAR2(200 BYTE),
  STARTDATE        DATE,
  DELFLAG          NUMBER(1)                    DEFAULT 0,
  REMARK           VARCHAR2(1000 BYTE),
  CREATEBY         VARCHAR2(32 BYTE),
  CREATEDT         DATE,
  LASTEDITBY       VARCHAR2(32 BYTE),
  LASTEDITDT       DATE,
  PLANTID          VARCHAR2(32 BYTE),
  TESTFREQUENCY    INTEGER,
  FREQUENCYUNIT    VARCHAR2(32 BYTE),
  FREECOUNT        INTEGER                      DEFAULT 0,
  ISINSPECT        NUMBER(1)                    DEFAULT 0,
  LASTINSPECTDATE  DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCFREQUENCY  (Table) 
--
--   Row Count: 53017
CREATE TABLE QMS.QMIQCFREQUENCY
(
  ID              CHAR(32 BYTE)                 DEFAULT sys_guid(),
  INSPECTIONID    CHAR(32 BYTE),
  GRNO            VARCHAR2(100 BYTE),
  PARTNO          VARCHAR2(100 BYTE),
  ITEMNO          INTEGER,
  ISTEST          NUMBER(1),
  CREATEBY        VARCHAR2(32 BYTE),
  CREATEDT        DATE,
  SPECID          CHAR(32 BYTE),
  PLANTID         VARCHAR2(32 BYTE),
  TOTALCOUNT      INTEGER,
  UNTESTCOUNT     INTEGER,
  TESTEDCOUNT     INTEGER,
  LATESTTESTDATE  DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCFREQUENCYBAK  (Table) 
--
--   Row Count: 8813
CREATE TABLE QMS.QMIQCFREQUENCYBAK
(
  ID              CHAR(32 BYTE),
  INSPECTIONID    CHAR(32 BYTE),
  GRNO            VARCHAR2(100 BYTE),
  PARTNO          VARCHAR2(100 BYTE),
  ITEMNO          INTEGER,
  ISTEST          NUMBER(1),
  CREATEBY        VARCHAR2(32 BYTE),
  CREATEDT        DATE,
  SPECID          CHAR(32 BYTE),
  PLANTID         VARCHAR2(32 BYTE),
  TOTALCOUNT      INTEGER,
  UNTESTCOUNT     INTEGER,
  TESTEDCOUNT     INTEGER,
  LATESTTESTDATE  DATE,
  LOGDT           DATE,
  LOGBY           VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCHEAD  (Table) 
--
--   Row Count: 72070
CREATE TABLE QMS.QMIQCHEAD
(
  GRNO         VARCHAR2(32 BYTE),
  VENDORCODE   VARCHAR2(32 BYTE),
  VENDOR       VARCHAR2(50 BYTE),
  CREATEBY     VARCHAR2(32 BYTE),
  CREATEDT     DATE,
  LASTEDITBY   VARCHAR2(32 BYTE),
  LASTEDITDT   DATE,
  PLANTID      VARCHAR2(10 BYTE),
  AUDITSTATUS  VARCHAR2(32 BYTE)                DEFAULT 'Open',
  DELFLAG      NUMBER(1)                        DEFAULT 0,
  ID           CHAR(32 BYTE)                    DEFAULT SYS_GUID(),
  ISINSPECT    NUMBER(1)                        DEFAULT 0,
  INSPECTQTY   NUMBER(18,3)                     DEFAULT 0,
  ISMASTER     NUMBER(1)                        DEFAULT 0
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.QMIQCHEAD.ISMASTER IS '0表示輔單,1表示系統認為的主單,2表示最終用戶登記那會兒的系統最終的主單';


--
-- QMIQCINSPECTIONDETAIL  (Table) 
--
--   Row Count: 74716
CREATE TABLE QMS.QMIQCINSPECTIONDETAIL
(
  ID               CHAR(32 BYTE)                DEFAULT sys_guid(),
  PLANTID          VARCHAR2(32 BYTE),
  INSPECTIONID     CHAR(32 BYTE),
  INSPECTTYPE      VARCHAR2(20 BYTE)            DEFAULT 'Dimension',
  LOCATIONCONTENT  NVARCHAR2(100),
  SPEC             NVARCHAR2(500),
  SPECPIC          NVARCHAR2(300),
  ITEMINDEX        INTEGER                      DEFAULT 0,
  MINVALUE         NUMBER(18,3)                 DEFAULT NULL,
  MINVALUESPEC     NVARCHAR2(10),
  MAXVALUE         NUMBER(18,3)                 DEFAULT NULL,
  MAXVALUESPEC     NVARCHAR2(10),
  INSPECTSPEC      NVARCHAR2(500),
  UNIT             NVARCHAR2(30),
  VALUE            NVARCHAR2(1000),
  TESTTOOLS        NVARCHAR2(30),
  TOOLSSIZE        NVARCHAR2(30),
  INSPECTRESULT    VARCHAR2(20 BYTE),
  CREATEDT         DATE                         DEFAULT SYSDATE,
  CREATEBY         VARCHAR2(32 BYTE)            DEFAULT '',
  LASTEDITDT       DATE,
  LASTEDITBY       VARCHAR2(32 BYTE),
  SPECBASE64       NCLOB,
  ISIQCINPUT       NUMBER(1)                    DEFAULT 0,
  ISTEST           NUMBER(1)                    DEFAULT 0,
  SPECID           CHAR(32 BYTE),
  SAMPLEUNIT       VARCHAR2(30 BYTE),
  SAMPLEQTY        VARCHAR2(10 BYTE),
  LAB              VARCHAR2(32 BYTE),
  TESTNO           VARCHAR2(100 BYTE),
  REPORTFILE       VARCHAR2(1000 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             8K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCINSPECTIONITEM  (Table) 
--
--   Row Count: 354
CREATE TABLE QMS.QMIQCINSPECTIONITEM
(
  ID                  CHAR(32 BYTE)             DEFAULT sys_guid(),
  INSPECTIONID        CHAR(32 BYTE),
  INSPECTITEMCODE     VARCHAR2(20 BYTE),
  ISNOTEEFUNCINSPECT  NUMBER(1)                 DEFAULT 1,
  INSPECTITEM         NVARCHAR2(20),
  ERRORCODEID         VARCHAR2(32 BYTE),
  ERRORNAME           NVARCHAR2(100),
  ERRORCOMMENT        NVARCHAR2(100),
  QTY                 INTEGER                   DEFAULT 0,
  SPEC                NVARCHAR2(256),
  INSPECTTOOL         NVARCHAR2(100),
  INSPECTRESULT       NVARCHAR2(50),
  CREATEBY            VARCHAR2(30 BYTE),
  CREATEDT            DATE                      DEFAULT SYSDATE,
  LASTEDITBY          VARCHAR2(30 BYTE),
  LASTEDITDT          DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCINSPECTIONLOGIC  (Table) 
--
--   Row Count: 92
CREATE TABLE QMS.QMIQCINSPECTIONLOGIC
(
  ID                  CHAR(32 BYTE)             DEFAULT SYS_GUID(),
  PLANTID             VARCHAR2(10 BYTE),
  PARTNO              VARCHAR2(32 BYTE),
  VENDOR              NVARCHAR2(100),
  CURRENTSTATUS       VARCHAR2(10 BYTE),
  RECORDCOUNT         INTEGER                   DEFAULT 0,
  CONTINUEREJCTCOUNT  INTEGER                   DEFAULT 0,
  REMARK              NVARCHAR2(256),
  DELFLAG             NUMBER(1)                 DEFAULT 0,
  CREATEDT            DATE                      DEFAULT SYSDATE,
  CREATEBY            VARCHAR2(32 BYTE),
  LASTEDITDT          DATE,
  LASTEDITBY          VARCHAR2(32 BYTE),
  VMIVENDOR           NVARCHAR2(100),
  LASTSTSINSPECTDT    DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCINSPECTIONMASTER  (Table) 
--
--   Row Count: 1333
CREATE TABLE QMS.QMIQCINSPECTIONMASTER
(
  INSPECTIONID         CHAR(32 BYTE)            DEFAULT sys_guid(),
  PLANTID              VARCHAR2(10 BYTE),
  GRID                 VARCHAR2(32 BYTE),
  GRNO                 VARCHAR2(50 BYTE),
  GRDATE               VARCHAR2(10 BYTE),
  PALLETNO             VARCHAR2(30 BYTE),
  CAVITYNO             VARCHAR2(30 BYTE),
  LOTNO                VARCHAR2(1000 BYTE),
  PARTNO               VARCHAR2(32 BYTE),
  PARTREV              VARCHAR2(10 BYTE)        DEFAULT '/',
  CUSTOMERPARTNO       VARCHAR2(32 BYTE),
  CUSTOMERPARTREV      VARCHAR2(10 BYTE),
  PARTCATEGORY         NVARCHAR2(30),
  PARTTYPE             NVARCHAR2(30),
  PARTNAME             NVARCHAR2(30),
  VMIVENDOR            NVARCHAR2(100),
  VENDOR               NVARCHAR2(100),
  DATECODE             VARCHAR2(30 BYTE),
  PRODUCT              VARCHAR2(20 BYTE)        DEFAULT '/',
  SHIFT                VARCHAR2(10 BYTE),
  ZONE                 VARCHAR2(20 BYTE),
  CONFIG               VARCHAR2(10 BYTE),
  DRAWINGVERSION       VARCHAR2(10 BYTE),
  COMPONENTLOCATION    NVARCHAR2(100),
  COLOR                VARCHAR2(20 BYTE),
  BATCHQTY             NUMBER(18,3)             DEFAULT 0,
  SAMPLEMET            VARCHAR2(10 BYTE),
  DIMENSIONSAMPLING    VARCHAR2(20 BYTE)        DEFAULT '105ES-2',
  DIMENSIONAQL         NUMBER(8,2),
  DIMENSIONINSPQTY     NUMBER(18,3)             DEFAULT 0,
  DIMENSIONFAILQTY     NUMBER(18,3)             DEFAULT 0,
  DIMENSIONAC          INTEGER                  DEFAULT 0,
  DIMENSIONRE          INTEGER                  DEFAULT 0,
  CRSAMPLING           VARCHAR2(20 BYTE),
  CRINSPQTY            NUMBER(18,3)             DEFAULT 0,
  CRFAILQTY            NUMBER(18,3)             DEFAULT 0,
  CRAC                 INTEGER                  DEFAULT 0,
  CRRE                 INTEGER                  DEFAULT 0,
  MASAMPLING           VARCHAR2(20 BYTE)        DEFAULT '105EII',
  MAINSPQTY            NUMBER(18,3)             DEFAULT 0,
  MAFAILQTY            NUMBER(18,3)             DEFAULT 0,
  MAAC                 INTEGER                  DEFAULT 0,
  MARE                 INTEGER                  DEFAULT 0,
  MISAMPLING           VARCHAR2(20 BYTE)        DEFAULT '105EII',
  MIINSPQTY            NUMBER(18,3)             DEFAULT 0,
  MIFAILQTY            NUMBER(18,3)             DEFAULT 0,
  MIAC                 INTEGER                  DEFAULT 0,
  MIRE                 INTEGER                  DEFAULT 0,
  ISSHIPMENTREPORT     NUMBER(1)                DEFAULT 1,
  INSPECTOR            VARCHAR2(20 BYTE),
  INSPECTORNAME        NVARCHAR2(20),
  VISUALINSPECTDESC    NVARCHAR2(1000),
  MANUFACTUREDT        VARCHAR2(10 BYTE),
  INSPECTDATE          VARCHAR2(10 BYTE),
  APPROVER             NVARCHAR2(30),
  APPROVEDATE          DATE,
  APPROVEREMARK        NVARCHAR2(256),
  STATUSCODE           VARCHAR2(20 BYTE)        DEFAULT 'Inputing',
  COMMENTS             NVARCHAR2(256),
  INSPECTRESULT        VARCHAR2(10 BYTE)        DEFAULT 'Accept',
  FINALRESULT          VARCHAR2(10 BYTE),
  INSPECTRESULTREASON  NVARCHAR2(256),
  STAGE                VARCHAR2(10 BYTE)        DEFAULT 'SOR',
  SUBSTAGE             VARCHAR2(10 BYTE),
  SHIPREPORTPIC        NVARCHAR2(2000),
  VDCSNO               VARCHAR2(30 BYTE),
  CREATEBY             VARCHAR2(30 BYTE),
  CREATEDT             DATE                     DEFAULT SYSDATE,
  LASTEDITBY           VARCHAR2(30 BYTE),
  LASTEDITDT           DATE,
  ISNOTUSEEEREPORT     NUMBER(1)                DEFAULT 1,
  ISCONTAINNG          NUMBER(1)                DEFAULT 0,
  ORIGINALSAMPLEMET    VARCHAR2(10 BYTE),
  PRODUCTTYPE          VARCHAR2(20 BYTE),
  RECEIVENO            VARCHAR2(50 BYTE),
  VENDORTYPE           VARCHAR2(20 BYTE),
  SQE                  NVARCHAR2(30),
  HANDLESTYLE          VARCHAR2(30 BYTE),
  LINERETURNTRACK      NVARCHAR2(256),
  REWORKDT             VARCHAR2(10 BYTE),
  ISINLRRREPORT        NUMBER(1),
  NORMAL               NVARCHAR2(10),
  ABNORMALTIGTEN       NVARCHAR2(10),
  REWORKTIGTEN         NVARCHAR2(10),
  ISFREEZEG            NUMBER(1),
  VENDORCODE           VARCHAR2(100 BYTE),
  UNIT                 VARCHAR2(10 BYTE),
  SIPNO                VARCHAR2(50 BYTE),
  PONO                 VARCHAR2(50 BYTE),
  WAREHOUSENO          VARCHAR2(50 BYTE),
  TIGHTENTYPE          VARCHAR2(50 BYTE),
  ISREJECTHISTORY      NUMBER(1)                DEFAULT 0,
  WAIVENO              VARCHAR2(50 BYTE),
  EMAILADDR            VARCHAR2(500 BYTE),
  ISSAMPLE             NUMBER(1)                DEFAULT 1,
  EXCEPNAME            VARCHAR2(500 BYTE),
  EXCEPEMAIL           VARCHAR2(500 BYTE),
  INSPECTREPORT        VARCHAR2(2000 BYTE),
  EVALUATIONNO         VARCHAR2(200 BYTE),
  CRAQL                NUMBER(8,3),
  MAAQL                NUMBER(8,3),
  MIAQL                NUMBER(8,3),
  ISFREEINSPECT        NUMBER(1)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCINSPECTIONMASTER_BAK  (Table) 
--
--   Row Count: 1710
CREATE TABLE QMS.QMIQCINSPECTIONMASTER_BAK
(
  INSPECTIONID         CHAR(32 BYTE)            DEFAULT sys_guid(),
  PLANTID              VARCHAR2(10 BYTE),
  GRID                 VARCHAR2(32 BYTE),
  GRNO                 VARCHAR2(50 BYTE),
  GRDATE               VARCHAR2(10 BYTE),
  PALLETNO             VARCHAR2(30 BYTE),
  CAVITYNO             VARCHAR2(30 BYTE),
  LOTNO                VARCHAR2(30 BYTE),
  PARTNO               VARCHAR2(32 BYTE),
  PARTREV              VARCHAR2(10 BYTE)        DEFAULT '/',
  CUSTOMERPARTNO       VARCHAR2(32 BYTE),
  CUSTOMERPARTREV      VARCHAR2(10 BYTE),
  PARTCATEGORY         NVARCHAR2(30),
  PARTTYPE             NVARCHAR2(30),
  PARTNAME             NVARCHAR2(30),
  VMIVENDOR            NVARCHAR2(100),
  VENDOR               NVARCHAR2(100),
  DATECODE             VARCHAR2(30 BYTE),
  PRODUCT              VARCHAR2(20 BYTE)        DEFAULT '/',
  SHIFT                VARCHAR2(10 BYTE),
  ZONE                 VARCHAR2(20 BYTE),
  CONFIG               VARCHAR2(10 BYTE),
  DRAWINGVERSION       VARCHAR2(10 BYTE),
  COMPONENTLOCATION    NVARCHAR2(100),
  COLOR                VARCHAR2(20 BYTE),
  BATCHQTY             NUMBER(18,3)             DEFAULT 0,
  SAMPLEMET            VARCHAR2(10 BYTE),
  DIMENSIONSAMPLING    VARCHAR2(20 BYTE)        DEFAULT '105ES-2',
  DIMENSIONAQL         NUMBER(8,2),
  DIMENSIONINSPQTY     NUMBER(18,3),
  DIMENSIONFAILQTY     NUMBER(18,3),
  DIMENSIONAC          INTEGER,
  DIMENSIONRE          INTEGER,
  CRSAMPLING           VARCHAR2(20 BYTE),
  CRINSPQTY            NUMBER(18,3),
  CRFAILQTY            NUMBER(18,3),
  CRAC                 INTEGER,
  CRRE                 INTEGER,
  MASAMPLING           VARCHAR2(20 BYTE),
  MAINSPQTY            NUMBER(18,3),
  MAFAILQTY            NUMBER(18,3),
  MAAC                 INTEGER,
  MARE                 INTEGER,
  MISAMPLING           VARCHAR2(20 BYTE),
  MIINSPQTY            NUMBER(18,3),
  MIFAILQTY            NUMBER(18,3),
  MIAC                 INTEGER,
  MIRE                 INTEGER,
  ISSHIPMENTREPORT     NUMBER(1),
  INSPECTOR            VARCHAR2(20 BYTE),
  INSPECTORNAME        NVARCHAR2(20),
  VISUALINSPECTDESC    NVARCHAR2(1000),
  MANUFACTUREDT        VARCHAR2(10 BYTE),
  INSPECTDATE          VARCHAR2(10 BYTE),
  APPROVER             NVARCHAR2(30),
  APPROVEDATE          DATE,
  APPROVEREMARK        NVARCHAR2(256),
  STATUSCODE           VARCHAR2(20 BYTE),
  COMMENTS             NVARCHAR2(256),
  INSPECTRESULT        VARCHAR2(10 BYTE),
  FINALRESULT          VARCHAR2(10 BYTE),
  INSPECTRESULTREASON  NVARCHAR2(256),
  STAGE                VARCHAR2(10 BYTE),
  SUBSTAGE             VARCHAR2(10 BYTE),
  SHIPREPORTPIC        NVARCHAR2(2000),
  VDCSNO               VARCHAR2(30 BYTE),
  CREATEBY             VARCHAR2(30 BYTE),
  CREATEDT             DATE,
  LASTEDITBY           VARCHAR2(30 BYTE),
  LASTEDITDT           DATE,
  ISNOTUSEEEREPORT     NUMBER(1),
  ISCONTAINNG          NUMBER(1),
  ORIGINALSAMPLEMET    VARCHAR2(10 BYTE),
  PRODUCTTYPE          VARCHAR2(20 BYTE),
  RECEIVENO            VARCHAR2(50 BYTE),
  VENDORTYPE           VARCHAR2(20 BYTE),
  SQE                  NVARCHAR2(30),
  HANDLESTYLE          VARCHAR2(30 BYTE),
  LINERETURNTRACK      NVARCHAR2(256),
  REWORKDT             VARCHAR2(10 BYTE),
  ISINLRRREPORT        NUMBER(1),
  NORMAL               NVARCHAR2(10),
  ABNORMALTIGTEN       NVARCHAR2(10),
  REWORKTIGTEN         NVARCHAR2(10),
  ISFREEZEG            NUMBER(1),
  VENDORCODE           VARCHAR2(100 BYTE),
  UNIT                 VARCHAR2(10 BYTE),
  SIPNO                VARCHAR2(50 BYTE),
  PONO                 VARCHAR2(50 BYTE),
  WAREHOUSENO          VARCHAR2(50 BYTE),
  TIGHTENTYPE          VARCHAR2(50 BYTE),
  ISREJECTHISTORY      NUMBER(1),
  WAIVENO              VARCHAR2(50 BYTE),
  EMAILADDR            VARCHAR2(500 BYTE),
  ISSAMPLE             NUMBER(1),
  EXCEPNAME            VARCHAR2(500 BYTE),
  EXCEPEMAIL           VARCHAR2(500 BYTE),
  INSPECTREPORT        VARCHAR2(2000 BYTE),
  EVALUATIONNO         VARCHAR2(200 BYTE),
  CRAQL                NUMBER(8,3),
  MAAQL                NUMBER(8,3),
  MIAQL                NUMBER(8,3)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCINSPECTSPEC  (Table) 
--
--   Row Count: 17376
CREATE TABLE QMS.QMIQCINSPECTSPEC
(
  ID                  CHAR(32 BYTE)             DEFAULT sys_guid(),
  PLANTID             VARCHAR2(32 BYTE),
  PARTNO              VARCHAR2(32 BYTE),
  PARTREV             VARCHAR2(10 BYTE),
  VENDOR              NVARCHAR2(100),
  MATERIALTYPE        NVARCHAR2(100),
  MATERIALNAME        NVARCHAR2(100),
  INSPECTTYPE         VARCHAR2(20 BYTE)         DEFAULT 'Dimension',
  LOCATIONCONTENT     NVARCHAR2(300),
  SPEC                NVARCHAR2(500),
  SPECPIC             NVARCHAR2(300),
  ITEMINDEX           INTEGER                   DEFAULT 0,
  MINVALUE            NUMBER(18,3)              DEFAULT NULL,
  MINVALUESPEC        NVARCHAR2(10),
  MAXVALUE            NUMBER(18,3)              DEFAULT NULL,
  MAXVALUESPEC        NVARCHAR2(10),
  INSPECTSPEC         NVARCHAR2(500),
  UNIT                NVARCHAR2(30),
  TESTTOOLS           NVARCHAR2(100),
  TOOLSSIZE           NVARCHAR2(30),
  CREATEDT            DATE                      DEFAULT SYSDATE,
  CREATEBY            VARCHAR2(32 BYTE),
  LASTEDITDT          DATE,
  LASTEDITBY          VARCHAR2(32 BYTE),
  TIGTENMAXCOUNT      INTEGER                   DEFAULT 0,
  NORMALMAXCOUNT      INTEGER                   DEFAULT 0,
  SPECBASE64          NCLOB,
  SIPNO               VARCHAR2(64 BYTE),
  SIPREV              VARCHAR2(10 BYTE),
  INSPECTFREQUENCY    INTEGER                   DEFAULT 1,
  FREQUENCYUNIT       VARCHAR2(20 BYTE)         DEFAULT 'BatchPer',
  UNTESTCOUNT         INTEGER                   DEFAULT 0,
  TOTALINCOMINGCOUNT  INTEGER                   DEFAULT 0,
  TESTEDCOUNT         INTEGER                   DEFAULT 0,
  LATESTTESTDATE      DATE,
  ISTEST              NUMBER(1)                 DEFAULT 1,
  SIPID               CHAR(32 BYTE),
  LAB                 VARCHAR2(32 BYTE),
  DELFLAG             NUMBER(1)                 DEFAULT 0
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             8K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCINSPECTSPEC_BAK  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.QMIQCINSPECTSPEC_BAK
(
  ID                  CHAR(32 BYTE)             DEFAULT sys_guid(),
  PLANTID             VARCHAR2(32 BYTE),
  PARTNO              VARCHAR2(32 BYTE),
  PARTREV             VARCHAR2(10 BYTE),
  VENDOR              NVARCHAR2(100),
  MATERIALTYPE        NVARCHAR2(100),
  MATERIALNAME        NVARCHAR2(100),
  INSPECTTYPE         VARCHAR2(20 BYTE)         DEFAULT 'Dimension',
  LOCATIONCONTENT     NVARCHAR2(300),
  SPEC                NVARCHAR2(500),
  SPECPIC             NVARCHAR2(300),
  ITEMINDEX           INTEGER                   DEFAULT 0,
  MINVALUE            NUMBER(18,3),
  MINVALUESPEC        NVARCHAR2(10),
  MAXVALUE            NUMBER(18,3),
  MAXVALUESPEC        NVARCHAR2(10),
  INSPECTSPEC         NVARCHAR2(150),
  UNIT                NVARCHAR2(30),
  TESTTOOLS           NVARCHAR2(100),
  TOOLSSIZE           NVARCHAR2(30),
  CREATEDT            DATE                      DEFAULT SYSDATE,
  CREATEBY            VARCHAR2(32 BYTE),
  LASTEDITDT          DATE,
  LASTEDITBY          VARCHAR2(32 BYTE),
  TIGTENMAXCOUNT      INTEGER                   DEFAULT 0,
  NORMALMAXCOUNT      INTEGER                   DEFAULT 0,
  SPECBASE64          NCLOB,
  SIPNO               VARCHAR2(64 BYTE),
  SIPREV              VARCHAR2(10 BYTE),
  INSPECTFREQUENCY    INTEGER                   DEFAULT 1,
  FREQUENCYUNIT       VARCHAR2(20 BYTE)         DEFAULT 'BatchPer',
  UNTESTCOUNT         INTEGER                   DEFAULT 0,
  TOTALINCOMINGCOUNT  INTEGER                   DEFAULT 0,
  TESTEDCOUNT         INTEGER                   DEFAULT 0,
  LATESTTESTDATE      DATE,
  ISTEST              NUMBER(1)                 DEFAULT 1,
  SIPID               CHAR(32 BYTE),
  LAB                 VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCITEM  (Table) 
--
--   Row Count: 23912
CREATE TABLE QMS.QMIQCITEM
(
  GRNO         VARCHAR2(32 BYTE),
  VENDORCODE   VARCHAR2(32 BYTE),
  QTY          NUMBER(18,3),
  PARTNO       VARCHAR2(50 BYTE),
  UNIT         VARCHAR2(20 BYTE),
  PONO         VARCHAR2(50 BYTE),
  DELFLAG      NUMBER                           DEFAULT 0,
  CREATEBY     VARCHAR2(32 BYTE),
  CREATEDT     DATE,
  LASTEDITBY   VARCHAR2(32 BYTE),
  LASTEDITDT   DATE,
  PARTDESC     VARCHAR2(200 BYTE),
  WAREHOUSENO  VARCHAR2(50 BYTE),
  PLANTID      VARCHAR2(10 BYTE),
  GRDATE       DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCITEMHIST  (Table) 
--
--   Row Count: 16819
CREATE TABLE QMS.QMIQCITEMHIST
(
  GRNO         VARCHAR2(32 BYTE),
  VENDORCODE   VARCHAR2(32 BYTE),
  QTY          NUMBER(18,3),
  PARTNO       VARCHAR2(50 BYTE),
  UNIT         VARCHAR2(20 BYTE),
  PONO         VARCHAR2(50 BYTE),
  DELFLAG      NUMBER                           DEFAULT 0,
  CREATEBY     VARCHAR2(32 BYTE),
  CREATEDT     DATE,
  LASTEDITBY   VARCHAR2(32 BYTE),
  LASTEDITDT   DATE,
  PARTDESC     VARCHAR2(200 BYTE),
  WAREHOUSENO  VARCHAR2(50 BYTE),
  PLANTID      VARCHAR2(10 BYTE),
  GRDATE       DATE,
  LOGDT        DATE,
  LOGBY        VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCMEASUREINFO  (Table) 
--
--   Row Count: 293
CREATE TABLE QMS.QMIQCMEASUREINFO
(
  ID             CHAR(32 BYTE)                  DEFAULT sys_guid(),
  CONTROLNO      VARCHAR2(32 BYTE),
  GAUGENAME      VARCHAR2(200 BYTE),
  SPECIFICATION  VARCHAR2(200 BYTE),
  MANUFACTURER   VARCHAR2(100 BYTE),
  SERIALNO       VARCHAR2(100 BYTE),
  DUEDATE        DATE,
  AREA           VARCHAR2(100 BYTE),
  BUSINESSGROUP  VARCHAR2(32 BYTE),
  BUSINESSUNIT   VARCHAR2(32 BYTE),
  DEPARTMENT     VARCHAR2(32 BYTE),
  KEEPER         VARCHAR2(100 BYTE),
  DELFLAG        NUMBER                         DEFAULT 0,
  CREATEBY       VARCHAR2(32 BYTE),
  CREATEDT       DATE,
  LASTEDITBY     VARCHAR2(32 BYTE),
  LASTEDITDT     DATE,
  REMARK         VARCHAR2(1000 BYTE),
  PLANTID        VARCHAR2(32 BYTE),
  DATATYPE       VARCHAR2(32 BYTE)              DEFAULT 'IQC'
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCMONTHREPORTFILE  (Table) 
--
--   Row Count: 1
CREATE TABLE QMS.QMIQCMONTHREPORTFILE
(
  ID          CHAR(32 BYTE)                     DEFAULT sys_guid(),
  YEAR        VARCHAR2(20 BYTE),
  MONTH       VARCHAR2(20 BYTE),
  REPORT      VARCHAR2(2000 BYTE),
  CREATEBY    VARCHAR2(32 BYTE),
  CREATEDT    DATE,
  LASTEDITBY  VARCHAR2(32 BYTE),
  LASTEDITDT  DATE,
  DELFLAG     NUMBER(1)                         DEFAULT 0,
  PLANTID     VARCHAR2(32 BYTE),
  REMARK      VARCHAR2(1000 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCSAMPLINGBATCH  (Table) 
--
--   Row Count: 315
CREATE TABLE QMS.QMIQCSAMPLINGBATCH
(
  ID          CHAR(32 CHAR)                     DEFAULT sys_guid(),
  TYPECODE    VARCHAR2(40 CHAR),
  BATCHSTART  NUMBER(10),
  BATCHEND    NUMBER(10),
  LEVEL_      NVARCHAR2(10),
  SIZECODE    NVARCHAR2(10),
  CREATEBY    VARCHAR2(32 CHAR),
  CREATEDT    DATE                              DEFAULT sysdate,
  LASTEDITBY  VARCHAR2(32 CHAR),
  LASTEDITDT  DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCSAMPLINGPLAN  (Table) 
--
--   Row Count: 1352
CREATE TABLE QMS.QMIQCSAMPLINGPLAN
(
  ID          CHAR(32 CHAR)                     DEFAULT sys_guid(),
  TYPECODE    VARCHAR2(40 CHAR),
  SIZECODE    NVARCHAR2(10),
  SIZE_       NUMBER(10),
  AQL         NVARCHAR2(10),
  ACTUALSIZE  NUMBER(10)                        DEFAULT (0),
  LEVEL_      NVARCHAR2(10),
  ACCEPTQTY   NUMBER(10),
  REJECTQTY   NUMBER(10),
  CREATEBY    VARCHAR2(32 CHAR),
  CREATEDT    DATE                              DEFAULT sysdate,
  LASTEDITBY  VARCHAR2(32 CHAR),
  LASTEDITDT  DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCSAMPLINGTYPE  (Table) 
--
--   Row Count: 6
CREATE TABLE QMS.QMIQCSAMPLINGTYPE
(
  TYPECODE       VARCHAR2(40 CHAR),
  TYPENAME       NVARCHAR2(100),
  DESCRIPTION    NVARCHAR2(256),
  ISDEFAULT      NUMBER(1),
  SAMPLINGLEVEL  VARCHAR2(10 CHAR),
  FUNCTIONLEVEL  VARCHAR2(10 CHAR),
  LEVELS         NVARCHAR2(40),
  CREATEBY       VARCHAR2(32 CHAR),
  CREATEDT       DATE,
  LASTEDITBY     VARCHAR2(32 CHAR),
  LASTEDITDT     DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCSHIPDETAIL  (Table) 
--
--   Row Count: 2022
CREATE TABLE QMS.QMIQCSHIPDETAIL
(
  ID             CHAR(32 BYTE),
  MASTERID       CHAR(32 BYTE),
  INSPECTTYPE    INTEGER,
  ITEMNO         INTEGER,
  INSPECTITEM    VARCHAR2(50 BYTE),
  INSPECTSPEC    VARCHAR2(200 BYTE),
  UNIT           VARCHAR2(50 BYTE),
  TESTDATA1      VARCHAR2(50 BYTE),
  TESTDATA2      VARCHAR2(50 BYTE),
  TESTDATA3      VARCHAR2(50 BYTE),
  TESTDATA4      VARCHAR2(50 BYTE),
  TESTDATA5      VARCHAR2(50 BYTE),
  INSPECTRESULT  VARCHAR2(32 BYTE),
  DELFLAG        NUMBER(1)                      DEFAULT 0,
  CREATEBY       VARCHAR2(32 BYTE),
  CREATEDT       DATE,
  LASTEDITBY     VARCHAR2(32 BYTE),
  LASTEDITDT     DATE,
  MATERIAL       VARCHAR2(50 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCSHIPMASTER  (Table) 
--
--   Row Count: 71
CREATE TABLE QMS.QMIQCSHIPMASTER
(
  ID              CHAR(32 BYTE)                 DEFAULT sys_guid(),
  PLANTID         VARCHAR2(32 BYTE),
  VENDOR          VARCHAR2(100 BYTE),
  PARTNO          VARCHAR2(100 BYTE),
  MATERIALNAME    VARCHAR2(50 BYTE),
  SPEC            VARCHAR2(50 BYTE),
  QTY             VARCHAR2(50 BYTE),
  LOTNO           VARCHAR2(100 BYTE),
  MATERIALLOTNO   VARCHAR2(100 BYTE),
  SHIPDATE        DATE,
  REV             VARCHAR2(10 BYTE),
  MATERIALSPEC    VARCHAR2(50 BYTE),
  DELFLAG         NUMBER(1)                     DEFAULT 0,
  CREATEBY        VARCHAR2(32 BYTE),
  CREATEDT        DATE,
  LASTEDITBY      VARCHAR2(32 BYTE),
  LASTEDITDT      DATE,
  CREATENAME      VARCHAR2(32 BYTE),
  CREATEPOSITION  VARCHAR2(50 BYTE),
  APPROVER        VARCHAR2(32 BYTE),
  APPROVEDATE     DATE,
  STATUS          VARCHAR2(32 BYTE),
  REJECTREASON    VARCHAR2(1000 BYTE),
  REPORTTYPE      VARCHAR2(32 BYTE),
  FROMINFO        VARCHAR2(4000 BYTE),
  EMAIL           VARCHAR2(1000 BYTE),
  OWNER           VARCHAR2(500 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCSHIPREPORT  (Table) 
--
--   Row Count: 5803
CREATE TABLE QMS.QMIQCSHIPREPORT
(
  ID                CHAR(32 BYTE)               DEFAULT sys_guid(),
  PARTNO            VARCHAR2(64 BYTE),
  VENDOR            VARCHAR2(200 BYTE),
  SHIPFILE          VARCHAR2(1000 BYTE),
  DELFLAG           NUMBER                      DEFAULT 0,
  CREATEBY          VARCHAR2(32 BYTE),
  CREATEDT          DATE,
  LASTEDITBY        VARCHAR2(32 BYTE),
  LASTEDITDT        DATE,
  PLANTID           VARCHAR2(32 BYTE),
  UPLOADDATE        DATE,
  REMARK            VARCHAR2(1000 BYTE),
  LOTNO             VARCHAR2(1000 BYTE),
  PONO              VARCHAR2(32 BYTE),
  QTY               NUMBER(18,3),
  STATUS            VARCHAR2(50 BYTE)           DEFAULT 'Open',
  APPROVER          VARCHAR2(32 BYTE),
  APPROVEDATE       DATE,
  LASTREJECTREASON  VARCHAR2(1000 BYTE),
  OWNER             VARCHAR2(200 BYTE),
  EMAIL             VARCHAR2(1000 BYTE),
  FROMINFO          VARCHAR2(1000 BYTE),
  DRAWINGNO         VARCHAR2(100 BYTE),
  DRAWINGREV        VARCHAR2(32 BYTE),
  PDMDRAWINGREV     VARCHAR2(32 BYTE),
  ATTRNO            VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCSHIPSPEC  (Table) 
--
--   Row Count: 98
CREATE TABLE QMS.QMIQCSHIPSPEC
(
  ID            CHAR(32 BYTE),
  PLANTID       VARCHAR2(32 BYTE),
  MATERIALTYPE  VARCHAR2(32 BYTE),
  INSPECTTYPE   INTEGER,
  ITEMNO        INTEGER,
  INSPECTITEM   VARCHAR2(100 BYTE),
  INSPECTSPEC   VARCHAR2(500 BYTE),
  UNIT          VARCHAR2(32 BYTE),
  DELFLAG       NUMBER(1)                       DEFAULT 0,
  CREATEBY      VARCHAR2(32 BYTE),
  CREATEDT      DATE,
  LASTEDITBY    VARCHAR2(32 BYTE),
  LASTEDITDT    DATE,
  MATERIAL      VARCHAR2(50 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCSIPINFO  (Table) 
--
--   Row Count: 637
CREATE TABLE QMS.QMIQCSIPINFO
(
  ID          CHAR(32 BYTE)                     DEFAULT sys_guid(),
  SIPNO       VARCHAR2(50 BYTE),
  SIPVERSION  VARCHAR2(10 BYTE),
  DELFLAG     NUMBER                            DEFAULT 0,
  CREATEBY    VARCHAR2(32 BYTE),
  CREATEDT    DATE,
  LASTEDITBY  VARCHAR2(32 BYTE),
  LASTEDITDT  DATE,
  PLANTID     VARCHAR2(10 BYTE),
  REMARK      VARCHAR2(1000 BYTE),
  PARTNO      VARCHAR2(100 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCSIPINFOONLY  (Table) 
--
--   Row Count: 240
CREATE TABLE QMS.QMIQCSIPINFOONLY
(
  ID          CHAR(32 BYTE)                     DEFAULT sys_guid(),
  SIPNO       VARCHAR2(50 BYTE),
  SIPVERSION  VARCHAR2(10 BYTE),
  DELFLAG     NUMBER                            DEFAULT 0,
  CREATEBY    VARCHAR2(32 BYTE),
  CREATEDT    DATE,
  LASTEDITBY  VARCHAR2(32 BYTE),
  LASTEDITDT  DATE,
  PLANTID     VARCHAR2(10 BYTE),
  REMARK      VARCHAR2(1000 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQCVENDORINFO  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.QMIQCVENDORINFO
(
  ID            CHAR(32 BYTE)                   DEFAULT sys_guid(),
  PLANTID       VARCHAR2(10 BYTE),
  PARTNO        VARCHAR2(32 BYTE),
  VENDOR        NVARCHAR2(100),
  VENDORCODE    VARCHAR2(30 BYTE),
  VENDORPARTNO  VARCHAR2(32 BYTE),
  VENDORFILE    NVARCHAR2(2000),
  CREATEDT      DATE                            DEFAULT SYSDATE,
  CREATEBY      VARCHAR2(32 BYTE)               DEFAULT '',
  LASTEDITDT    DATE,
  LASTEDITBY    VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQC_SGS_MSDS  (Table) 
--
--   Row Count: 231
CREATE TABLE QMS.QMIQC_SGS_MSDS
(
  ID             CHAR(32 BYTE)                  DEFAULT SYS_GUID(),
  PARTNO         VARCHAR2(32 BYTE),
  VENDOR         VARCHAR2(200 BYTE),
  PLANTID        VARCHAR2(20 BYTE),
  SGSFROMDATE    DATE,
  MSDSFROMDATE   DATE,
  DELFLAG        NUMBER                         DEFAULT 0,
  CREATEBY       VARCHAR2(32 BYTE),
  CREATEDT       DATE,
  LASTEDITBY     VARCHAR2(32 BYTE),
  LASTEDITDT     DATE,
  REMARK         VARCHAR2(1000 BYTE),
  SGSTODATE      DATE,
  MSDSTODATE     DATE,
  MATERIALNAME   VARCHAR2(100 BYTE),
  MATERIALNAME1  VARCHAR2(100 BYTE),
  SGSFROMDATE1   DATE,
  MSDSFROMDATE1  DATE,
  SGSTODATE1     DATE,
  MSDSTODATE1    DATE,
  OWNER          VARCHAR2(100 BYTE),
  EMAIL          VARCHAR2(1000 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQC_SGS_MSDS_ITEM  (Table) 
--
--   Row Count: 328
CREATE TABLE QMS.QMIQC_SGS_MSDS_ITEM
(
  ID            CHAR(32 BYTE)                   DEFAULT SYS_GUID(),
  MASTERID      CHAR(32 BYTE),
  MATERIALNAME  VARCHAR2(100 BYTE),
  SGSFROMDATE   DATE,
  SGSTODATE     DATE,
  MSDSFROMDATE  DATE,
  MSDSTODATE    DATE,
  DELFLAG       NUMBER                          DEFAULT 0,
  CREATEBY      VARCHAR2(32 BYTE),
  CREATEDT      DATE,
  LASTEDITBY    VARCHAR2(32 BYTE),
  LASTEDITDT    DATE,
  ITEMNO        INTEGER
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMIQC_SGS_MSDS_MASTER  (Table) 
--
--   Row Count: 246
CREATE TABLE QMS.QMIQC_SGS_MSDS_MASTER
(
  ID                CHAR(32 BYTE)               DEFAULT SYS_GUID(),
  PLANTID           VARCHAR2(20 BYTE),
  PARTNO            VARCHAR2(32 BYTE),
  VENDOR            VARCHAR2(200 BYTE),
  OWNER             VARCHAR2(100 BYTE),
  EMAIL             VARCHAR2(1000 BYTE),
  REMARK            VARCHAR2(1000 BYTE),
  DELFLAG           NUMBER                      DEFAULT 0,
  CREATEBY          VARCHAR2(32 BYTE),
  CREATEDT          DATE,
  LASTEDITBY        VARCHAR2(32 BYTE),
  LASTEDITDT        DATE,
  STATUS            VARCHAR2(32 BYTE)           DEFAULT 'Open',
  LASTREJECTREASON  VARCHAR2(1000 BYTE),
  FROMINFO          VARCHAR2(1000 BYTE),
  SMFILE            VARCHAR2(4000 BYTE),
  APPROVER          VARCHAR2(32 BYTE),
  APPROVEDATE       DATE,
  PARTNAME          VARCHAR2(100 BYTE),
  ISEXPIRED         NUMBER(1)                   DEFAULT 0
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMLABINFO  (Table) 
--
--   Row Count: 40
CREATE TABLE QMS.QMLABINFO
(
  ID          CHAR(32 BYTE)                     DEFAULT sys_guid(),
  TESTNO      VARCHAR2(100 BYTE),
  LABNAME     VARCHAR2(32 BYTE),
  TESTITEM    VARCHAR2(500 BYTE),
  UNIT        VARCHAR2(100 BYTE),
  TESTMETHOD  VARCHAR2(500 BYTE),
  SPEC        VARCHAR2(500 BYTE),
  TESTRESULT  VARCHAR2(500 BYTE),
  REMARK      VARCHAR2(1000 BYTE),
  ITEMNO      NUMBER(3),
  PLANTID     VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMMESSAGEINFO  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.QMMESSAGEINFO
(
  ID        CHAR(32 BYTE)                       DEFAULT sys_guid(),
  MESSAGE   VARCHAR2(1000 BYTE),
  CREATEBY  VARCHAR2(32 BYTE),
  CREATEDT  DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMOQCCHECKITEM  (Table) 
--
--   Row Count: 2871
CREATE TABLE QMS.QMOQCCHECKITEM
(
  ID             CHAR(32 BYTE)                  DEFAULT sys_guid(),
  PLANTID        VARCHAR2(10 BYTE),
  AUDITMASTERID  CHAR(32 BYTE),
  PROJECTNAME    NVARCHAR2(150),
  PROCESSITEMID  CHAR(32 BYTE),
  INSPECTNAME    NVARCHAR2(200),
  INSPECTITEMNO  INTEGER                        DEFAULT 0,
  INSPECTITEM    NVARCHAR2(512),
  INSPECTRESULT  VARCHAR2(10 BYTE)              DEFAULT 'OK',
  EXCEPTIONDESP  NVARCHAR2(256),
  CORRECTACTION  NVARCHAR2(256),
  SUPERVISOR     NVARCHAR2(50),
  CONFIRMRESULT  NVARCHAR2(150),
  REMARK         NVARCHAR2(256),
  DELFLAG        NUMBER(1)                      DEFAULT 0,
  CREATEDT       DATE                           DEFAULT sysdate,
  CREATEBY       VARCHAR2(32 BYTE),
  LASTEDITDT     DATE,
  LASTEDITBY     VARCHAR2(32 BYTE),
  SUPERVISENAME  NVARCHAR2(50)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             8K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.QMOQCCHECKITEM.ID IS 'Id';

COMMENT ON COLUMN QMS.QMOQCCHECKITEM.PLANTID IS 'PlantId';

COMMENT ON COLUMN QMS.QMOQCCHECKITEM.AUDITMASTERID IS 'AuditMasterID';

COMMENT ON COLUMN QMS.QMOQCCHECKITEM.PROJECTNAME IS '專案名稱';

COMMENT ON COLUMN QMS.QMOQCCHECKITEM.PROCESSITEMID IS 'ProcessItemId';

COMMENT ON COLUMN QMS.QMOQCCHECKITEM.INSPECTNAME IS '專案下點檢項目';

COMMENT ON COLUMN QMS.QMOQCCHECKITEM.INSPECTITEMNO IS '點檢項目編號';

COMMENT ON COLUMN QMS.QMOQCCHECKITEM.INSPECTITEM IS '點檢內容';

COMMENT ON COLUMN QMS.QMOQCCHECKITEM.INSPECTRESULT IS '檢查結果';

COMMENT ON COLUMN QMS.QMOQCCHECKITEM.EXCEPTIONDESP IS '異常描述';

COMMENT ON COLUMN QMS.QMOQCCHECKITEM.CORRECTACTION IS '對策';

COMMENT ON COLUMN QMS.QMOQCCHECKITEM.SUPERVISOR IS '責任人';

COMMENT ON COLUMN QMS.QMOQCCHECKITEM.CONFIRMRESULT IS '效果確認';

COMMENT ON COLUMN QMS.QMOQCCHECKITEM.REMARK IS '備注';

COMMENT ON COLUMN QMS.QMOQCCHECKITEM.DELFLAG IS '是否已刪除1:已刪除,0:未刪除';

COMMENT ON COLUMN QMS.QMOQCCHECKITEM.CREATEDT IS '創建時間';

COMMENT ON COLUMN QMS.QMOQCCHECKITEM.CREATEBY IS '創建人';

COMMENT ON COLUMN QMS.QMOQCCHECKITEM.LASTEDITDT IS '最後編輯時間';

COMMENT ON COLUMN QMS.QMOQCCHECKITEM.LASTEDITBY IS '最後編輯人';

COMMENT ON COLUMN QMS.QMOQCCHECKITEM.SUPERVISENAME IS '責任部門';


--
-- QMOQCCHECKITEMLOG  (Table) 
--
--   Row Count: 38
CREATE TABLE QMS.QMOQCCHECKITEMLOG
(
  ID              CHAR(32 BYTE)                 DEFAULT sys_guid(),
  PLANTID         VARCHAR2(10 BYTE),
  OQCCHECKITEMID  CHAR(32 BYTE),
  AUDITMASTERID   CHAR(32 BYTE),
  RECORDTYPE      VARCHAR2(15 BYTE)             DEFAULT 'Original',
  INSPECTRESULT   VARCHAR2(10 BYTE),
  EXCEPTIONDESP   NVARCHAR2(256),
  CORRECTACTION   NVARCHAR2(256),
  SUPERVISOR      NVARCHAR2(50),
  CONFIRMRESULT   NVARCHAR2(150),
  REMARK          NVARCHAR2(256),
  DELFLAG         NUMBER(1)                     DEFAULT 0,
  CREATEDT        DATE                          DEFAULT SYSDATE,
  CREATEBY        VARCHAR2(32 BYTE),
  LASTEDITDT      DATE,
  LASTEDITBY      VARCHAR2(32 BYTE),
  SUPERVISENAME   NVARCHAR2(50),
  DEFECTQTY       INTEGER
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             8K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.QMOQCCHECKITEMLOG.ID IS 'Id';

COMMENT ON COLUMN QMS.QMOQCCHECKITEMLOG.PLANTID IS 'PlantId';

COMMENT ON COLUMN QMS.QMOQCCHECKITEMLOG.OQCCHECKITEMID IS 'OQCCheckItemId';

COMMENT ON COLUMN QMS.QMOQCCHECKITEMLOG.AUDITMASTERID IS 'AuditMasterID';

COMMENT ON COLUMN QMS.QMOQCCHECKITEMLOG.RECORDTYPE IS '記錄類型(Original,Latest用于標記原始的和最新的)';

COMMENT ON COLUMN QMS.QMOQCCHECKITEMLOG.INSPECTRESULT IS '抽檢結果';

COMMENT ON COLUMN QMS.QMOQCCHECKITEMLOG.EXCEPTIONDESP IS '異常描述';

COMMENT ON COLUMN QMS.QMOQCCHECKITEMLOG.CORRECTACTION IS '对策';

COMMENT ON COLUMN QMS.QMOQCCHECKITEMLOG.SUPERVISOR IS '责任人';

COMMENT ON COLUMN QMS.QMOQCCHECKITEMLOG.CONFIRMRESULT IS '效果确认';

COMMENT ON COLUMN QMS.QMOQCCHECKITEMLOG.REMARK IS '備注';

COMMENT ON COLUMN QMS.QMOQCCHECKITEMLOG.DELFLAG IS '是否已刪除1:已刪除,0:未刪除';

COMMENT ON COLUMN QMS.QMOQCCHECKITEMLOG.CREATEDT IS '創建時間';

COMMENT ON COLUMN QMS.QMOQCCHECKITEMLOG.CREATEBY IS '創建人';

COMMENT ON COLUMN QMS.QMOQCCHECKITEMLOG.LASTEDITDT IS '最後編輯時間';

COMMENT ON COLUMN QMS.QMOQCCHECKITEMLOG.LASTEDITBY IS '最後編輯人';

COMMENT ON COLUMN QMS.QMOQCCHECKITEMLOG.SUPERVISENAME IS '責任部門';


--
-- QMOQCCHECKITEM_V2  (Table) 
--
--   Row Count: 5744
CREATE TABLE QMS.QMOQCCHECKITEM_V2
(
  ID             CHAR(32 BYTE)                  DEFAULT sys_guid(),
  PLANTID        VARCHAR2(10 BYTE),
  AUDITMASTERID  CHAR(32 BYTE),
  PROJECTNAME    NVARCHAR2(150),
  PROCESSITEMID  CHAR(32 BYTE),
  INSPECTNAME    NVARCHAR2(200),
  INSPECTITEMNO  INTEGER                        DEFAULT 0,
  INSPECTITEM    NVARCHAR2(512),
  INSPECTRESULT  VARCHAR2(10 BYTE)              DEFAULT '  ',
  EXCEPTIONDESP  NVARCHAR2(256),
  CORRECTACTION  NVARCHAR2(256),
  SUPERVISOR     NVARCHAR2(50),
  CONFIRMRESULT  NVARCHAR2(150),
  REMARK         NVARCHAR2(256),
  DELFLAG        NUMBER(1)                      DEFAULT 0,
  CREATEDT       DATE                           DEFAULT sysdate,
  CREATEBY       VARCHAR2(32 BYTE),
  LASTEDITDT     DATE,
  LASTEDITBY     VARCHAR2(32 BYTE),
  SUPERVISENAME  NVARCHAR2(50),
  DEFECTQTY      INTEGER
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMOQCCHECKMASTER  (Table) 
--
--   Row Count: 12
CREATE TABLE QMS.QMOQCCHECKMASTER
(
  ID                CHAR(32 BYTE)               DEFAULT sys_guid(),
  PLANTID           VARCHAR2(10 BYTE),
  BATCHNO           VARCHAR2(15 BYTE),
  TPO               VARCHAR2(30 BYTE),
  COUNTERNO         VARCHAR2(30 BYTE),
  OCCURDATE         VARCHAR2(10 BYTE),
  OCCURSHIFT        VARCHAR2(10 BYTE),
  AUDITSHIFT        VARCHAR2(10 BYTE),
  COUNTERPOSITION   VARCHAR2(20 BYTE),
  COUNTERMODEL      NVARCHAR2(20),
  LOADTIMEFROM      VARCHAR2(10 BYTE),
  LOADTIMETO        VARCHAR2(10 BYTE),
  TRUCKNO           NVARCHAR2(20),
  COUNTERSTATUS     NVARCHAR2(20),
  WEATHERSTATUS     NVARCHAR2(20),
  PALLETSTATUS      NVARCHAR2(100),
  FORKLIFTDRIVER    NVARCHAR2(30),
  DESICCANTQTY      INTEGER                     DEFAULT 0,
  BANDAGEQTY        INTEGER                     DEFAULT 0,
  AIRBAGQTY         INTEGER                     DEFAULT 0,
  LABELPIC          NVARCHAR2(2000),
  SO                VARCHAR2(30 BYTE),
  MBL               VARCHAR2(30 BYTE),
  CUSTOMERPO        VARCHAR2(30 BYTE),
  DESTINATION       NVARCHAR2(150),
  TRANSPORTMODE     NVARCHAR2(50),
  TOTALPALLETQTY    INTEGER,
  TOTALQTY          INTEGER                     DEFAULT 0,
  OQCINPUTER        NVARCHAR2(50),
  QECONFIRMOWNER    NVARCHAR2(50),
  QECONFIRMDATE     DATE,
  LASTREJECTREASON  NVARCHAR2(150),
  AUDITSTATUS       VARCHAR2(15 BYTE)           DEFAULT 'Open',
  REJECTCOUNT       INTEGER                     DEFAULT 0,
  AUDITLOG          NVARCHAR2(2000),
  CLOSEDATE         DATE,
  DELFLAG           NUMBER(1)                   DEFAULT 0,
  CREATEDT          DATE                        DEFAULT sysdate,
  CREATEBY          VARCHAR2(32 BYTE),
  LASTEDITDT        DATE,
  LASTEDITBY        VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.QMOQCCHECKMASTER.ID IS 'Id';

COMMENT ON COLUMN QMS.QMOQCCHECKMASTER.PLANTID IS 'PlantID';

COMMENT ON COLUMN QMS.QMOQCCHECKMASTER.BATCHNO IS '批號';

COMMENT ON COLUMN QMS.QMOQCCHECKMASTER.TPO IS 'TPO';


--
-- QMOQCCHECKMASTER_V2  (Table) 
--
--   Row Count: 241
CREATE TABLE QMS.QMOQCCHECKMASTER_V2
(
  ID                 CHAR(32 BYTE)              DEFAULT sys_guid(),
  PLANTID            VARCHAR2(10 BYTE),
  BATCHNO            VARCHAR2(15 BYTE),
  OQCNO              VARCHAR2(100 BYTE),
  ITEMNO             VARCHAR2(30 BYTE),
  CUSTOMER           VARCHAR2(100 BYTE),
  ADDRESS            VARCHAR2(100 BYTE),
  PARTNO             VARCHAR2(100 BYTE),
  CPO                VARCHAR2(100 BYTE),
  CUSTOMERPARTNO     VARCHAR2(100 BYTE),
  PARTNAME           VARCHAR2(100 BYTE),
  FUNDSCUSTOMER      VARCHAR2(100 BYTE),
  QTY                NUMBER,
  BOXES              NUMBER,
  TOTALQTY           NUMBER,
  NETWEIGHT          NUMBER,
  GROSSWEIGHT        NUMBER,
  EXCHANGECONDITION  VARCHAR2(10 BYTE),
  TRANSPORTMODE      VARCHAR2(10 BYTE),
  OCCURSHIFT         VARCHAR2(10 BYTE),
  AUDITSHIFT         VARCHAR2(10 BYTE),
  COUNTERPOSITION    VARCHAR2(20 BYTE),
  COUNTERMODEL       NVARCHAR2(20),
  LOADTIMEFROM       VARCHAR2(10 BYTE),
  LOADTIMETO         VARCHAR2(10 BYTE),
  TRUCKNO            NVARCHAR2(20),
  COUNTERSTATUS      NVARCHAR2(20),
  WEATHERSTATUS      NVARCHAR2(20),
  PALLETSTATUS       NVARCHAR2(100),
  FORKLIFTDRIVER     NVARCHAR2(30),
  DESICCANTQTY       INTEGER                    DEFAULT 0,
  BANDAGEQTY         INTEGER                    DEFAULT 0,
  AIRBAGQTY          INTEGER                    DEFAULT 0,
  LABELPIC           NVARCHAR2(2000),
  SO                 VARCHAR2(30 BYTE),
  MBL                VARCHAR2(30 BYTE),
  CUSTOMERPO         VARCHAR2(30 BYTE),
  DESTINATION        NVARCHAR2(500),
  TOTALPALLETQTY     INTEGER,
  OQCINPUTER         NVARCHAR2(50),
  QECONFIRMOWNER     NVARCHAR2(50),
  QECONFIRMDATE      DATE,
  LASTREJECTREASON   NVARCHAR2(150),
  AUDITSTATUS        VARCHAR2(15 BYTE)          DEFAULT 'Open',
  REJECTCOUNT        INTEGER                    DEFAULT 0,
  AUDITLOG           NVARCHAR2(2000),
  CLOSEDATE          DATE,
  DELFLAG            NUMBER(1)                  DEFAULT 0,
  CREATEDT           DATE                       DEFAULT sysdate,
  CREATEBY           VARCHAR2(32 BYTE),
  LASTEDITDT         DATE,
  LASTEDITBY         VARCHAR2(32 BYTE),
  AUDITDATE          DATE,
  QMSCUSTOMER        VARCHAR2(100 BYTE),
  OCCURDATE          VARCHAR2(10 BYTE),
  ISNEEDSHIPREPORT   NUMBER(1)                  DEFAULT 0,
  TIPTOPREMARK       VARCHAR2(1000 BYTE),
  REMARK             VARCHAR2(1000 BYTE),
  REPORTTYPE         NUMBER(1),
  OWNER              VARCHAR2(1000 BYTE),
  EMAIL              VARCHAR2(1000 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMOQCCHECKPALLETINFO  (Table) 
--
--   Row Count: 20
CREATE TABLE QMS.QMOQCCHECKPALLETINFO
(
  ID              CHAR(32 BYTE)                 DEFAULT sys_guid(),
  PLANTID         VARCHAR2(10 BYTE),
  AUDITMASTERID   CHAR(32 BYTE),
  SKUINFOID       CHAR(32 BYTE),
  ITEMNO          INTEGER                       DEFAULT 0,
  PALLETNO        VARCHAR2(50 BYTE),
  QTYPERPALLET    INTEGER                       DEFAULT 0,
  ISVALIDSUCCESS  NUMBER(1)                     DEFAULT 1,
  DELFLAG         NUMBER(1)                     DEFAULT 0,
  CREATEDT        DATE                          DEFAULT sysdate,
  CREATEBY        VARCHAR2(32 BYTE),
  LASTEDITDT      DATE,
  LASTEDITBY      VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             8K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMOQCCHECKSKUINFO  (Table) 
--
--   Row Count: 7
CREATE TABLE QMS.QMOQCCHECKSKUINFO
(
  ID             CHAR(32 BYTE)                  DEFAULT sys_guid(),
  PLANTID        VARCHAR2(10 BYTE),
  AUDITMASTERID  CHAR(32 BYTE),
  TPO            VARCHAR2(30 BYTE),
  COUNTERNO      VARCHAR2(30 BYTE),
  ITEMNO         INTEGER                        DEFAULT 0,
  DN             VARCHAR2(30 BYTE),
  PRODUCT        VARCHAR2(20 BYTE),
  SKUNO          VARCHAR2(32 BYTE),
  SKUNOQTY       INTEGER                        DEFAULT 0,
  ISSKUNODEFECT  NUMBER(1)                      DEFAULT 0,
  DEFECTINFO     NVARCHAR2(150),
  DELFLAG        NUMBER(1)                      DEFAULT 0,
  CREATEDT       DATE                           DEFAULT sysdate,
  CREATEBY       VARCHAR2(32 BYTE),
  LASTEDITDT     DATE,
  LASTEDITBY     VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             8K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMOQCCUSTOMERFILE  (Table) 
--
--   Row Count: 1
CREATE TABLE QMS.QMOQCCUSTOMERFILE
(
  ID                CHAR(32 BYTE),
  PLANTID           VARCHAR2(20 BYTE),
  CUSTOMER          VARCHAR2(100 BYTE),
  ISNEEDSHIPREPORT  NUMBER(1)                   DEFAULT 0,
  SPECFILE          VARCHAR2(1000 BYTE),
  DELFLAG           NUMBER(1)                   DEFAULT 0,
  CREATEBY          VARCHAR2(32 BYTE),
  CREATEDT          DATE,
  LASTEDITBY        VARCHAR2(32 BYTE),
  LASTEDITDT        DATE,
  REMARK            VARCHAR2(500 BYTE),
  OWNER             VARCHAR2(200 BYTE),
  EMAIL             VARCHAR2(1000 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMOQCHEAD  (Table) 
--
--   Row Count: 39641
CREATE TABLE QMS.QMOQCHEAD
(
  OQCNO              VARCHAR2(32 BYTE),
  CUSTOMER           VARCHAR2(50 BYTE),
  FUNDSCUSTOMER      VARCHAR2(32 BYTE),
  EXCHANGECONDITION  VARCHAR2(50 BYTE),
  ADDRESSNO          VARCHAR2(100 BYTE),
  TRANSPORTMODE      VARCHAR2(32 BYTE),
  ADDRESS            VARCHAR2(100 BYTE),
  CREATEBY           VARCHAR2(32 BYTE),
  CREATEDT           DATE,
  LASTEDITBY         VARCHAR2(32 BYTE),
  LASTEDITDT         DATE,
  DELFLAG            NUMBER                     DEFAULT 0,
  AUDITSTATUS        VARCHAR2(32 BYTE)          DEFAULT 'Open',
  PLANTID            VARCHAR2(10 BYTE),
  OCCURDATE          DATE,
  DESTINATION        VARCHAR2(500 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMOQCHEADHIST  (Table) 
--
--   Row Count: 110
CREATE TABLE QMS.QMOQCHEADHIST
(
  OQCNO              VARCHAR2(32 BYTE),
  CUSTOMER           VARCHAR2(50 BYTE),
  FUNDSCUSTOMER      VARCHAR2(32 BYTE),
  EXCHANGECONDITION  VARCHAR2(50 BYTE),
  ADDRESSNO          VARCHAR2(100 BYTE),
  TRANSPORTMODE      VARCHAR2(32 BYTE),
  ADDRESS            VARCHAR2(100 BYTE),
  CREATEBY           VARCHAR2(32 BYTE),
  CREATEDT           DATE,
  LASTEDITBY         VARCHAR2(32 BYTE),
  LASTEDITDT         DATE,
  DELFLAG            NUMBER                     DEFAULT 0,
  AUDITSTATUS        VARCHAR2(32 BYTE)          DEFAULT 'Open',
  PLANTID            VARCHAR2(10 BYTE),
  OCCURDATE          DATE,
  DESTINATION        VARCHAR2(500 BYTE),
  LOGDT              DATE,
  LOGTBY             VARCHAR2(32 BYTE),
  LOGID              CHAR(32 BYTE)              DEFAULT sys_guid()
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMOQCINPUTER  (Table) 
--
--   Row Count: 140
CREATE TABLE QMS.QMOQCINPUTER
(
  ID          CHAR(32 BYTE)                     DEFAULT sys_guid(),
  MASTERID    CHAR(32 BYTE),
  OQCINPUTER  VARCHAR2(32 BYTE),
  INPUTDATE   DATE,
  CREATEBY    VARCHAR2(32 BYTE),
  CREATEDT    DATE,
  LASTEDITBY  VARCHAR2(32 BYTE),
  LASTEDITDT  DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMOQCINSPECTHEAD  (Table) 
--
--   Row Count: 1
CREATE TABLE QMS.QMOQCINSPECTHEAD
(
  ID          CHAR(32 BYTE),
  DOCNO       VARCHAR2(50 BYTE),
  ECNNO       VARCHAR2(50 BYTE),
  REV         VARCHAR2(10 BYTE),
  DEPARTMENT  VARCHAR2(50 BYTE),
  UPDATEDATE  DATE,
  DELFLAG     NUMBER                            DEFAULT 0,
  CREATEBY    VARCHAR2(32 BYTE),
  CREATEDT    DATE,
  LASTEDITBY  VARCHAR2(32 BYTE),
  LASTEDITDT  DATE,
  PLANTID     VARCHAR2(10 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMOQCINSPECTITEM  (Table) 
--
--   Row Count: 361
CREATE TABLE QMS.QMOQCINSPECTITEM
(
  ID              CHAR(32 BYTE),
  PLANTID         VARCHAR2(32 BYTE),
  CUSTOMER        VARCHAR2(200 BYTE),
  BCNO            VARCHAR2(200 BYTE),
  CUSTOMERADDR    VARCHAR2(50 BYTE),
  ITEMNO          NUMBER,
  SHIPDEMAND      VARCHAR2(2000 BYTE),
  HEADID          CHAR(32 BYTE),
  STARTDATE       VARCHAR2(50 BYTE),
  DEPARTMENTNAME  VARCHAR2(50 BYTE),
  DELFLAG         NUMBER                        DEFAULT 0,
  CREATEBY        VARCHAR2(32 BYTE),
  CREATEDT        DATE,
  LASTEDITBY      VARCHAR2(32 BYTE),
  LASTEDITDT      DATE
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMOQCITEM  (Table) 
--
--   Row Count: 48633
CREATE TABLE QMS.QMOQCITEM
(
  OQCNO           VARCHAR2(32 BYTE),
  ITEMNO          VARCHAR2(10 BYTE),
  PARTNO          VARCHAR2(50 BYTE),
  PARTNAME        VARCHAR2(100 BYTE),
  CUSTOMERPARTNO  VARCHAR2(100 BYTE),
  TOTALQTY        NUMBER,
  DELFLAG         NUMBER                        DEFAULT 0,
  CREATEBY        VARCHAR2(32 BYTE),
  CREATEDT        DATE,
  LASTEDITBY      VARCHAR2(32 BYTE),
  LASTEDITDT      DATE,
  CPO             VARCHAR2(50 BYTE),
  PLANTID         VARCHAR2(32 BYTE),
  AUDITSTATUS     VARCHAR2(32 BYTE)             DEFAULT 'Open',
  MASTERID        VARCHAR2(32 BYTE),
  REMARK          VARCHAR2(1000 BYTE),
  ID              CHAR(32 BYTE)                 DEFAULT sys_guid(),
  ISSENDREPORT    NUMBER(1),
  SHIPSTATUS      VARCHAR2(32 BYTE)             DEFAULT 'Open'
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMOQCITEMHIST  (Table) 
--
--   Row Count: 131
CREATE TABLE QMS.QMOQCITEMHIST
(
  OQCNO           VARCHAR2(32 BYTE),
  ITEMNO          VARCHAR2(10 BYTE),
  PARTNO          VARCHAR2(50 BYTE),
  PARTNAME        VARCHAR2(100 BYTE),
  CUSTOMERPARTNO  VARCHAR2(100 BYTE),
  TOTALQTY        NUMBER,
  DELFLAG         NUMBER                        DEFAULT 0,
  CREATEBY        VARCHAR2(32 BYTE),
  CREATEDT        DATE,
  LASTEDITBY      VARCHAR2(32 BYTE),
  LASTEDITDT      DATE,
  CPO             VARCHAR2(50 BYTE),
  PLANTID         VARCHAR2(32 BYTE),
  AUDITSTATUS     VARCHAR2(32 BYTE)             DEFAULT 'Open',
  MASTERID        VARCHAR2(32 BYTE),
  REMARK          VARCHAR2(1000 BYTE),
  ID              CHAR(32 BYTE)                 DEFAULT sys_guid(),
  ISSENDREPORT    NUMBER(1),
  SHIPSTATUS      VARCHAR2(32 BYTE)             DEFAULT 'Open',
  LOGDT           DATE,
  LOGBY           VARCHAR2(32 BYTE),
  LOGID           CHAR(32 BYTE)                 DEFAULT sys_guid()
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMOQCPACK  (Table) 
--
--   Row Count: 29499
CREATE TABLE QMS.QMOQCPACK
(
  OQCNO        VARCHAR2(32 BYTE),
  ITEMNO       VARCHAR2(10 BYTE),
  PARTNO       VARCHAR2(50 BYTE),
  QTY          NUMBER,
  BOXES        NUMBER,
  NETWEIGHT    NUMBER(18,3),
  GROSSWEIGHT  NUMBER(18,3),
  DELFLAG      NUMBER                           DEFAULT 0,
  CREATEBY     VARCHAR2(32 BYTE),
  CREATEDT     DATE,
  LASTEDITBY   VARCHAR2(32 BYTE),
  LASTEDITDT   DATE,
  PLANTID      VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMOQCPACKHIST  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.QMOQCPACKHIST
(
  OQCNO        VARCHAR2(32 BYTE),
  ITEMNO       VARCHAR2(10 BYTE),
  PARTNO       VARCHAR2(50 BYTE),
  QTY          NUMBER,
  BOXES        NUMBER,
  NETWEIGHT    NUMBER(18,3),
  GROSSWEIGHT  NUMBER(18,3),
  DELFLAG      NUMBER                           DEFAULT 0,
  CREATEBY     VARCHAR2(32 BYTE),
  CREATEDT     DATE,
  LASTEDITBY   VARCHAR2(32 BYTE),
  LASTEDITDT   DATE,
  PLANTID      VARCHAR2(32 BYTE),
  LOGDT        DATE,
  LOGBY        VARCHAR2(32 BYTE),
  LOGID        CHAR(32 BYTE)                    DEFAULT sys_guid()
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMOQCSHIPREPORT  (Table) 
--
--   Row Count: 7030
CREATE TABLE QMS.QMOQCSHIPREPORT
(
  ID            CHAR(32 BYTE)                   DEFAULT sys_guid(),
  OQCNO         VARCHAR2(100 BYTE),
  ITEMNO        VARCHAR2(10 BYTE),
  OQCID         CHAR(32 BYTE),
  ISNEEDREPORT  NUMBER(1),
  REPORTTYPE    NUMBER(1),
  OWNER         VARCHAR2(1000 BYTE),
  EMAIL         VARCHAR2(1000 BYTE),
  CREATEBY      VARCHAR2(32 BYTE),
  CREATEDT      DATE,
  LASTEDITBY    VARCHAR2(32 BYTE),
  LASTEDITDT    DATE,
  STATUS        VARCHAR2(32 BYTE)               DEFAULT 'Send',
  PLANTID       VARCHAR2(32 BYTE),
  DATECODE      VARCHAR2(1000 BYTE),
  ISSENDDC      NUMBER(1)                       DEFAULT 0,
  SENDTIME      DATE,
  REJECTREASON  VARCHAR2(1000 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             8K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.QMOQCSHIPREPORT.OQCNO IS '销单号';

COMMENT ON COLUMN QMS.QMOQCSHIPREPORT.ITEMNO IS '项次';

COMMENT ON COLUMN QMS.QMOQCSHIPREPORT.ISNEEDREPORT IS '是否需要出货报告';

COMMENT ON COLUMN QMS.QMOQCSHIPREPORT.REPORTTYPE IS '出货报告类型,0 电子档,1纸质档,2电子&纸质档';

COMMENT ON COLUMN QMS.QMOQCSHIPREPORT.OWNER IS '收件人';

COMMENT ON COLUMN QMS.QMOQCSHIPREPORT.EMAIL IS '邮箱';

COMMENT ON COLUMN QMS.QMOQCSHIPREPORT.STATUS IS 'Send/Finish/Closed';

COMMENT ON COLUMN QMS.QMOQCSHIPREPORT.DATECODE IS '从MES系统获取';

COMMENT ON COLUMN QMS.QMOQCSHIPREPORT.ISSENDDC IS '是否已发送 , 0未发送,1已发送';

COMMENT ON COLUMN QMS.QMOQCSHIPREPORT.SENDTIME IS '发送时间';


--
-- QMOQCSHIPREPORTDC  (Table) 
--
--   Row Count: 3703
CREATE TABLE QMS.QMOQCSHIPREPORTDC
(
  OQCID        VARCHAR2(32 BYTE),
  OQCNO        VARCHAR2(32 BYTE),
  ITEMNO       VARCHAR2(32 BYTE),
  DATECODE     VARCHAR2(500 BYTE),
  PRODUCTDATE  VARCHAR2(20 BYTE),
  DELFLAG      NUMBER(1)                        DEFAULT 0,
  CREATEBY     VARCHAR2(32 BYTE),
  CREATEDT     DATE,
  LASTEDITBY   VARCHAR2(32 BYTE),
  LASTEDITDT   DATE,
  ID           VARCHAR2(32 BYTE)                DEFAULT sys_guid()
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMOQCSHIPREPORTIDS  (Table) 
--
--   Row Count: 584
CREATE TABLE QMS.QMOQCSHIPREPORTIDS
(
  MASTERID  VARCHAR2(32 BYTE),
  OQCID     VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.QMOQCSHIPREPORTIDS.OQCID IS '因系統url傳參長度限制,存放數據的臨時表';


--
-- QMOQCWHAUDITLOG  (Table) 
--
--   Row Count: 19
CREATE TABLE QMS.QMOQCWHAUDITLOG
(
  ID                 CHAR(32 BYTE)              DEFAULT sys_guid(),
  PLANTID            VARCHAR2(10 BYTE),
  AUDITMASTERID      CHAR(32 BYTE),
  RECORDTYPE         VARCHAR2(15 BYTE)          DEFAULT 'Original',
  OCCURDATE          VARCHAR2(10 BYTE),
  OCCURSHIFT         VARCHAR2(10 BYTE),
  AUDITSHIFT         VARCHAR2(10 BYTE),
  OCCURAREA          NVARCHAR2(50),
  OCCURFLOOR         NVARCHAR2(50),
  OCCURLINE          NVARCHAR2(50),
  OQCINPUTER         NVARCHAR2(50),
  SKUNO              VARCHAR2(32 BYTE),
  SN                 VARCHAR2(50 BYTE),
  PALLETNO           VARCHAR2(50 BYTE),
  SUPERVISENAME      NVARCHAR2(50),
  SUPERVISOR         NVARCHAR2(50),
  EXCEPTIONCATEGORY  VARCHAR2(32 BYTE),
  EXCEPTIONCODE      NVARCHAR2(15),
  EXCEPTIONTYPE      NVARCHAR2(100),
  EXCEPTIONDESP      NVARCHAR2(256),
  CORRECTACTION      NVARCHAR2(500),
  FOLLOWUPRESULT     NVARCHAR2(500),
  CORRECTER          NVARCHAR2(50),
  CORRECTDATE        DATE,
  REMARK             NVARCHAR2(256),
  DELFLAG            NUMBER(1)                  DEFAULT 0,
  CREATEDT           DATE                       DEFAULT SYSDATE,
  CREATEBY           VARCHAR2(32 BYTE),
  LASTEDITDT         DATE,
  LASTEDITBY         VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             8K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.ID IS 'Id';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.PLANTID IS 'PlantId';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.AUDITMASTERID IS 'AuditMasterID';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.RECORDTYPE IS '記錄類型(Original,Latest用于標記原始的和最新的)';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.OCCURDATE IS '檢查日期';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.OCCURSHIFT IS '發生班別 Day:白班；Night:晚班';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.AUDITSHIFT IS '稽核班別：A、B';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.OCCURAREA IS '發生區域';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.OCCURFLOOR IS '發生樓層';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.OCCURLINE IS '發生線別';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.OQCINPUTER IS 'OQC錄入者';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.SKUNO IS '成品料號';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.SN IS '序列號';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.PALLETNO IS '棧板號';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.SUPERVISENAME IS '責任單位';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.SUPERVISOR IS '责任人';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.EXCEPTIONCATEGORY IS '異常類別';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.EXCEPTIONCODE IS '異常代碼';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.EXCEPTIONTYPE IS '異常類型';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.EXCEPTIONDESP IS '異常描述';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.CORRECTACTION IS '糾正行動';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.FOLLOWUPRESULT IS '跟進結果';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.CORRECTER IS '糾正者';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.CORRECTDATE IS '糾正時間';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.REMARK IS '備注';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.DELFLAG IS '是否已刪除1:已刪除,0:未刪除';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.CREATEDT IS '創建時間';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.CREATEBY IS '創建人';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.LASTEDITDT IS '最後編輯時間';

COMMENT ON COLUMN QMS.QMOQCWHAUDITLOG.LASTEDITBY IS '最後編輯人';


--
-- QMOQCWHAUDITMASTER  (Table) 
--
--   Row Count: 1
CREATE TABLE QMS.QMOQCWHAUDITMASTER
(
  ID                 CHAR(32 BYTE)              DEFAULT sys_guid(),
  PLANTID            VARCHAR2(10 BYTE),
  BATCHNO            VARCHAR2(15 BYTE),
  OCCURDATE          VARCHAR2(10 BYTE),
  OCCURSHIFT         VARCHAR2(10 BYTE),
  AUDITSHIFT         VARCHAR2(10 BYTE),
  OCCURAREA          NVARCHAR2(50),
  OCCURFLOOR         NVARCHAR2(50),
  OCCURLINE          NVARCHAR2(50),
  OQCINPUTER         NVARCHAR2(50),
  SKUNO              VARCHAR2(32 BYTE),
  SN                 VARCHAR2(50 BYTE),
  PALLETNO           VARCHAR2(50 BYTE),
  SUPERVISENAME      NVARCHAR2(50),
  SUPERVISOR         NVARCHAR2(50),
  EXCEPTIONCATEGORY  VARCHAR2(32 BYTE),
  EXCEPTIONCODE      NVARCHAR2(15),
  EXCEPTIONTYPE      NVARCHAR2(100),
  EXCEPTIONDESP      NVARCHAR2(256),
  CORRECTACTION      NVARCHAR2(500),
  FOLLOWUPRESULT     NVARCHAR2(500),
  CORRECTER          NVARCHAR2(50),
  CORRECTDATE        DATE,
  QECONFIRMOWNER     NVARCHAR2(50),
  QECONFIRMDATE      DATE,
  LASTREJECTREASON   NVARCHAR2(150),
  AUDITSTATUS        VARCHAR2(15 BYTE)          DEFAULT 'Open',
  REJECTCOUNT        INTEGER                    DEFAULT 0,
  AUDITLOG           NVARCHAR2(2000),
  CLOSEDATE          DATE,
  DELFLAG            NUMBER(1)                  DEFAULT 0,
  CREATEDT           DATE                       DEFAULT sysdate,
  CREATEBY           VARCHAR2(32 BYTE),
  LASTEDITDT         DATE,
  LASTEDITBY         VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMROHSINSPECTIONITEM  (Table) 
--
--   Row Count: 1541
CREATE TABLE QMS.QMROHSINSPECTIONITEM
(
  ID             CHAR(32 BYTE)                  DEFAULT sys_guid(),
  PLANTID        VARCHAR2(10 BYTE),
  INSPECTIONID   CHAR(32 BYTE),
  ITEM           INTEGER                        DEFAULT 0,
  SUBSTANCETYPE  NVARCHAR2(50),
  TESTVALUE      NVARCHAR2(100),
  DELFLAG        NUMBER(1)                      DEFAULT 0,
  CREATEDT       DATE                           DEFAULT SYSDATE,
  CREATEBY       VARCHAR2(32 BYTE),
  LASTEDITDT     DATE,
  LASTEDITBY     VARCHAR2(32 BYTE),
  GROUPID        INTEGER                        DEFAULT 0,
  GROUPTYPE      NVARCHAR2(32),
  GROUPTYPESEQ   INTEGER                        DEFAULT 0,
  INSPECTMETHOD  NVARCHAR2(30)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMROHSINSPECTIONLIST  (Table) 
--
--   Row Count: 4591
CREATE TABLE QMS.QMROHSINSPECTIONLIST
(
  ID                    CHAR(32 BYTE)           DEFAULT SYS_GUID(),
  PLANTID               VARCHAR2(10 BYTE),
  PARTNO                VARCHAR2(32 BYTE),
  VENDOR                NVARCHAR2(100),
  MATERIALCODE          VARCHAR2(32 BYTE),
  ITEM                  INTEGER                 DEFAULT 0,
  MATERIAL              NVARCHAR2(100),
  ELECMATERIAL          NVARCHAR2(100),
  ELECCOLOR             NVARCHAR2(100),
  ROHSTESTFREQUENCY     INTEGER                 DEFAULT 0,
  ROHSFREQUENCYUNIT     NVARCHAR2(30)           DEFAULT '次/月',
  LASTROHSTESTDT        DATE,
  CURRENTTESTITEM       INTEGER                 DEFAULT 0,
  PARTCATEGORY          NVARCHAR2(100),
  PARTTYPE              NVARCHAR2(100),
  PARTNAME              NVARCHAR2(50),
  DELFLAG               NUMBER(1)               DEFAULT 0,
  CREATEDT              DATE                    DEFAULT SYSDATE,
  CREATEBY              VARCHAR2(32 BYTE),
  LASTEDITDT            DATE,
  LASTEDITBY            VARCHAR2(32 BYTE),
  VMIVENDOR             NVARCHAR2(100),
  ISBYMATERIAL          NUMBER(1)               DEFAULT 1,
  TESTITEMS             VARCHAR2(100 BYTE),
  UNTESTCOUNT           INTEGER                 DEFAULT 0,
  ISTEST                INTEGER                 DEFAULT 0,
  LASTACTUALROHSTESTDT  DATE,
  ACTUALTESTCOUNT       INTEGER                 DEFAULT 0,
  PLANTESTCOUNT         INTEGER                 DEFAULT 0,
  CHECKTYPE             VARCHAR2(10 BYTE)       DEFAULT 'IQC'
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.QMROHSINSPECTIONLIST.ISTEST IS '用處未知';


--
-- QMROHSINSPECTIONMASTER  (Table) 
--
--   Row Count: 363
CREATE TABLE QMS.QMROHSINSPECTIONMASTER
(
  ID                CHAR(32 BYTE)               DEFAULT sys_guid(),
  PLANTID           VARCHAR2(10 BYTE),
  PARTNO            VARCHAR2(32 BYTE),
  VENDOR            NVARCHAR2(100),
  DATECODE          VARCHAR2(30 BYTE),
  SHIFT             VARCHAR2(10 BYTE),
  PARTNAME          NVARCHAR2(30),
  INSPECTMETHOD     NVARCHAR2(30),
  INSPECTDATE       VARCHAR2(10 BYTE),
  INSPECTOR         VARCHAR2(20 BYTE),
  INSPECTORNAME     NVARCHAR2(20),
  INSPECTRESULT     VARCHAR2(10 BYTE)           DEFAULT 'OK',
  REMARK            NVARCHAR2(256),
  APPROVEBY         NVARCHAR2(30),
  APPROVEDATE       DATE,
  APPROVEREMARK     NVARCHAR2(256),
  APPROVERESULT     VARCHAR2(20 BYTE),
  STATUSCODE        VARCHAR2(20 BYTE)           DEFAULT NULL,
  DELFLAG           NUMBER(1)                   DEFAULT 0,
  CREATEDT          DATE                        DEFAULT SYSDATE,
  CREATEBY          VARCHAR2(32 BYTE),
  LASTEDITDT        DATE,
  LASTEDITBY        VARCHAR2(32 BYTE),
  MATERIALCODE      VARCHAR2(32 BYTE),
  VMIVENDOR         NVARCHAR2(100),
  GRID              VARCHAR2(32 BYTE),
  BEGININSPECTDATE  DATE,
  TESTITEMS         VARCHAR2(200 BYTE)          DEFAULT null,
  CHECKTYPE         VARCHAR2(10 BYTE)           DEFAULT 'IQC'
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMSIQCFREEINSPECT  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.QMSIQCFREEINSPECT
(
  ID          CHAR(32 BYTE)                     DEFAULT sys_guid(),
  VENDORCODE  VARCHAR2(200 BYTE),
  VENDOR      VARCHAR2(200 BYTE),
  FREESCOPE   VARCHAR2(200 BYTE),
  PARTNO      VARCHAR2(200 BYTE),
  STARTDATE   DATE,
  DELFLAG     NUMBER(1)                         DEFAULT 0,
  CREATEBY    VARCHAR2(32 BYTE),
  CREATEDT    DATE,
  LASTEDITBY  VARCHAR2(32 BYTE),
  LASTEDITDT  DATE,
  PLANTID     VARCHAR2(20 BYTE),
  REMARK      VARCHAR2(1000 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- QMUPDATEVMISTATUS  (Table) 
--
--   Row Count: 10
CREATE TABLE QMS.QMUPDATEVMISTATUS
(
  ID               CHAR(32 BYTE)                DEFAULT sys_guid(),
  PLANTID          VARCHAR2(10 BYTE),
  INSPECTIONID     VARCHAR2(32 BYTE),
  UPDATETYPE       VARCHAR2(20 BYTE),
  ISSTS            VARCHAR2(5 BYTE),
  ISUPDATESUCCESS  INTEGER                      DEFAULT 1,
  UPDATEMESSAGE    NVARCHAR2(500),
  DELFLAG          NUMBER(1)                    DEFAULT 0,
  CREATEDT         DATE                         DEFAULT sysdate,
  CREATEBY         VARCHAR2(32 BYTE),
  LASTEDITDT       DATE,
  LASTEDITBY       VARCHAR2(32 BYTE),
  GRID             VARCHAR2(32 BYTE),
  RESULTSTATUS     VARCHAR2(30 BYTE),
  ACTIONTYPE       VARCHAR2(30 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- SYS_EXPORT_SCHEMA_01  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.SYS_EXPORT_SCHEMA_01
(
  PROCESS_ORDER           NUMBER,
  DUPLICATE               NUMBER,
  DUMP_FILEID             NUMBER,
  DUMP_POSITION           NUMBER,
  DUMP_LENGTH             NUMBER,
  DUMP_ORIG_LENGTH        NUMBER,
  DUMP_ALLOCATION         NUMBER,
  COMPLETED_ROWS          NUMBER,
  ERROR_COUNT             NUMBER,
  ELAPSED_TIME            NUMBER,
  OBJECT_TYPE_PATH        VARCHAR2(200 BYTE),
  OBJECT_PATH_SEQNO       NUMBER,
  OBJECT_TYPE             VARCHAR2(30 BYTE),
  IN_PROGRESS             CHAR(1 BYTE),
  OBJECT_NAME             VARCHAR2(500 BYTE),
  OBJECT_LONG_NAME        VARCHAR2(4000 BYTE),
  OBJECT_SCHEMA           VARCHAR2(30 BYTE),
  ORIGINAL_OBJECT_SCHEMA  VARCHAR2(30 BYTE),
  ORIGINAL_OBJECT_NAME    VARCHAR2(4000 BYTE),
  PARTITION_NAME          VARCHAR2(30 BYTE),
  SUBPARTITION_NAME       VARCHAR2(30 BYTE),
  DATAOBJ_NUM             NUMBER,
  FLAGS                   NUMBER,
  PROPERTY                NUMBER,
  TRIGFLAG                NUMBER,
  CREATION_LEVEL          NUMBER,
  COMPLETION_TIME         DATE,
  OBJECT_TABLESPACE       VARCHAR2(30 BYTE),
  SIZE_ESTIMATE           NUMBER,
  OBJECT_ROW              NUMBER,
  PROCESSING_STATE        CHAR(1 BYTE),
  PROCESSING_STATUS       CHAR(1 BYTE),
  BASE_PROCESS_ORDER      NUMBER,
  BASE_OBJECT_TYPE        VARCHAR2(30 BYTE),
  BASE_OBJECT_NAME        VARCHAR2(30 BYTE),
  BASE_OBJECT_SCHEMA      VARCHAR2(30 BYTE),
  ANCESTOR_PROCESS_ORDER  NUMBER,
  DOMAIN_PROCESS_ORDER    NUMBER,
  PARALLELIZATION         NUMBER,
  UNLOAD_METHOD           NUMBER,
  LOAD_METHOD             NUMBER,
  GRANULES                NUMBER,
  SCN                     NUMBER,
  GRANTOR                 VARCHAR2(30 BYTE),
  XML_CLOB                CLOB,
  PARENT_PROCESS_ORDER    NUMBER,
  NAME                    VARCHAR2(30 BYTE),
  VALUE_T                 VARCHAR2(4000 BYTE),
  VALUE_N                 NUMBER,
  IS_DEFAULT              NUMBER,
  FILE_TYPE               NUMBER,
  USER_DIRECTORY          VARCHAR2(4000 BYTE),
  USER_FILE_NAME          VARCHAR2(4000 BYTE),
  FILE_NAME               VARCHAR2(4000 BYTE),
  EXTEND_SIZE             NUMBER,
  FILE_MAX_SIZE           NUMBER,
  PROCESS_NAME            VARCHAR2(30 BYTE),
  LAST_UPDATE             DATE,
  WORK_ITEM               VARCHAR2(30 BYTE),
  OBJECT_NUMBER           NUMBER,
  COMPLETED_BYTES         NUMBER,
  TOTAL_BYTES             NUMBER,
  METADATA_IO             NUMBER,
  DATA_IO                 NUMBER,
  CUMULATIVE_TIME         NUMBER,
  PACKET_NUMBER           NUMBER,
  INSTANCE_ID             NUMBER,
  OLD_VALUE               VARCHAR2(4000 BYTE),
  SEED                    NUMBER,
  LAST_FILE               NUMBER,
  USER_NAME               VARCHAR2(30 BYTE),
  OPERATION               VARCHAR2(30 BYTE),
  JOB_MODE                VARCHAR2(30 BYTE),
  QUEUE_TABNUM            NUMBER,
  CONTROL_QUEUE           VARCHAR2(30 BYTE),
  STATUS_QUEUE            VARCHAR2(30 BYTE),
  REMOTE_LINK             VARCHAR2(4000 BYTE),
  VERSION                 NUMBER,
  JOB_VERSION             VARCHAR2(30 BYTE),
  DB_VERSION              VARCHAR2(30 BYTE),
  TIMEZONE                VARCHAR2(64 BYTE),
  STATE                   VARCHAR2(30 BYTE),
  PHASE                   NUMBER,
  GUID                    RAW(16),
  START_TIME              DATE,
  BLOCK_SIZE              NUMBER,
  METADATA_BUFFER_SIZE    NUMBER,
  DATA_BUFFER_SIZE        NUMBER,
  DEGREE                  NUMBER,
  PLATFORM                VARCHAR2(101 BYTE),
  ABORT_STEP              NUMBER,
  INSTANCE                VARCHAR2(60 BYTE),
  CLUSTER_OK              NUMBER,
  SERVICE_NAME            VARCHAR2(100 BYTE),
  OBJECT_INT_OID          VARCHAR2(32 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   10
MAXTRANS   255
STORAGE    (
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON TABLE QMS.SYS_EXPORT_SCHEMA_01 IS 'Data Pump Master Table EXPORT                         SCHEMA                        ';


--
-- TEST  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.TEST
(
  SDATA  NUMBER,
  EP     NUMBER
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- TMP_DEBUG_SP  (Table) 
--
--   Row Count: 38
CREATE TABLE QMS.TMP_DEBUG_SP
(
  SPNAME   VARCHAR2(100 BYTE),
  RUNDATE  DATE,
  STEP     VARCHAR2(1000 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- TMP_IPQC_CHECKDAILYREPORT  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE QMS.TMP_IPQC_CHECKDAILYREPORT
(
  ID            VARCHAR2(32 BYTE),
  NO            NUMBER,
  CREATEDT      TIMESTAMP(6),
  WEEK          NUMBER,
  OCCURDATE     VARCHAR2(10 BYTE),
  OCCURSHIFT    VARCHAR2(10 BYTE),
  OCCURLINE     NVARCHAR2(50),
  PRODUCT       VARCHAR2(20 BYTE),
  OCCURSECTION  NVARCHAR2(50),
  OCCURSTATION  NVARCHAR2(50),
  DEFECTRATE    VARCHAR2(10 BYTE),
  FREQUENCY     NUMBER,
  DEFECTDESP    NVARCHAR2(1000),
  ERRORCODE1    NUMBER,
  ERRORCODE2    NUMBER,
  ERRORCODE3    NUMBER,
  ERRORCODE4    NUMBER,
  ERRORCODE5    NUMBER,
  ERRORCODE6    NUMBER,
  ERRORCODE7    NUMBER,
  ERRORCODE8    NUMBER,
  ERRORCODE9    NUMBER,
  ERRORCODE10   NUMBER,
  ERRORCODE11   NUMBER,
  ERRORCODE12   NUMBER,
  ERRORCODE13   NUMBER,
  ERRORCODE14   NUMBER,
  ERRORCODE15   NUMBER,
  ERRORCODE16   NUMBER
)
ON COMMIT PRESERVE ROWS;


--
-- TMP_IPQC_CHECKISSUESUMMARY  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE QMS.TMP_IPQC_CHECKISSUESUMMARY
(
  ID        VARCHAR2(32 BYTE),
  CREATEDT  TIMESTAMP(6),
  ROWINDEX  NUMBER,
  SUBINDEX  NUMBER,
  CUMNAME   NVARCHAR2(200),
  CUMTYPE   VARCHAR2(100 BYTE),
  DATATYPE  VARCHAR2(100 BYTE),
  DATANAME  VARCHAR2(100 BYTE),
  MONTH1    VARCHAR2(32 BYTE),
  MONTH2    VARCHAR2(32 BYTE),
  WK1       VARCHAR2(32 BYTE),
  WK2       VARCHAR2(32 BYTE),
  WK3       VARCHAR2(32 BYTE),
  WK4       VARCHAR2(32 BYTE),
  WK5       VARCHAR2(32 BYTE),
  WK6       VARCHAR2(32 BYTE),
  DAY1      VARCHAR2(32 BYTE),
  DAY2      VARCHAR2(32 BYTE),
  DAY3      VARCHAR2(32 BYTE),
  DAY4      VARCHAR2(32 BYTE),
  DAY5      VARCHAR2(32 BYTE),
  DAY6      VARCHAR2(32 BYTE),
  DAY7      VARCHAR2(32 BYTE),
  DAY8      VARCHAR2(32 BYTE)
)
ON COMMIT PRESERVE ROWS;


--
-- TMP_IPQC_FAIDATA  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE QMS.TMP_IPQC_FAIDATA
(
  CREATEDT     TIMESTAMP(6),
  PAGEINDEX    INTEGER,
  ROWINDEX     INTEGER,
  MODULEINDEX  INTEGER,
  MODULENO     VARCHAR2(100 BYTE),
  DRAWING1     VARCHAR2(100 BYTE),
  DRAWING2     VARCHAR2(100 BYTE),
  DRAWING3     VARCHAR2(100 BYTE),
  DRAWING4     VARCHAR2(100 BYTE),
  DRAWING5     VARCHAR2(100 BYTE),
  DRAWING6     VARCHAR2(100 BYTE),
  DRAWING7     VARCHAR2(100 BYTE),
  DRAWING8     VARCHAR2(100 BYTE),
  DRAWING9     VARCHAR2(100 BYTE),
  DRAWING10    VARCHAR2(100 BYTE),
  DRAWING11    VARCHAR2(100 BYTE),
  DRAWING12    VARCHAR2(100 BYTE),
  DRAWING13    VARCHAR2(100 BYTE),
  DRAWING14    VARCHAR2(100 BYTE),
  DRAWING15    VARCHAR2(100 BYTE),
  DRAWING16    VARCHAR2(100 BYTE),
  DRAWING17    VARCHAR2(100 BYTE),
  DRAWING18    VARCHAR2(100 BYTE),
  DRAWING19    VARCHAR2(100 BYTE),
  DRAWING20    VARCHAR2(100 BYTE),
  DRAWING21    VARCHAR2(100 BYTE),
  DRAWING22    VARCHAR2(100 BYTE),
  DRAWING23    VARCHAR2(100 BYTE),
  DRAWING24    VARCHAR2(100 BYTE),
  DRAWING25    VARCHAR2(100 BYTE),
  DRAWING26    VARCHAR2(100 BYTE),
  DRAWING27    VARCHAR2(100 BYTE),
  DRAWING28    VARCHAR2(100 BYTE),
  DRAWING29    VARCHAR2(100 BYTE),
  DRAWING30    VARCHAR2(100 BYTE),
  DRAWING31    VARCHAR2(100 BYTE),
  DRAWING32    VARCHAR2(100 BYTE),
  DRAWING33    VARCHAR2(100 BYTE),
  DRAWING34    VARCHAR2(100 BYTE),
  DRAWING35    VARCHAR2(100 BYTE),
  DRAWING36    VARCHAR2(100 BYTE),
  DRAWING37    VARCHAR2(100 BYTE),
  DRAWING38    VARCHAR2(100 BYTE),
  DRAWING39    VARCHAR2(100 BYTE),
  DRAWING40    VARCHAR2(100 BYTE),
  DRAWING41    VARCHAR2(100 BYTE),
  DRAWING42    VARCHAR2(100 BYTE),
  DRAWING43    VARCHAR2(100 BYTE),
  DRAWING44    VARCHAR2(100 BYTE),
  DRAWING45    VARCHAR2(100 BYTE),
  DRAWING46    VARCHAR2(100 BYTE),
  DRAWING47    VARCHAR2(100 BYTE),
  DRAWING48    VARCHAR2(100 BYTE),
  DRAWING49    VARCHAR2(100 BYTE),
  DRAWING50    VARCHAR2(100 BYTE),
  ROWHEAD      VARCHAR2(100 BYTE)
)
ON COMMIT PRESERVE ROWS;


--
-- TMP_IPQC_FFGICHECKDAILYISSUE  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE QMS.TMP_IPQC_FFGICHECKDAILYISSUE
(
  ID               VARCHAR2(32 BYTE),
  CREATEDT         TIMESTAMP(6),
  ROWINDEX         NUMBER,
  PAGEINDEX        NUMBER,
  SUBINDEX         NUMBER,
  CUMTYPE          VARCHAR2(100 BYTE),
  CUMNAME          VARCHAR2(100 BYTE),
  CHECKTYPE        INTEGER,
  MASTERID         VARCHAR2(32 BYTE),
  ITEMID           VARCHAR2(32 BYTE),
  INSPECTNAME      NVARCHAR2(200),
  INSPECTSTANDARD  NVARCHAR2(256),
  SN1              VARCHAR2(300 BYTE),
  SN2              VARCHAR2(300 BYTE),
  SN3              VARCHAR2(300 BYTE),
  SN4              VARCHAR2(300 BYTE),
  SN5              VARCHAR2(300 BYTE),
  SN6              VARCHAR2(300 BYTE),
  SN7              VARCHAR2(300 BYTE),
  SN8              VARCHAR2(300 BYTE),
  PALLETNO1        VARCHAR2(300 BYTE),
  PALLETNO2        VARCHAR2(300 BYTE)
)
ON COMMIT PRESERVE ROWS;


--
-- TMP_IPQC_FFGICHECKDAILYISSUE1  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.TMP_IPQC_FFGICHECKDAILYISSUE1
(
  ID               VARCHAR2(32 BYTE),
  CREATEDT         TIMESTAMP(6),
  ROWINDEX         NUMBER,
  PAGEINDEX        NUMBER,
  SUBINDEX         NUMBER,
  CUMTYPE          VARCHAR2(100 BYTE),
  CUMNAME          VARCHAR2(100 BYTE),
  CHECKTYPE        INTEGER,
  MASTERID         VARCHAR2(32 BYTE),
  ITEMID           VARCHAR2(32 BYTE),
  INSPECTNAME      NVARCHAR2(200),
  INSPECTSTANDARD  NVARCHAR2(256),
  SN1              VARCHAR2(400 BYTE),
  SN2              VARCHAR2(400 BYTE),
  SN3              VARCHAR2(400 BYTE),
  SN4              VARCHAR2(400 BYTE),
  SN5              VARCHAR2(400 BYTE),
  SN6              VARCHAR2(400 BYTE),
  SN7              VARCHAR2(400 BYTE),
  SN8              VARCHAR2(400 BYTE),
  PALLETNO1        VARCHAR2(400 BYTE),
  PALLETNO2        VARCHAR2(400 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- TMP_IPQC_OVERDUELIST  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE QMS.TMP_IPQC_OVERDUELIST
(
  ID              CHAR(32 BYTE),
  PLANTID         VARCHAR2(10 BYTE),
  BATCHNO         VARCHAR2(32 BYTE),
  OCCURLINE       VARCHAR2(32 BYTE),
  OCCURFLOOR      VARCHAR2(32 BYTE),
  OCCURAREA       VARCHAR2(32 BYTE),
  OCCURDATE       VARCHAR2(20 BYTE),
  OCCURSHIFT      VARCHAR2(10 BYTE),
  PRODUCT         VARCHAR2(50 BYTE),
  DEPARTMENTNAME  VARCHAR2(50 BYTE),
  CREATEDT        DATE,
  IPQCAUDITOR     VARCHAR2(32 BYTE),
  STATUS          VARCHAR2(50 BYTE),
  QUERYDATE       TIMESTAMP(6)
)
ON COMMIT PRESERVE ROWS;


--
-- TMP_IPQC_REPORT_OUT  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE QMS.TMP_IPQC_REPORT_OUT
(
  CREATEDT  TIMESTAMP(6),
  LINE      VARCHAR2(50 BYTE),
  PRODUCT   VARCHAR2(50 BYTE),
  IPQCGOAL  VARCHAR2(20 BYTE),
  IPQCRATE  VARCHAR2(20 BYTE),
  FQCGOAL   VARCHAR2(20 BYTE),
  FQCRATE   VARCHAR2(20 BYTE)
)
ON COMMIT PRESERVE ROWS;


--
-- TMP_IQCCURMONTH_REPORT  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE QMS.TMP_IQCCURMONTH_REPORT
(
  CREATEDT      TIMESTAMP(6),
  MATERIALTYPE  VARCHAR2(100 BYTE),
  TOTALLOTS     INTEGER,
  TOTALQTY      NUMBER(18,3),
  ROHSLOTS      INTEGER,
  REJECTLOTS    INTEGER,
  IPQCLOTS      INTEGER,
  WAIVELOTS     INTEGER,
  WAIVERATE     VARCHAR2(10 BYTE),
  REJECTRATE    VARCHAR2(10 BYTE),
  REJECTDPPM    NUMBER(18),
  GOALDPPM      NUMBER(18),
  MONTH         VARCHAR2(10 BYTE),
  REJECTQTY     NUMBER(18,3)
)
ON COMMIT PRESERVE ROWS;


--
-- TMP_IQCMONTH_REPORT  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE QMS.TMP_IQCMONTH_REPORT
(
  CREATEDT  TIMESTAMP(6),
  ROWINDEX  VARCHAR2(100 BYTE),
  DATATYPE  VARCHAR2(100 BYTE),
  MONTH1    VARCHAR2(100 BYTE),
  MONTH2    VARCHAR2(100 BYTE),
  MONTH3    VARCHAR2(100 BYTE),
  MONTH4    VARCHAR2(100 BYTE),
  MONTH5    VARCHAR2(100 BYTE),
  MONTH6    VARCHAR2(100 BYTE),
  MONTH7    VARCHAR2(100 BYTE),
  MONTH8    VARCHAR2(100 BYTE),
  MONTH9    VARCHAR2(100 BYTE),
  MONTH10   VARCHAR2(100 BYTE),
  MONTH11   VARCHAR2(100 BYTE),
  MONTH12   VARCHAR2(100 BYTE)
)
ON COMMIT PRESERVE ROWS;


--
-- TMP_IQC_DAILY_REPORT  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.TMP_IQC_DAILY_REPORT
(
  INSPECTID          VARCHAR2(64 BYTE),
  INSPECTDATE        VARCHAR2(10 BYTE),
  GRNO               VARCHAR2(30 BYTE),
  PARTNO             VARCHAR2(32 BYTE),
  PARTNAME           NVARCHAR2(30),
  VENDOR             NVARCHAR2(100),
  CATEGORY           NVARCHAR2(64),
  VENDORTYPE         VARCHAR2(20 BYTE),
  LOTNO              VARCHAR2(32 BYTE),
  BATCHQTY           NUMBER(18,3),
  SAMPLEQTY          VARCHAR2(32 BYTE),
  DEFECTIVEQTY       VARCHAR2(32 BYTE),
  DEFECTRATE         VARCHAR2(32 BYTE),
  HANDLESTYLE        VARCHAR2(32 BYTE),
  DEFECTDESCRIPTION  NVARCHAR2(512),
  REWORKDT           VARCHAR2(10 BYTE),
  SQE                NVARCHAR2(10),
  CAVITYNO           VARCHAR2(30 BYTE),
  STATUS             VARCHAR2(20 BYTE),
  ISSHIPMENTREPORT   VARCHAR2(10 BYTE),
  INSPECTOR          NVARCHAR2(30),
  LINERETURNTRACK    NVARCHAR2(256),
  COMMENTS           NVARCHAR2(256),
  YEAR               VARCHAR2(10 BYTE),
  WEEK               VARCHAR2(10 BYTE),
  ISINSPECTOUT       VARCHAR2(10 BYTE),
  ZONE               VARCHAR2(20 BYTE),
  CREATEDT           TIMESTAMP(6)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- TMP_IQC_DPPMREPORT  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE QMS.TMP_IQC_DPPMREPORT
(
  CREATEDT  TIMESTAMP(6),
  ROWINDEX  NUMBER,
  ITEM      NVARCHAR2(150),
  SUBINDEX  NUMBER,
  DATEITEM  NVARCHAR2(100),
  CUM       VARCHAR2(32 BYTE),
  YEAR5     VARCHAR2(32 BYTE),
  YEAR4     VARCHAR2(32 BYTE),
  YEAR3     VARCHAR2(32 BYTE),
  YEAR2     VARCHAR2(32 BYTE),
  YEAR1     VARCHAR2(32 BYTE),
  Q1        VARCHAR2(32 BYTE),
  Q2        VARCHAR2(32 BYTE),
  Q3        VARCHAR2(32 BYTE),
  Q4        VARCHAR2(32 BYTE),
  MONTH1    VARCHAR2(32 BYTE),
  MONTH2    VARCHAR2(32 BYTE),
  MONTH3    VARCHAR2(32 BYTE),
  WK1       VARCHAR2(32 BYTE),
  WK2       VARCHAR2(32 BYTE),
  WK3       VARCHAR2(32 BYTE),
  WK4       VARCHAR2(32 BYTE),
  WK5       VARCHAR2(32 BYTE),
  WK6       VARCHAR2(32 BYTE),
  DAY1      VARCHAR2(32 BYTE),
  DAY2      VARCHAR2(32 BYTE),
  DAY3      VARCHAR2(32 BYTE),
  DAY4      VARCHAR2(32 BYTE),
  DAY5      VARCHAR2(32 BYTE),
  DAY6      VARCHAR2(32 BYTE),
  DAY7      VARCHAR2(32 BYTE)
)
ON COMMIT PRESERVE ROWS;


--
-- TMP_IQC_LRRREPORT  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE QMS.TMP_IQC_LRRREPORT
(
  CREATEDT         TIMESTAMP(6),
  ROWINDEX         NUMBER,
  MATERIALTYPEID   VARCHAR2(32 BYTE),
  MATERIALGROUPID  VARCHAR2(32 BYTE),
  MATERIALNAMEID   VARCHAR2(32 BYTE),
  ID               VARCHAR2(32 BYTE),
  ITEM             NVARCHAR2(150),
  SUBINDEX         NUMBER,
  DATEITEM         NVARCHAR2(100),
  CUM              VARCHAR2(32 BYTE),
  YEAR5            VARCHAR2(32 BYTE),
  YEAR4            VARCHAR2(32 BYTE),
  YEAR3            VARCHAR2(32 BYTE),
  YEAR2            VARCHAR2(32 BYTE),
  YEAR1            VARCHAR2(32 BYTE),
  Q1               VARCHAR2(32 BYTE),
  Q2               VARCHAR2(32 BYTE),
  Q3               VARCHAR2(32 BYTE),
  Q4               VARCHAR2(32 BYTE),
  MONTH1           VARCHAR2(32 BYTE),
  MONTH2           VARCHAR2(32 BYTE),
  MONTH3           VARCHAR2(32 BYTE),
  WK1              VARCHAR2(32 BYTE),
  WK2              VARCHAR2(32 BYTE),
  WK3              VARCHAR2(32 BYTE),
  WK4              VARCHAR2(32 BYTE),
  WK5              VARCHAR2(32 BYTE),
  WK6              VARCHAR2(32 BYTE),
  DAY1             VARCHAR2(32 BYTE),
  DAY2             VARCHAR2(32 BYTE),
  DAY3             VARCHAR2(32 BYTE),
  DAY4             VARCHAR2(32 BYTE),
  DAY5             VARCHAR2(32 BYTE),
  DAY6             VARCHAR2(32 BYTE),
  DAY7             VARCHAR2(32 BYTE)
)
ON COMMIT PRESERVE ROWS;


--
-- TMP_IQC_LRRREPORT2  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE QMS.TMP_IQC_LRRREPORT2
(
  CREATEDT         TIMESTAMP(6),
  ROWINDEX         NUMBER,
  MATERIALTYPEID   VARCHAR2(32 BYTE),
  MATERIALGROUPID  VARCHAR2(32 BYTE),
  MATERIALNAMEID   VARCHAR2(32 BYTE),
  ID               VARCHAR2(32 BYTE),
  ITEM             NVARCHAR2(150),
  SUBITEM          NVARCHAR2(150),
  SUBINDEX         NUMBER,
  DATEITEM         NVARCHAR2(150),
  CUM              VARCHAR2(32 BYTE),
  YEAR5            VARCHAR2(32 BYTE),
  YEAR4            VARCHAR2(32 BYTE),
  YEAR3            VARCHAR2(32 BYTE),
  YEAR2            VARCHAR2(32 BYTE),
  YEAR1            VARCHAR2(32 BYTE),
  Q1               VARCHAR2(32 BYTE),
  Q2               VARCHAR2(32 BYTE),
  Q3               VARCHAR2(32 BYTE),
  Q4               VARCHAR2(32 BYTE),
  MONTH1           VARCHAR2(32 BYTE),
  MONTH2           VARCHAR2(32 BYTE),
  MONTH3           VARCHAR2(32 BYTE),
  WK1              VARCHAR2(32 BYTE),
  WK2              VARCHAR2(32 BYTE),
  WK3              VARCHAR2(32 BYTE),
  WK4              VARCHAR2(32 BYTE),
  WK5              VARCHAR2(32 BYTE),
  WK6              VARCHAR2(32 BYTE),
  DAY1             VARCHAR2(32 BYTE),
  DAY2             VARCHAR2(32 BYTE),
  DAY3             VARCHAR2(32 BYTE),
  DAY4             VARCHAR2(32 BYTE),
  DAY5             VARCHAR2(32 BYTE),
  DAY6             VARCHAR2(32 BYTE),
  DAY7             VARCHAR2(32 BYTE)
)
ON COMMIT PRESERVE ROWS;


--
-- TMP_IQC_LRRWEEKLY  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.TMP_IQC_LRRWEEKLY
(
  ID        NVARCHAR2(64),
  ROWINDEX  INTEGER,
  ITEM      NVARCHAR2(128),
  ITEM1     VARCHAR2(64 BYTE),
  ITEM2     VARCHAR2(64 BYTE),
  ITEM3     VARCHAR2(64 BYTE),
  ITEM4     VARCHAR2(64 BYTE),
  ITEM5     VARCHAR2(64 BYTE),
  ITEM6     VARCHAR2(64 BYTE),
  ITEM7     VARCHAR2(64 BYTE),
  ITEM8     VARCHAR2(64 BYTE),
  ITEM9     VARCHAR2(64 BYTE),
  ITEM10    VARCHAR2(64 BYTE),
  ITEM11    VARCHAR2(64 BYTE),
  ITEM12    VARCHAR2(64 BYTE),
  ITEM13    VARCHAR2(64 BYTE),
  ITEM14    VARCHAR2(64 BYTE),
  ITEM15    VARCHAR2(64 BYTE),
  ITEM16    VARCHAR2(64 BYTE),
  ITEM17    VARCHAR2(64 BYTE),
  ITEM18    VARCHAR2(64 BYTE),
  ITEM19    VARCHAR2(64 BYTE),
  ITEM20    VARCHAR2(64 BYTE),
  ITEM21    VARCHAR2(64 BYTE),
  ITEM22    VARCHAR2(64 BYTE),
  ITEM23    VARCHAR2(64 BYTE),
  ITEM24    VARCHAR2(64 BYTE),
  ITEM25    VARCHAR2(64 BYTE),
  ITEM26    VARCHAR2(64 BYTE),
  ITEM27    VARCHAR2(64 BYTE),
  ITEM28    VARCHAR2(64 BYTE),
  ITEM29    VARCHAR2(64 BYTE),
  ITEM30    VARCHAR2(64 BYTE),
  ITEM31    VARCHAR2(64 BYTE),
  ITEM32    VARCHAR2(64 BYTE),
  ITEM33    VARCHAR2(64 BYTE),
  ITEM34    VARCHAR2(64 BYTE),
  ITEM35    VARCHAR2(64 BYTE),
  ITEM36    VARCHAR2(64 BYTE),
  ITEM37    VARCHAR2(64 BYTE),
  ITEM38    VARCHAR2(64 BYTE),
  ITEM39    VARCHAR2(64 BYTE),
  ITEM40    VARCHAR2(64 BYTE),
  ITEM41    VARCHAR2(64 BYTE),
  ITEM42    VARCHAR2(64 BYTE),
  ITEM43    VARCHAR2(64 BYTE),
  ITEM44    VARCHAR2(64 BYTE),
  ITEM45    VARCHAR2(64 BYTE),
  ITEM46    VARCHAR2(64 BYTE),
  ITEM47    VARCHAR2(64 BYTE),
  ITEM48    VARCHAR2(64 BYTE),
  ITEM49    VARCHAR2(64 BYTE),
  ITEM50    VARCHAR2(64 BYTE),
  ITEM51    VARCHAR2(64 BYTE),
  ITEM52    VARCHAR2(64 BYTE),
  ITEM53    VARCHAR2(64 BYTE),
  ITEM54    VARCHAR2(64 BYTE),
  ITEM55    VARCHAR2(64 BYTE),
  ITEM56    VARCHAR2(64 BYTE),
  ITEM57    VARCHAR2(64 BYTE),
  ITEM58    VARCHAR2(64 BYTE),
  ITEM59    VARCHAR2(64 BYTE),
  ITEM60    VARCHAR2(64 BYTE),
  ITEM61    VARCHAR2(64 BYTE),
  ITEM62    VARCHAR2(64 BYTE),
  ITEM63    VARCHAR2(64 BYTE),
  ITEM64    VARCHAR2(64 BYTE),
  ITEM65    VARCHAR2(64 BYTE),
  ITEM66    VARCHAR2(64 BYTE),
  CREATEDT  TIMESTAMP(6)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- TMP_IQC_LRRYMD  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.TMP_IQC_LRRYMD
(
  ID         VARCHAR2(64 BYTE)                  DEFAULT sys_guid(),
  YEAR       VARCHAR2(10 BYTE),
  MONTH      VARCHAR2(10 BYTE),
  WEEK       VARCHAR2(10 BYTE),
  BEGINDATE  DATE,
  ENDDATE    DATE,
  MONTHNAME  VARCHAR2(20 BYTE),
  CREATEDT   TIMESTAMP(6)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

COMMENT ON COLUMN QMS.TMP_IQC_LRRYMD.YEAR IS '年';

COMMENT ON COLUMN QMS.TMP_IQC_LRRYMD.MONTH IS '月';

COMMENT ON COLUMN QMS.TMP_IQC_LRRYMD.WEEK IS '周';

COMMENT ON COLUMN QMS.TMP_IQC_LRRYMD.BEGINDATE IS '周開始時間';

COMMENT ON COLUMN QMS.TMP_IQC_LRRYMD.ENDDATE IS '周結束時間';

COMMENT ON COLUMN QMS.TMP_IQC_LRRYMD.MONTHNAME IS '月的英文簡寫';

COMMENT ON COLUMN QMS.TMP_IQC_LRRYMD.CREATEDT IS '時間戳';


--
-- TMP_IQC_REJECTLIST  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE QMS.TMP_IQC_REJECTLIST
(
  CREATEDT       TIMESTAMP(6),
  DATEITEM       VARCHAR2(150 BYTE),
  AREA           VARCHAR2(60 BYTE),
  SHIFT          VARCHAR2(20 BYTE),
  PRODUCT        VARCHAR2(100 BYTE),
  SUPPLIER       VARCHAR2(150 BYTE),
  PARTNO         VARCHAR2(60 BYTE),
  MATERIALTYPE   VARCHAR2(100 BYTE),
  MATERIALNAME   VARCHAR2(100 BYTE),
  ISSUE          VARCHAR2(3000 BYTE),
  DATECODE       VARCHAR2(200 BYTE),
  CONFIG         VARCHAR2(100 BYTE),
  BATCHQTY       NUMBER,
  SAMPLEQTY      NUMBER,
  FAILQTY        NUMBER,
  FAILURERATE    VARCHAR2(20 BYTE),
  INSPECTRESULT  VARCHAR2(20 BYTE),
  STATUS         VARCHAR2(30 BYTE),
  REMARK         VARCHAR2(500 BYTE),
  ISSUEINDEX     NUMBER                         DEFAULT 0
)
ON COMMIT PRESERVE ROWS;


--
-- TMP_IQC_REJECT_LIST  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE QMS.TMP_IQC_REJECT_LIST
(
  CREATEDT      TIMESTAMP(6),
  DATEITEM      VARCHAR2(150 BYTE),
  PRODUCT       NVARCHAR2(100),
  PARTNO        VARCHAR2(60 BYTE),
  MATERIALNAME  NVARCHAR2(100),
  SUPPLIER      NVARCHAR2(150),
  BATCHQTY      NUMBER,
  SAMPLEQTY     NUMBER,
  FAILQTY       NUMBER,
  FAILURERATE   VARCHAR2(20 BYTE),
  ISSUE         VARCHAR2(3000 BYTE),
  ACTION        VARCHAR2(500 BYTE),
  DRI           VARCHAR2(100 BYTE)
)
ON COMMIT PRESERVE ROWS;


--
-- TMP_IQC_ROHSWAITINGLIST  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE QMS.TMP_IQC_ROHSWAITINGLIST
(
  ID                 VARCHAR2(32 BYTE),
  ROWNUMBER          INTEGER                    DEFAULT 0,
  CTIMESTAMP         TIMESTAMP(6),
  PLANTID            VARCHAR2(10 BYTE),
  PARTNO             VARCHAR2(32 BYTE),
  VENDOR             NVARCHAR2(100),
  MATERIALCODE       VARCHAR2(32 BYTE),
  ITEM               INTEGER                    DEFAULT 0,
  MATERIAL           NVARCHAR2(100),
  ELECMATERIAL       NVARCHAR2(100),
  ELECCOLOR          NVARCHAR2(100),
  ROHSTESTFREQUENCY  INTEGER                    DEFAULT 0,
  ROHSFREQUENCYUNIT  NVARCHAR2(30)              DEFAULT '次/月',
  LASTROHSTESTDT     DATE,
  CURRENTTESTITEM    INTEGER                    DEFAULT 0,
  PARTCATEGORY       NVARCHAR2(100),
  PARTTYPE           NVARCHAR2(100),
  PARTNAME           NVARCHAR2(50),
  DELFLAG            NUMBER(1)                  DEFAULT 0,
  CREATEDT           DATE                       DEFAULT SYSDATE,
  CREATEBY           VARCHAR2(32 BYTE),
  LASTEDITDT         DATE,
  LASTEDITBY         VARCHAR2(32 BYTE),
  VMIVENDOR          NVARCHAR2(100),
  ROHSID             VARCHAR2(32 BYTE),
  GRNO               VARCHAR2(50 BYTE),
  TESTITEMS          VARCHAR2(200 BYTE)
)
ON COMMIT PRESERVE ROWS;


--
-- TMP_IQC_ROHSWAITINGLIST1  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE QMS.TMP_IQC_ROHSWAITINGLIST1
(
  ID                 VARCHAR2(32 BYTE),
  ROWNUMBER          INTEGER                    DEFAULT 0,
  CTIMESTAMP         TIMESTAMP(6),
  PLANTID            VARCHAR2(10 BYTE),
  PARTNO             VARCHAR2(32 BYTE),
  VENDOR             NVARCHAR2(100),
  MATERIALCODE       VARCHAR2(32 BYTE),
  ITEM               INTEGER                    DEFAULT 0,
  MATERIAL           NVARCHAR2(100),
  ELECMATERIAL       NVARCHAR2(100),
  ELECCOLOR          NVARCHAR2(100),
  ROHSTESTFREQUENCY  INTEGER                    DEFAULT 0,
  ROHSFREQUENCYUNIT  NVARCHAR2(30)              DEFAULT '次/月',
  LASTROHSTESTDT     DATE,
  CURRENTTESTITEM    INTEGER                    DEFAULT 0,
  PARTCATEGORY       NVARCHAR2(100),
  PARTTYPE           NVARCHAR2(100),
  PARTNAME           NVARCHAR2(50),
  DELFLAG            NUMBER(1)                  DEFAULT 0,
  CREATEDT           DATE                       DEFAULT SYSDATE,
  CREATEBY           VARCHAR2(32 BYTE),
  LASTEDITDT         DATE,
  LASTEDITBY         VARCHAR2(32 BYTE),
  VMIVENDOR          NVARCHAR2(100),
  ROHSID             VARCHAR2(32 BYTE),
  GRNO               VARCHAR2(50 BYTE)
)
ON COMMIT PRESERVE ROWS;


--
-- TMP_ONLINEDEFECTRATE  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE QMS.TMP_ONLINEDEFECTRATE
(
  CREATEDT  TIMESTAMP(6),
  ROWINDEX  NUMBER,
  SUBINDEX  NUMBER,
  ITEM      NVARCHAR2(150),
  VENDOR    VARCHAR2(150 BYTE),
  COLOR     VARCHAR2(150 BYTE),
  CUM       VARCHAR2(32 BYTE),
  WK        VARCHAR2(32 BYTE),
  DAY1D     VARCHAR2(32 BYTE),
  DAY1N     VARCHAR2(32 BYTE),
  DAY2D     VARCHAR2(32 BYTE),
  DAY2N     VARCHAR2(32 BYTE),
  DAY3D     VARCHAR2(32 BYTE),
  DAY3N     VARCHAR2(32 BYTE),
  DAY4D     VARCHAR2(32 BYTE),
  DAY4N     VARCHAR2(32 BYTE),
  DAY5D     VARCHAR2(32 BYTE),
  DAY5N     VARCHAR2(32 BYTE),
  DAY6D     VARCHAR2(32 BYTE),
  DAY6N     VARCHAR2(32 BYTE),
  DAY7D     VARCHAR2(32 BYTE),
  DAY7N     VARCHAR2(32 BYTE)
)
ON COMMIT PRESERVE ROWS;


--
-- TMP_ONLINEPLATO  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE QMS.TMP_ONLINEPLATO
(
  CREATEDT           TIMESTAMP(6),
  ID                 CHAR(32 BYTE)              DEFAULT sys_guid(),
  ROWINDEX           NUMBER,
  VENDOR             VARCHAR2(150 BYTE),
  DEFECTCODE         VARCHAR2(150 BYTE),
  DEFECTCODENAME     VARCHAR2(150 BYTE),
  DEFECTCODENAMEENG  VARCHAR2(150 BYTE),
  DEFECTQTY          NUMBER
)
ON COMMIT PRESERVE ROWS;


--
-- TMP_OQCCHECKDAILYREPORT  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE QMS.TMP_OQCCHECKDAILYREPORT
(
  ID              VARCHAR2(32 BYTE),
  CREATEDT        TIMESTAMP(6),
  ROWINDEX        NUMBER,
  PAGEINDEX       NUMBER,
  SUBINDEX        NUMBER,
  ITEMNAME        NVARCHAR2(50),
  INSPECTITEM     NVARCHAR2(400),
  COUNTERNO1      VARCHAR2(50 BYTE),
  INSPECTRESULT1  VARCHAR2(10 BYTE),
  LOADTIME1       VARCHAR2(50 BYTE),
  CORRECTACTION1  NVARCHAR2(400),
  CONFIRMRESULT1  NVARCHAR2(400),
  COUNTERNO2      VARCHAR2(50 BYTE),
  INSPECTRESULT2  VARCHAR2(10 BYTE),
  LOADTIME2       VARCHAR2(50 BYTE),
  CORRECTACTION2  NVARCHAR2(400),
  CONFIRMRESULT2  NVARCHAR2(400),
  COUNTERNO3      VARCHAR2(50 BYTE),
  INSPECTRESULT3  VARCHAR2(10 BYTE),
  LOADTIME3       VARCHAR2(50 BYTE),
  CORRECTACTION3  NVARCHAR2(400),
  CONFIRMRESULT3  NVARCHAR2(400),
  CUMTYPE         VARCHAR2(10 BYTE)
)
ON COMMIT PRESERVE ROWS;


--
-- TMP_OQCCHECKPALLETREPORT  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE QMS.TMP_OQCCHECKPALLETREPORT
(
  ID         VARCHAR2(32 BYTE),
  CREATEDT   TIMESTAMP(6),
  ROWINDEX   NUMBER,
  SUBINDEX   NUMBER,
  NO         VARCHAR2(50 BYTE),
  PRODUCT    VARCHAR2(50 BYTE),
  SKU        VARCHAR2(50 BYTE),
  SKU1       VARCHAR2(50 BYTE),
  TPO        VARCHAR2(50 BYTE),
  PALLETNO   VARCHAR2(50 BYTE),
  PALLETNO1  VARCHAR2(50 BYTE),
  QTY        VARCHAR2(50 BYTE)
)
ON COMMIT PRESERVE ROWS;

COMMENT ON COLUMN QMS.TMP_OQCCHECKPALLETREPORT.SKU IS '與sku1合併,表頭放"班次"/"運輸方式"/"板數"/"天氣狀況"/"填表"';

COMMENT ON COLUMN QMS.TMP_OQCCHECKPALLETREPORT.SKU1 IS '與sku合併,表頭放班次/運輸方式/板數/天氣狀況/填表的數據';

COMMENT ON COLUMN QMS.TMP_OQCCHECKPALLETREPORT.PALLETNO IS '與PalletNo1合併';

COMMENT ON COLUMN QMS.TMP_OQCCHECKPALLETREPORT.PALLETNO1 IS '與PalletNo合併,表頭放“貨柜號”/"柜型"/"CustomerPO",及“裝櫃時間”/"裝車車牌"/"棧板狀況"/"審核"的數據';


--
-- TMP_OQCCOMPLAINT_TOPDESC  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE QMS.TMP_OQCCOMPLAINT_TOPDESC
(
  CREATEDT               TIMESTAMP(6),
  ROWINDEX               NUMBER,
  PRODUCT                VARCHAR2(32 BYTE),
  ITEM                   VARCHAR2(10 BYTE),
  ISSUEDESCRIPTIONS      NVARCHAR2(150),
  LINES                  NVARCHAR2(150),
  DPPM                   VARCHAR2(50 BYTE),
  ROOTCAUSEANALYSIS      NVARCHAR2(300),
  CORRECTIVEACTIONLISTS  NVARCHAR2(300),
  DRIS                   NVARCHAR2(50)
)
ON COMMIT PRESERVE ROWS;


--
-- TMP_OQC_FATPCOMPLAINT  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE QMS.TMP_OQC_FATPCOMPLAINT
(
  CREATEDT   TIMESTAMP(6),
  ROWINDEX   NUMBER,
  SUBINDEX   NUMBER,
  ITEMINDEX  NUMBER,
  PRODUCT    VARCHAR2(32 BYTE),
  ITEM       NVARCHAR2(150),
  ISSUEITEM  VARCHAR2(32 BYTE),
  SUBITEM    VARCHAR2(32 BYTE),
  DPPMITEM   VARCHAR2(32 BYTE),
  Q1         VARCHAR2(32 BYTE),
  Q2         VARCHAR2(32 BYTE),
  Q3         VARCHAR2(32 BYTE),
  Q4         VARCHAR2(32 BYTE),
  MONTH1     VARCHAR2(32 BYTE),
  MONTH2     VARCHAR2(32 BYTE),
  MONTH3     VARCHAR2(32 BYTE),
  WK1        VARCHAR2(32 BYTE),
  WK2        VARCHAR2(32 BYTE),
  WK3        VARCHAR2(32 BYTE),
  WK4        VARCHAR2(32 BYTE),
  WK5        VARCHAR2(32 BYTE),
  WK6        VARCHAR2(32 BYTE),
  DAY1       VARCHAR2(32 BYTE),
  DAY2       VARCHAR2(32 BYTE),
  DAY3       VARCHAR2(32 BYTE),
  DAY4       VARCHAR2(32 BYTE),
  DAY5       VARCHAR2(32 BYTE),
  DAY6       VARCHAR2(32 BYTE),
  DAY7       VARCHAR2(32 BYTE)
)
ON COMMIT PRESERVE ROWS;


--
-- TMP_STDEV  (Table) 
--
--   Row Count: 0
CREATE TABLE QMS.TMP_STDEV
(
  TESTVALUE  NUMBER(20,8)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- T_API_LOG  (Table) 
--
--   Row Count: 9
CREATE TABLE QMS.T_API_LOG
(
  ID           VARCHAR2(32 BYTE)                DEFAULT sys_guid(),
  DEVICE_ID    VARCHAR2(50 BYTE),
  ERROR_MSG    VARCHAR2(4000 BYTE),
  CREATE_DATE  DATE                             DEFAULT sysdate,
  PLATFORM     VARCHAR2(50 BYTE)
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- T_TEST  (Table) 
--
--   Row Count: 76
CREATE TABLE QMS.T_TEST
(
  MSG          VARCHAR2(100 BYTE),
  CREATE_DATE  DATE                             DEFAULT sysdate
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );


--
-- USERTEST  (Table) 
--
--   Row Count: 86
CREATE TABLE QMS.USERTEST
(
  USERNAME        VARCHAR2(32 CHAR)             DEFAULT (' '),
  PASSWORD        VARCHAR2(50 CHAR)             DEFAULT (' '),
  NICKNAME        NVARCHAR2(100)                DEFAULT (' '),
  DEPARTMENTNAME  NVARCHAR2(100)                DEFAULT (' '),
  EMAILADDRESS    NVARCHAR2(100)                DEFAULT (' ')
)
TABLESPACE QMS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );
