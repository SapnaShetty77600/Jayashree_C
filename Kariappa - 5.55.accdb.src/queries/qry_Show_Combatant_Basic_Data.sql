SELECT
  tbl_Combatant.Combatant_Id,
  tbl_Combatant.Combatant_Army_Number,
  tbl_Combatant.Combatant_Name,
  tbl_Sub_Unit.Sub_Unit_Name,
  tbl_Chq_Pl.CHQ_Pl_Name,
  tbl_Combatant.Rank_Id,
  tbl_Rank.Rank_Name,
  tbl_Combatant.Sub_Unit_Id,
  tbl_Combatant.Chq_Platoon_Id,
  tbl_Rank_Type.Rank_Type_Id,
  tbl_Rank_Type.Rank_Type_Name,
  tbl_Combatant.Combatant_Army_Number
FROM
  tbl_Unit
  INNER JOIN (
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
    )
  ) ON (
    tbl_Unit.Unit_Id = tbl_Sub_Unit.Unit_Id
  )
  AND (
    tbl_Unit.Unit_Id = tbl_Rank.Unit_Id
  )
  AND (
    tbl_Unit.Unit_Id = tbl_Combatant.Unit_Id
  )
  AND (
    tbl_Unit.Unit_Id = tbl_Chq_Pl.Unit_Id
  );
