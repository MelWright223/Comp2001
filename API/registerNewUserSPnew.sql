SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[addUser](@userId INT, @userFirstName VARCHAR(45), @userLastName VARCHAR(45), @userEmail VARCHAR(45), @userPassword VARCHAR(45), @userUserName VARCHAR(45))
AS 
BEGIN

    BEGIN TRY
    BEGIN TRANSACTION


  
    DECLARE @input_check_user INT
    DECLARE @error_check NVARCHAR(MAX)

    DECLARE @GuestID INT

  
    SET @input_check_user = 0

    SELECT @input_check_user = COUNT(userId)
    FROM dbo.Users
    WHERE userFirstName = @userFirstName AND userLastName = @userLastName AND userEmail = @userEmail AND userPassword = @userPassword AND userUserName = @userUserName


    IF(@input_check_user = 0) BEGIN
      INSERT INTO dbo.Users(userFirstName, userLastName, userEmail, userPassword, userUserName)
    VALUES(@userFirstName, @userLastName, @userEmail, @userPassword, @userUserName)
    
    SET @GuestID =@@IDENTITY
    END
    ELSE
    BEGIN
    SELECT @userId = userId FROM dbo.Users WHERE userFirstName = @userFirstName AND userLastName = @userLastName AND userEmail = @userEmail AND userPassword = @userPassword AND userUserName = @userUserName

    


    IF @@TRANCOUNT > 0
    COMMIT
    END

    IF @@TRANCOUNT > 0 BEGIN
        ROLLBACK TRANSACTION
    END 
    
END TRY

BEGIN CATCH
    SET @error_check = 'Already Exists!' 
    IF @@TRANCOUNT > 0 BEGIN
    ROLLBACK TRANSACTION
    END
    RAISERROR (@error_check, 1,0)

END CATCH
END
GO