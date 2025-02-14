CREATE TABLE [tbl_Combatant_Clothing_Card_Item] (
  [Clothing_Card_Item_Id] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [Combatant_Id] LONG CONSTRAINT [tbl_CombatantCombatant_Clothing_Card_Item] REFERENCES [tbl_Combatant] ([Combatant_Id]),
  [Clothing_Item_Id] LONG CONSTRAINT [Clothing_ItemCombatant_Clothing_Card_Item] REFERENCES [tbl_Clothing_Item] ([Clothing_Item_Id]) ON UPDATE CASCADE  ON DELETE CASCADE ,
  [Date_Of_Issue] DATETIME,
  [Due_Date] DATETIME
)
