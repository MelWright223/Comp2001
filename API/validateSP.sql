SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[validateUser](
    @username VARCHAR(MAX),
    @password VARCHAR(MAX)
)

AS BEGIN
SELECT userUserName, userPassword From dbo.Users
WHERE userUserName = @username AND userPassword = @password

END
GO
