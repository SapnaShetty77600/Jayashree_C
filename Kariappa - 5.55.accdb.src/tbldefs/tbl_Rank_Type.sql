CREATE TABLE [tbl_Rank_Type] (
  [Rank_Type_Id] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [Rank_Type_Name] VARCHAR (255) CONSTRAINT [Rank_Type_Name] UNIQUE,
  [Regular_Expression] VARCHAR (255),
  [Created_Date] DATETIME
)
