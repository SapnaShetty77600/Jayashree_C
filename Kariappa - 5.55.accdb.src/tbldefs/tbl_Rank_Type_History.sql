CREATE TABLE [tbl_Rank_Type_History] (
  [History_Id] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [Rank_Type_Id] LONG,
  [Rank_Type_Name] VARCHAR (255),
  [Date_Modified] DATETIME
)
