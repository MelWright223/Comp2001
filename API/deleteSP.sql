SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[deleteUser](
    @userId INT
    
)

AS BEGIN
DELETE FROM dbo.Users
WHERE @userId = userId


END
GO
