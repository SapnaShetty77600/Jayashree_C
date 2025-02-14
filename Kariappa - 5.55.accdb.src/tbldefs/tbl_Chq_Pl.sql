CREATE TABLE [tbl_Chq_Pl] (
  [CHQ_Pl_Id] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [CHQ_Pl_Name] VARCHAR (255),
  [Sub_Unit_Id] LONG CONSTRAINT [tbl_Sub_Unittbl_Chq_Pl] REFERENCES [tbl_Sub_Unit] ([Sub_Unit_Id]),
  [Unit_Id] LONG CONSTRAINT [tbl_Unittbl_Chq_Pl] REFERENCES [tbl_Unit] ([Unit_Id]),
  [Display_Seniority] LONG CONSTRAINT [Display_Seniority] UNIQUE
)
