SELECT
  tbl_Combatant.Combatant_Id,
  tbl_Combatant.Rank_Id,
  tbl_Rank.Rank_Name,
  tbl_Rank_Type.Rank_Type_Name,
  tbl_Combatant.Sub_Unit_Id,
  tbl_Sub_Unit.Sub_Unit_Name,
  tbl_Combatant.Chq_Platoon_Id,
  tbl_Chq_Pl.CHQ_Pl_Name,
  tbl_Combatant.Combatant_Army_Number,
  tbl_Combatant.Combatant_Name
FROM
  tbl_Sub_Unit
  INNER JOIN (
    (
      tbl_Rank_Type
      INNER JOIN tbl_Rank ON tbl_Rank_Type.Rank_Type_Id = tbl_Rank.Rank_Type
    )
    INNER JOIN (
      tbl_Chq_Pl
      INNER JOIN tbl_Combatant ON tbl_Chq_Pl.CHQ_Pl_Id = tbl_Combatant.Chq_Platoon_Id
    ) ON tbl_Rank.Rank_Id = tbl_Combatant.Rank_Id
  ) ON (
    tbl_Sub_Unit.Sub_Unit_Id = tbl_Combatant.Sub_Unit_Id
  )
  AND (
    tbl_Sub_Unit.Sub_Unit_Id = tbl_Chq_Pl.Sub_Unit_Id
  );
