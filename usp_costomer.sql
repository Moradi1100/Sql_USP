CREATE PROCEDURE usp_InsertCustomerByCustomerID
(
	@CustomerID int ,
	@FName nvarchar(30) ,
	@LName nvarchar(30) ,
	@NationalCode varchar(10) ,
	@phone varchar(10) ,
	@mobile varchar(10) ,
	@City nvarchar(20) ,
	@Town nvarchar(30) ,
	@Address varchar(80) 
)
AS
SET NOCOUNT ON; 
BEGIN
	INSERT INTO Customer (CustomerID,FName,LName,NationalCode,phone,mobile,City,Town,Address) 
		VALUES (@CustomerID,@FName,@LName,@NationalCode,@phone,@mobile,@City,@Town,@Address)
END
GO

CREATE PROCEDURE usp_UpdateCustomerByCustomerID
(
	@CustomerID int ,
	@FName nvarchar(30) ,
	@LName nvarchar(30) ,
	@NationalCode varchar(10) ,
	@phone varchar(10) ,
	@mobile varchar(10) ,
	@City nvarchar(20) ,
	@Town nvarchar(30) ,
	@Address varchar(80) 
)
AS
SET NOCOUNT ON; 
BEGIN
	UPDATE Customer
	SET 
		CustomerID =@CustomerID
		,FName=@FName
		,LName=@LName
		,NationalCode=@NationalCode
		,phone=@phone
		,mobile=@mobile
		,City=@City
		,Town=@Town
		,Address= @Address
		
	WHERE CustomerID=@CustomerID
END
GO
CREATE PROCEDURE usp_DeleteCustomerByCustomerID
(
	@CustomerID INT
)
AS
SET NOCOUNT ON; 
        BEGIN
            DELETE FROM Customer
            WHERE  CustomerID=@CustomerID
        END
GO

CREATE PROCEDURE usp_SelectCustomer
AS
SET NOCOUNT ON; 
        BEGIN
				SELECT C.CustomerID,C.FName,C.LName,C.NationalCode,C.mobile,C.phone,C.City,C.Town,C.Address
				FROM Customer AS C
        END