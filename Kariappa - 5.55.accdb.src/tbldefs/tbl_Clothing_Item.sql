CREATE TABLE [tbl_Clothing_Item] (
  [Clothing_Item_Id] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [Clothing_Item_Name] VARCHAR (255) CONSTRAINT [Clothing_Item_Name] UNIQUE,
  [Clothing_Item_Life] VARCHAR (255),
  [Clothing_Item_Qty_Auth] VARCHAR (255),
  [Unit_Id] LONG
)
