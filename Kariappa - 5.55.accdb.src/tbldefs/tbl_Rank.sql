CREATE TABLE [tbl_Rank] (
  [Rank_Id] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [Rank_Name] VARCHAR (255) CONSTRAINT [Rank_Name] UNIQUE,
  [Unit_Id] LONG CONSTRAINT [tbl_Unittbl_Rank] REFERENCES [tbl_Unit] ([Unit_Id]),
  [Display_Seniority] LONG CONSTRAINT [Display_Seniority] UNIQUE,
  [Rank_Type] LONG
)
