SELECT
  tbl_Combatant_Clothing_Card_Item.Combatant_Id,
  tbl_Combatant.Combatant_Army_Number,
  tbl_Rank.Rank_Name,
  tbl_Combatant.Combatant_Name,
  tbl_Combatant_Clothing_Card_Item.Clothing_Card_Item_Id,
  tbl_Combatant_Clothing_Card_Item.Clothing_Item_Id,
  tbl_Clothing_Item.Clothing_Item_Name,
  tbl_Clothing_Item.Clothing_Item_Life,
  tbl_Combatant_Clothing_Card_Item.Date_Of_Issue,
  tbl_Combatant_Clothing_Card_Item.Due_Date,
  tbl_Sub_Unit.Sub_Unit_Name,
  tbl_Chq_Pl.CHQ_Pl_Name,
  tbl_Unit.Unit_Name
FROM
  tbl_Sub_Unit
  INNER JOIN (
    tbl_Rank
    INNER JOIN (
      (
        tbl_Chq_Pl
        INNER JOIN tbl_Combatant ON tbl_Chq_Pl.CHQ_Pl_Id = tbl_Combatant.Chq_Platoon_Id
      )
      INNER JOIN (
        (
          tbl_Unit
          INNER JOIN tbl_Clothing_Item ON tbl_Unit.Unit_Id = tbl_Clothing_Item.Unit_Id
        )
        INNER JOIN tbl_Combatant_Clothing_Card_Item ON tbl_Clothing_Item.Clothing_Item_Id = tbl_Combatant_Clothing_Card_Item.Clothing_Item_Id
      ) ON (
        tbl_Unit.Unit_Id = tbl_Combatant.Unit_Id
      )
      AND (
        tbl_Unit.Unit_Id = tbl_Chq_Pl.Unit_Id
      )
      AND (
        tbl_Combatant.Combatant_Id = tbl_Combatant_Clothing_Card_Item.Combatant_Id
      )
    ) ON (
      tbl_Unit.Unit_Id = tbl_Rank.Unit_Id
    )
    AND (
      tbl_Rank.Rank_Id = tbl_Combatant.Rank_Id
    )
  ) ON (
    tbl_Unit.Unit_Id = tbl_Sub_Unit.Unit_Id
  )
  AND (
    tbl_Sub_Unit.Sub_Unit_Id = tbl_Combatant.Sub_Unit_Id
  )
  AND (
    tbl_Sub_Unit.Sub_Unit_Id = tbl_Chq_Pl.Sub_Unit_Id
  );
