
	CREATE PROCEDURE usp_InsertContractByContractID
(
	@ContractID smallint,
	@StaffID_FK int,
	@ContractFile varbinary,
	@Commission tinyint
)
AS
SET NOCOUNT ON; 
BEGIN
	INSERT INTO Contracts(ContractID ,StaffID_FK,ContractFile,Commission  ) 
		VALUES (@ContractID ,@StaffID_FK,@ContractFile,@Commission )
END
GO

CREATE PROCEDURE usp_UpdateContractByContractID
(
	@ContractID smallint,
	@StaffID_FK int,
	@ContractFile varbinary,
	@Commission tinyint
)
AS
SET NOCOUNT ON; 
BEGIN
	UPDATE Contracts
	SET 
		
		StaffID_FK  =@StaffID_FK ,
		ContractFile=@ContractFile,
		Commission  =@Commission 
		
	WHERE ContractID  =@ContractID
END
GO
CREATE PROCEDURE usp_DeleteContractByContractID
(
	@ContractID smallint
)
AS
SET NOCOUNT ON; 
        BEGIN
            DELETE FROM Contracts
            WHERE ContractID  = @ContractID
        END
GO
CREATE PROCEDURE usp_SelectContract
AS
SET NOCOUNT ON; 
        BEGIN
				SELECT ContractID ,StaffID_FK,ContractFile,Commission  
				FROM Contracts
        END