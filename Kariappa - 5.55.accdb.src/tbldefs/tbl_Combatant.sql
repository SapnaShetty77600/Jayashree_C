CREATE TABLE [tbl_Combatant] (
  [Combatant_Id] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [Combatant_Army_Number] VARCHAR (255) CONSTRAINT [Combatant_Army_Number] UNIQUE,
  [Combatant_Name] VARCHAR (255),
  [Rank_Id] LONG CONSTRAINT [tbl_Ranktbl_Combatant] REFERENCES [tbl_Rank] ([Rank_Id]),
  [Unit_Id] LONG CONSTRAINT [tbl_Unittbl_Combatant] REFERENCES [tbl_Unit] ([Unit_Id]),
  [Sub_Unit_Id] LONG CONSTRAINT [tbl_Sub_Unittbl_Combatant] REFERENCES [tbl_Sub_Unit] ([Sub_Unit_Id]),
  [Chq_Platoon_Id] LONG,
  [Created_Date] DATETIME
)
