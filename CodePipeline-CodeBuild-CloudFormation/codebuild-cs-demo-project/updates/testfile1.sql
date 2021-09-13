-- liquibase formatted sql 
--changeset SteveZ:createTable_salesTableA
CREATE TABLE salesTableA (
   ID int NOT NULL,
   NAME varchar(20) NULL,
   REGION varchar(20) NULL,
   MARKET varchar(20) NULL
)
--rollback DROP TABLE salesTableA
--changeset SteveZ:insertInto_salesTableA
INSERT INTO salesTableA (ID, NAME, REGION, MARKET)
VALUES
(0, 'AXV', 'NA', 'LMP'),
(1, 'MKL', 'SA', 'LMP'),
(2, 'POK', 'LA', 'LLA'),
(3, 'DER', 'CA', 'PRA'),
(4, 'BFV', 'PA', 'LMP'),
(5, 'SAW', 'AA', 'LMP'),
(6, 'JUF', 'NY', 'LMP')
--rollback DELETE FROM salesTableA WHERE ID=0
--changeset SteveZ:createTable_CustomerInfo
CREATE TABLE CustomerInfo (CustomerTypeID char(10) NOT NULL, CustomerDesc varchar(25))
--rollback DROP TABLE CustomerInfo
--changeset Martha:addPrimaryKey_pk_CustomerTypeID
ALTER TABLE CustomerInfo ADD CONSTRAINT pk_CustomerTypeID PRIMARY KEY (CustomerTypeID)
--rollback ALTER TABLE CustomerInfo DROP CONSTRAINT pk_CustomerTypeID
--changeset Amy:CustomerInfo_ADD_address context:"QA" labels:"staging,hotfix"
ALTER TABLE CustomerInfo ADD address varchar(255)
--rollback ALTER TABLE CustomerInfo DROP COLUMN address







