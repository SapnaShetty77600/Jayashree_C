CREATE TABLE [tbl_Sub_Unit] (
  [Sub_Unit_Id] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [Sub_Unit_Name] VARCHAR (255) CONSTRAINT [Sub_Unit_Name] UNIQUE,
  [Unit_Id] LONG CONSTRAINT [tbl_Unittbl_Sub_Unit] REFERENCES [tbl_Unit] ([Unit_Id]),
  [Display_Seniority] SHORT CONSTRAINT [Display_Seniority] UNIQUE
)
