SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[userFirstName] [varchar](45) NOT NULL,
	[userLastName] [varchar](45) NOT NULL,
	[userEmail] [varchar](45) NOT NULL,
	[userPassword] [varchar](45) NOT NULL,
	[userUserName] [varchar](45) NULL,
 CONSTRAINT [pk_userID] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[PassChange] on [dbo].[Users]
After UPDATE
AS
BEGIN

IF UPDATE(userPassword)
BEGIN
    DECLARE @userId INT
    DECLARE @oldPass VARCHAR


    SELECT @userId = userId, @oldPass = userPassword From deleted

    INSERT INTO dbo.Passwords (passUserId, passPassword, passDateChange)
    VALUES (@userId, @oldPass, GETDATE())
END

END
GO
ALTER TABLE [dbo].[Users] ENABLE TRIGGER [PassChange]
GO
