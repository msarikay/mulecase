USE [MasterData]
GO

/****** Object:  Table [dbo].[products]    Script Date: 9/22/2021 11:11:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productname] [varchar](255) NULL,
	[productnumber] [int] NOT NULL,
	[IsActive] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK__products__3213E83F439DECC3] PRIMARY KEY CLUSTERED 
(
	[productnumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products2_products2] FOREIGN KEY([productnumber])
REFERENCES [dbo].[products] ([productnumber])
GO

ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products2_products2]
GO


