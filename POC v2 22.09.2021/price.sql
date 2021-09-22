USE [MasterData]
GO

/****** Object:  Table [dbo].[price]    Script Date: 9/22/2021 11:10:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[price](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sellprice] [varchar](255) NULL,
	[IsActive] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[productnumber] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[price]  WITH CHECK ADD  CONSTRAINT [FK_price2_products2] FOREIGN KEY([productnumber])
REFERENCES [dbo].[products] ([productnumber])
GO

ALTER TABLE [dbo].[price] CHECK CONSTRAINT [FK_price2_products2]
GO


