USE  [OnlineShop]
GO
/****** Object:  StoredProcedure [dbo].[ADMIN_CHANGE_PASSWORD]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ADMIN_CHANGE_PASSWORD] 
	@NAME AS NVARCHAR(200),
	@PASSWORD AS NVARCHAR(200)
	
AS
BEGIN
UPDATE ADMINMST SET Password=@PASSWORD WHERE IID=1

	
END
GO
/****** Object:  StoredProcedure [dbo].[ADMIN_DELETE]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ADMIN_DELETE] 
	@ID AS INT
	
	
AS
BEGIN
DELETE FROM ADMINMST WHERE IID=@ID;

	
END
GO
/****** Object:  StoredProcedure [dbo].[ADMIN_INSERT]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ADMIN_INSERT] 
	
	@USERNAME AS NVARCHAR(200),
	@PASSWORD AS NVARCHAR(200)
	
AS
BEGIN
INSERT INTO ADMINMST VALUES(@USERNAME,@PASSWORD);

	
END
GO
/****** Object:  StoredProcedure [dbo].[ADMIN_LOGIN]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ADMIN_LOGIN] 
	
	@USERNAME AS NVARCHAR(200),
	@PASSWORD AS NVARCHAR(200)
	
AS
BEGIN

SELECT * FROM AdminMst WHERE Username=@USERNAME AND Password=@PASSWORD;

	
END
GO
/****** Object:  StoredProcedure [dbo].[ADMIN_SELECT]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ADMIN_SELECT] 
	
	
AS
BEGIN
SELECT * FROM ADMINMST 

	
END
GO
/****** Object:  StoredProcedure [dbo].[CATEMST_DELETE]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CATEMST_DELETE] 
	@ID AS INT
	
	
AS
BEGIN
DELETE FROM CateMst WHERE CID=@ID;

	
END
GO
/****** Object:  StoredProcedure [dbo].[CATEMST_INSERT]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CATEMST_INSERT]
@CNAME AS NVARCHAR(200)
AS
BEGIN
   INSERT INTO CateMst VALUES (@CNAME);
   END
GO
/****** Object:  StoredProcedure [dbo].[CATEMST_SELECT]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CATEMST_SELECT] 
	
	
	
	
AS
BEGIN
SELECT * FROM CATEMST;

	
END
GO
/****** Object:  StoredProcedure [dbo].[CATEMST_UPADATE]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CATEMST_UPADATE]
        @CID AS INT ,
        @CNAME AS NVARCHAR(200)
	
	
AS
BEGIN
UPDATE CateMst SET CNAME=@CNAME WHERE CID=@CID;

	
END
GO
/****** Object:  StoredProcedure [dbo].[FEEDBACKMSTR_DELETE]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FEEDBACKMSTR_DELETE] 
	@FID AS INT
	
	
AS
BEGIN
DELETE FROM FEEDBACKMSTR WHERE FID=@FID;

	
END
GO
/****** Object:  StoredProcedure [dbo].[FEEDBACKMSTR_INSERT]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FEEDBACKMSTR_INSERT]
@UNAME AS NVARCHAR(256),@MESSAGE AS NVARCHAR(256),@ENTRYDATE AS DATETIME
AS
BEGIN 
INSERT INTO Feedbackmstr VALUES(@UNAME,@MESSAGE,@ENTRYDATE);
END
GO
/****** Object:  StoredProcedure [dbo].[FEEDBACKMSTR_SELECT]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FEEDBACKMSTR_SELECT]
	
	
AS
BEGIN
SELECT * FROM FEEDBACKMSTR;
END
GO
/****** Object:  StoredProcedure [dbo].[FEEDBACKMSTR_UPADATE]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FEEDBACKMSTR_UPADATE]
        @FID AS INT ,
        @UNAME AS NVARCHAR(256),
        @MESSAGE AS NVARCHAR(256),
        @ENTRYDATE AS NVARCHAR(256)
	
	
AS
BEGIN
UPDATE FEEDBACKMSTR SET UNAME=@UNAME,MESSAGE=@MESSAGE,ENTRYDATE=@ENTRYDATE WHERE FID=@FID;

	
END
GO
/****** Object:  StoredProcedure [dbo].[ITEM_DELETE]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ITEM_DELETE] 
	@IID AS INT
	
	
AS
BEGIN
DELETE FROM ItemMst WHERE IID=@IID

	
END
GO
/****** Object:  StoredProcedure [dbo].[ITEM_INSERT]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ITEM_INSERT]
@NAME AS NVARCHAR(256),@DETAIL AS NVARCHAR(256),
@PRICE AS FLOAT,@IMg as NVARCHAR(500),
@qnt AS INT,@CNAME AS NVARCHAR(256),
@img1 AS NVARCHAR(500),@img2 AS NVARCHAR(500),
@size as int
as
BEGIN
     INSERT INTO ItemMst VALUES(@NAME,@DETAIL,@PRICE,@IMg,@qnt,@qnt,0,@CNAME,GETDATE(),@img1,@img2,@size);
END
GO
/****** Object:  StoredProcedure [dbo].[ITEM_SELECT]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ITEM_SELECT]
	
	
AS
BEGIN
SELECT * FROM ItemMst 
END
GO
/****** Object:  StoredProcedure [dbo].[ITEM_SELECT_BY_CNAME]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ITEM_SELECT_BY_CNAME]

@cname as nvarchar(256)	
	
AS
BEGIN
SELECT * FROM ItemMst where CName = @cname
END
GO
/****** Object:  StoredProcedure [dbo].[ITEM_SELECT_FOR_SELL]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ITEM_SELECT_FOR_SELL]

@INAME AS NVARCHAR(256),
@QNT AS INT

AS
BEGIN
	UPDATE ItemMst SET AQnt=AQnt-@QNT,SQnt=SQnt+@QNT WHERE IName=@INAME
END
GO
/****** Object:  StoredProcedure [dbo].[ITEM_SELECT_IID]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ITEM_SELECT_IID]
	
	@IID AS INT
	
AS
BEGIN
SELECT * FROM ItemMst  WHERE IID=@IID
END
GO
/****** Object:  StoredProcedure [dbo].[ITEM_SELECT_Iname]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ITEM_SELECT_Iname]
@iname as nvarchar(256)
as
begin
select * from ItemMst where IName=@iname
end
GO
/****** Object:  StoredProcedure [dbo].[ITEM_SELECT_SEARCH]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[ITEM_SELECT_SEARCH]

@name as nvarchar(256)	
	
AS
BEGIN
SELECT * FROM ItemMst where iname like @name
END
GO
/****** Object:  StoredProcedure [dbo].[ITEM_SELECT_TOP7]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ITEM_SELECT_TOP7]
	
	
AS
BEGIN
SELECT top 7 * FROM ItemMst order by newid()
END
GO
/****** Object:  StoredProcedure [dbo].[ITEM_SELECT_TOP8]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[ITEM_SELECT_TOP8]
	
	
AS
BEGIN
SELECT top 8 * FROM ItemMst order by newid()
END
GO
/****** Object:  StoredProcedure [dbo].[ITEM_UP]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ITEM_UP]
@IID AS INT,
@INAME AS NVARCHAR(256),
@PRICE AS FLOAT
AS
BEGIN
      UPDATE ItemMst set IName=@INAME,PRICE=@PRICE WHERE IID=@IID
	  END
GO
/****** Object:  StoredProcedure [dbo].[ITEM_UPDATE]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ITEM_UPDATE]
@IID AS INT,
@NAME AS NVARCHAR(256),
@DETAIL AS NVARCHAR(256),
@PRICE AS FLOAT
AS 
BEGIN 
UPDATE ItemMst SET INAME=@NAME,DETAIL=@DETAIL,PRICE=@PRICE WHERE IID=@IID
END
GO
/****** Object:  StoredProcedure [dbo].[ITEM_UPDATE_QNT]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ITEM_UPDATE_QNT]
@IID AS INT,
@QNT AS INT

AS 
BEGIN
UPDATE ItemMst SET QNT=QNT+@QNT,AQnt=AQnt+@QNT WHERE IID=@IID
END
GO
/****** Object:  StoredProcedure [dbo].[ITEM_UPDATE_SELL]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ITEM_UPDATE_SELL]

@iname as nvarchar(256),
@QNT AS INT
AS
BEGIN
UPDATE ItemMst SET AQnt=AQnt-@QNT, SQnt=SQnt+@QNT WHERE IName=@iname
end
GO
/****** Object:  StoredProcedure [dbo].[ITEMMST_ADDITEMQUANTITY]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ITEMMST_ADDITEMQUANTITY]

@IID AS INT,
@QNT AS INT

AS 
BEGIN
UPDATE ItemMst SET QNT=QNT+@QNT,AQnt=AQnt+@QNT WHERE IID=@IID
END
GO
/****** Object:  StoredProcedure [dbo].[ORDER_DELETE]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ORDER_DELETE]
@ID AS INT 

AS
BEGIN
DELETE FROM OrderMst WHERE OID=@ID;
END
GO
/****** Object:  StoredProcedure [dbo].[ORDER_SELECT]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ORDER_SELECT] 
AS
BEGIN
SELECT * FROM OrderMst
END
GO
/****** Object:  StoredProcedure [dbo].[ORDER_SELECT_BY_OID]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ORDER_SELECT_BY_OID]
@oid as int
AS
BEGIN
SELECT * FROM OrderMst WHERE OID=@oid
END
GO
/****** Object:  StoredProcedure [dbo].[ORDER_SELECT_BY_UNAME]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ORDER_SELECT_BY_UNAME]
@uname as nvarchar(256)
as
begin
select * from OrderMst where Uname=@uname
end
GO
/****** Object:  StoredProcedure [dbo].[ORDER_SELECT_BY_Uname_ITEM]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ORDER_SELECT_BY_Uname_ITEM]
@uname as NVARCHAR(256),
@iname as nvarchar(256)
as
begin
select * from OrderMst where Uname=@uname and Iname=@iname and Status=0
end
GO
/****** Object:  StoredProcedure [dbo].[ORDER_SELECT_BY_Uname_Status]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ORDER_SELECT_BY_Uname_Status]
@uname as nvarchar(256),
@status as int
as
begin
select * from OrderMst where Uname=@uname and Status=@status
end
GO
/****** Object:  StoredProcedure [dbo].[ORDER_SELECT_distinct_uname]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[ORDER_SELECT_distinct_uname]
as
BEGIN
SELECT distinct UNAME FROM OrderMst;
END
GO
/****** Object:  StoredProcedure [dbo].[ORDER_SELECT_TOTAL_AMT_PAY]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ORDER_SELECT_TOTAL_AMT_PAY]
@uname as nvarchar(256)
as
begin 
select sum(tprice) as tprice from OrderMst where Status=0 and uname=@uname
end
GO
/****** Object:  StoredProcedure [dbo].[ORDER_UPDATE]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ORDER_UPDATE]
        @OID AS INT ,
        @INAME AS NVARCHAR(256),
        @QNT AS INT,
        @PRICE AS FLOAT,
        @TPRICE AS INT,
        @STATUS AS INT,
        @ENTRYDATE AS DATETIME
	
	
AS
BEGIN
UPDATE OrderMst SET INAME=@INAME,QNT=@QNT,PRICE=@PRICE,TPRICE=@TPRICE,STATUS=@STATUS,ENTRYDATE=@ENTRYDATE WHERE OID=@OID;

	
END
GO
/****** Object:  StoredProcedure [dbo].[ORDER_UPDATE_CART]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ORDER_UPDATE_CART]
@oid as int,
@qnt as int, 
@tprice as float
as
begin
update OrderMst set Qnt=Qnt+@qnt,TPrice=TPrice+@tprice where OID=@oid
end
GO
/****** Object:  StoredProcedure [dbo].[ORDER_UPDATE_CART_ALREADY_ADD]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ORDER_UPDATE_CART_ALREADY_ADD]
@oid as int,
@qnt as int,
@tprice as float
as
BEGIN
UPDATE OrderMst SET Qnt=@qnt,TPrice=@tprice WHERE OID=@oid
END
GO
/****** Object:  StoredProcedure [dbo].[ORDER_UPDATE_STATUS_BY_NAME]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ORDER_UPDATE_STATUS_BY_NAME]
@uname as nvarchar(256),
@status as int
as
begin
update OrderMst set Status=@status where Uname=@uname and Status=0
end
GO
/****** Object:  StoredProcedure [dbo].[ORDERMST_INSERT]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ORDERMST_INSERT] 
	@UNAME AS NVARCHAR(256),
	@INAME AS NVARCHAR(256),
	@QNT AS NVARCHAR(256),
	@PRICE AS NVARCHAR(256),
	@TPRICE  AS NVARCHAR(256),
	@STATUS AS NVARCHAR(256),
 
@img as nvarchar(500)



	
	
AS
BEGIN
INSERT INTO OrderMst VALUES(@UNAME,@INAME,@QNT,@PRICE,@TPRICE,@STATUs,getdate(),@img);

	
END
GO
/****** Object:  StoredProcedure [dbo].[PAYMENT_SELECT_for_distict_uname]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PAYMENT_SELECT_for_distict_uname]
as                
begin
select distinct UNAME from PaymentMst;
END
GO
/****** Object:  StoredProcedure [dbo].[PAYMENT_SELECT_for_distinct_uname]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PAYMENT_SELECT_for_distinct_uname]
as
begin
select distinct UNAME from PaymentMst;
END
GO
/****** Object:  StoredProcedure [dbo].[PAYMENTMST_DELETE]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[PAYMENTMST_DELETE]
@PID AS INT 
AS
BEGIN
DELETE FROM PaymentMst WHERE PID=@PID;
END
GO
/****** Object:  StoredProcedure [dbo].[PAYMENTMST_INSERT]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PAYMENTMST_INSERT]
@UNAME AS NVARCHAR(256),
@AMOUNT AS FLOAT,
@TYPE AS NVARCHAR(256),
@BANK AS NVARCHAR(256),
@BRANCH AS NVARCHAR(256),
@CARDNO AS NVARCHAR(256),
@CVV as int,
@ENTRYDATE DATETIME
AS
BEGIN 

--declare @CVV int
--set @CVV = @CVV
INSERT INTO PaymentMst VALUES(@UNAME,@AMOUNT,@TYPE,@BANK,@BRANCH,@CARDNO,@CVV,@ENTRYDATE);
END
GO
/****** Object:  StoredProcedure [dbo].[PAYMENTMST_INSERT123]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROC [dbo].[PAYMENTMST_INSERT123]
@UNAME AS NVARCHAR(256),
@AMOUNT AS FLOAT,
@TYPE AS NVARCHAR(256),
@BANK AS NVARCHAR(256),
@BRANCH AS NVARCHAR(256),
@CARDNO AS NVARCHAR(256),
@CVV as int,
@ENTRYDATE DATETIME
AS
BEGIN 
INSERT INTO PaymentMst VALUES(@UNAME,@AMOUNT,@TYPE,@BANK,@BRANCH,@CARDNO,@CVV,@ENTRYDATE);
END
GO
/****** Object:  StoredProcedure [dbo].[PAYMENTMST_SELECT]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PAYMENTMST_SELECT] 
AS
BEGIN
SELECT * FROM PaymentMst;
END
GO
/****** Object:  StoredProcedure [dbo].[PAYMENTMST_SELECT_BY_Uname]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[PAYMENTMST_SELECT_BY_Uname]
@uname as nvarchar(256)
as
begin
select * from PaymentMst where Uname=@uname
end
GO
/****** Object:  StoredProcedure [dbo].[PAYMENTMST_UPDATE]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PAYMENTMST_UPDATE]
@PID AS INT,
@UNAME AS NVARCHAR(256),
@AMOUNT AS FLOAT,
@TYPE AS NVARCHAR(256),
@ENTRYDATE AS DATETIME
AS
BEGIN
UPDATE PaymentMst SET Uname=@UNAME,Amount=@AMOUNT,type=@TYPE,EntryDate=@ENTRYDATE where PID=@PID;
end
GO
/****** Object:  StoredProcedure [dbo].[USER_DELETE]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[USER_DELETE]
@UID AS INT
AS
BEGIN
DELETE FROM UserMst WHERE UID=@UID
END
GO
/****** Object:  StoredProcedure [dbo].[USER_INSERT]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USER_INSERT]
@NAME AS NVARCHAR(256),
@SURNAME AS NVARCHAR(256),
@ADD AS NVARCHAR(256),
@CITY AS NVARCHAR(256),
@PIN AS NVARCHAR(256),
@MOB AS NVARCHAR(256),
@EMAIL AS NVARCHAR(256),
@PASS AS NVARCHAR(256)
AS
BEGIN 
INSERT INTO UserMst VALUES(@NAME,@SURNAME,@ADD,@CITY,@PIN,@MOB,@EMAIL,@PASS,GETDATE())
END
GO
/****** Object:  StoredProcedure [dbo].[USER_SELECT]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USER_SELECT]
	

	
AS
BEGIN
SELECT * FROM UserMst
END
GO
/****** Object:  StoredProcedure [dbo].[USER_SELECT_by_email]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USER_SELECT_by_email]
@email as nvarchar(256)
as
BEGIN
select * from UserMst where Email=@email
END
GO
/****** Object:  StoredProcedure [dbo].[USER_SELECT_by_UID]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USER_SELECT_by_UID]
	
@UID AS INT
	
AS
BEGIN
SELECT * FROM UserMst WHERE UID=@UID
END
GO
/****** Object:  StoredProcedure [dbo].[USER_SELECT_FOR_FORGOT_PASS]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[USER_SELECT_FOR_FORGOT_PASS]
@email as nvarchar(256),
@mobile as nvarchar(256)
as
begin
select *from UserMst where Email=@email and Mobile=@mobile
end
GO
/****** Object:  StoredProcedure [dbo].[USER_SELECT_FOR_LOGIN]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USER_SELECT_FOR_LOGIN]
@UNAME AS NVARCHAR(256),
@UPASS AS NVARCHAR(256)	
AS
BEGIN
SELECT * FROM UserMst WHERE Email=@UNAME AND Password=@UPASS
END
GO
/****** Object:  StoredProcedure [dbo].[USER_UPDATE]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc  [dbo].[USER_UPDATE]
@UID AS INT,
@NAME AS NVARCHAR(256),
@SURNAME AS NVARCHAR(256),
@ADD AS NVARCHAR(256),
@CITY AS NVARCHAR(256),
@PIN AS NVARCHAR(256),
@MOB AS NVARCHAR(256)
AS
BEGIN 
UPDATE UserMst SET Name=@NAME, Surname=@SURNAME,Address=@ADD,City=@CITY,Pincode=@PIN,Mobile=@MOB WHERE UID=@UID
END
GO
/****** Object:  StoredProcedure [dbo].[USER_UPDATE_PASSWORD]    Script Date: 02-12-2022 14:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USER_UPDATE_PASSWORD]
	
	@email as nvarchar(256),
@PASS AS NVARCHAR(256)
AS
BEGIN
UPDATE UserMst SET Password=@PASS WHERE Email=@email
END
GO
