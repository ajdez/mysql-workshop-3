--NEW FILE
CREATE DATABASE decodemtl_addressbook;

CREATE TABLE Account(
    id          INT             AUTO_INCREMENT      PRIMARY KEY,
    email       VARCHAR(255),
    password    VARCHAR(40),
    createdOn   DATETIME,
    modifiedOn  DATETIME
);

CREATE TABLE AddressBook(
    id          INT             AUTO_INCREMENT      PRIMARY KEY,
    accountId  INT             REFERENCES Acount(id),
    name        VARCHAR(255),
    createdOn   DATETIME,
    modifiedOn  DATETIME
);

CREATE TABLE Entry(
    id                  INT             AUTO_INCREMENT          PRIMARY KEY,
    addressBookId       INT             REFERENCES AddressBook(id),
    firstName           VARCHAR(40),
    lastName            VARCHAR(40),
    birthday            DATETIME,
    type                ENUM ("home", "work", "other")
);

CREATE TABLE Phone(
    id          INT         AUTO_INCREMENT          PRIMARY KEY,
    entryId     INT         REFERENCES Entry(id),
    type        ENUM('home','work','other'),
    subtype     ENUM('landline', 'cellular', 'fax'),
    content     VARCHAR(255)
);

CREATE TABLE Address (
    id              INT         AUTO_INCREMENT          PRIMARY KEY,
    entryId         INT         REFERENCES Entry(id),
    type            ENUM("home", "work", "other"),
    addressLine1    VARCHAR(255),
    addressLine2    VARCHAR(255),
    city            VARCHAR(255),
    province        VARCHAR(128),
    country         VARCHAR(128),
    postalCode      VARCHAR(10)
);

CREATE TABLE ElectronicMail(
    id              INT             AUTO_INCREMENT      PRIMARY KEY,
    entryId         INT             REFERENCES Entry(id),
    type            ENUM("home", "work", "other"),
    content         VARCHAR(255)
);