USE [Orders]
GO

/****** Object:  Table [dbo].[OrderDetail]    Script Date: 9/22/2021 11:12:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Orderid] [int] NULL,
	[productnumber] [int] NOT NULL,
	[productqty] [varchar](255) NULL,
	[sellprice] [varchar](255) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_OrderHeader] FOREIGN KEY([Orderid])
REFERENCES [dbo].[OrderHeader] ([Orderid])
GO

ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_OrderHeader]
GO


