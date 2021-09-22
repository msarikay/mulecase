USE [Orders]
GO

/****** Object:  Table [dbo].[OrderHeader]    Script Date: 9/22/2021 11:12:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrderHeader](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Orderid] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_OrderHeader] PRIMARY KEY CLUSTERED 
(
	[Orderid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


