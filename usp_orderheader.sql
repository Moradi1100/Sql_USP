
	CREATE PROCEDURE usp_InsertOrderHeaderByOrderHeaderID
(
	@OrderHeaderID int,
	@CustomerID_FK int,
	@StaffID_FK smallint,
	@OrdreDate date,
	@Status bit,
	@Comment nvarchar (400) 
)
AS
SET NOCOUNT ON; 
BEGIN
	INSERT INTO OrderHeader (OrderHeaderID ,CustomerID_FK ,StaffID_FK ,OrdreDate ,[Status],Comment) 
		VALUES (@OrderHeaderID ,@CustomerID_FK ,@StaffID_FK ,@OrdreDate ,@Status,@Comment)
END
GO

CREATE PROCEDURE usp_UpdateOrderHeaderByOrderHeaderID
(
	@OrderHeaderID int,
	@CustomerID_FK int,
	@StaffID_FK smallint,
	@OrdreDate date,
	@Status bit,
	@Comment nvarchar (400) 
)
AS
SET NOCOUNT ON; 
BEGIN
	UPDATE OrderHeader
	SET 
	CustomerID_FK=@CustomerID_FK ,
	StaffID_FK=@StaffID_FK ,
	OrdreDate=@OrdreDate ,
	[Status]=@Status,
	Comment=@Comment
		
	WHERE OrderHeaderID=@OrderHeaderID
END
GO
CREATE PROCEDURE usp_DeleteOrderHeaderByOrderHeaderID
(
	@OrderHeaderID int
)
AS
SET NOCOUNT ON; 
        BEGIN
            DELETE FROM OrderHeader
            WHERE  OrderHeaderID=@OrderHeaderID
        END
GO
CREATE PROCEDURE usp_SelectOrderHeader
AS
SET NOCOUNT ON; 
        BEGIN
				SELECT OH.OrderHeaderID,OH.CustomerID_FK,OH.StaffID_FK,OH.OrdreDate,OH.Status,OH.Comment
				FROM OrderHeader AS OH
        END