CREATE TABLE [Users] (
    [UserId]  uniqueidentifier NOT NULL,
    [Email]    NVARCHAR (128) NOT NULL,
    [Password] NVARCHAR (64)  NOT NULL,
    [Address]  NVARCHAR (50)  NOT NULL,
    [Mobile]   NVARCHAR (20)  NOT NULL,
    CONSTRAINT [PK_User] PRIMARY KEY ([UserId])
);
CREATE TABLE [Cars] (
    [CarId]    uniqueidentifier NOT NULL,
    [Type]     NVARCHAR (20) NOT NULL,
    [Make]     NVARCHAR (20) NOT NULL,
    [Model]    NVARCHAR (20) NOT NULL,
    [Colour]   NVARCHAR (20) NOT NULL,
    [Price]    INT           NOT NULL,
    [Year]     INT           NOT NULL,
    [Location] NVARCHAR (50) NOT NULL,
    [User_id]  uniqueidentifier NOT NULL,
    [Buyer_id] INT           NULL,
	 CONSTRAINT [PK_Car] PRIMARY KEY ([CarId]),

    CONSTRAINT [FK_Cars_ToUsers] FOREIGN KEY ([User_id]) REFERENCES [Users] ([UserId])
);
CREATE TABLE [Images] (
    [ImagesId]  uniqueidentifier NOT NULL,
    [Car_id]    uniqueidentifier NOT NULL,
    [Image_url] NVARCHAR (250) NOT NULL,
	CONSTRAINT [PK_Images] PRIMARY KEY ([ImagesId]),
   
    CONSTRAINT [FK_Images_ToCars] FOREIGN KEY ([Car_id]) REFERENCES [Cars] ([CarId])
);


INSERT INTO Users ([UserId],[Email],[Password],[Address],[Mobile])VALUES('561FC9B6-74AB-D604-337F-3D83F8504E01','felis.ullamcorper.viverra@Suspendissenonleo.edu','felis.ullamcorper','5661 Turpis. St.','0722112233');
INSERT INTO Users ([UserId],[Email],[Password],[Address],[Mobile])VALUES('E5C24E7A-A819-1E62-E37C-0700402A1B8C','Proin@dictumeu.co.uk','Proin','P.O. Box 361, 8723 At, Street','0744665544');
INSERT INTO Users ([UserId],[Email],[Password],[Address],[Mobile])VALUES('CEBF5C68-9DAB-3590-3E11-E01DFEE0CAB7','cursus.diam.at@nunc.org','cursus.diam.at','510-559 Ante St.','0733998877');

INSERT INTO Cars([CarId],[Type],[Make],[Model],[Colour],[Price],[Year],[Location],[User_id],[Buyer_id])VALUES('6DEB815A-5F4B-D7A5-8571-168AB1DA8E67','Sedan','Audi','A6','Blue','58000','2016','Cluj-Napoca','561FC9B6-74AB-D604-337F-3D83F8504E01',NULL);
INSERT INTO Cars([CarId],[Type],[Make],[Model],[Colour],[Price],[Year],[Location],[User_id],[Buyer_id])VALUES('7FF26F6F-CA03-FD5B-993C-CB0F2FD6F9B8','Cabrio','Opel','Astra','Red','25000','2017','Turda','E5C24E7A-A819-1E62-E37C-0700402A1B8C',NULL);
INSERT INTO Cars([CarId],[Type],[Make],[Model],[Colour],[Price],[Year],[Location],[User_id],[Buyer_id])VALUES('5588EDAA-8B4A-21EC-6E09-AC366C60BE28','Sport','Bmw','Z3','White','62000','2015','Dej','CEBF5C68-9DAB-3590-3E11-E01DFEE0CAB7',NULL);

SELECT *
FROM Users

SELECT UserId,Email,Address
FROM Users

SELECT DISTINCT Email
FROM Users

SELECT COUNT(DISTINCT Email)
FROM Users

SELECT DISTINCT Email,Address
FROM Users
ORDER BY Email

SELECT Email,Address,Mobile
FROM Users
WHERE Mobile='0744665544'

SELECT Email,Address,Mobile
FROM Users
WHERE Email LIKE'%lis%'

SELECT *
FROM Users u
INNER JOIN Cars c on c.User_id=u.UserId

SELECT Email,Address,Mobile
FROM Users u
INNER JOIN Cars c on c.User_id=u.UserId

SELECT Email,Address,Mobile
FROM Users u
LEFT JOIN Cars c on c.User_id=u.UserId

DECLARE @MyMsg NVARCHAR(50) = 'Hello, World.'
SELECT @MyMsg




