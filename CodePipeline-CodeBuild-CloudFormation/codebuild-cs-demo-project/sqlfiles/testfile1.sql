-- liquibase formatted sql 
--changeset AmyS:createTable_salesTableA
CREATE TABLE salesTableA (
   ID int NOT NULL,
   NAME varchar(20) NULL,
   REGION varchar(20) NULL,
   MARKET varchar(20) NULL
);
--rollback DROP TABLE salesTableA







