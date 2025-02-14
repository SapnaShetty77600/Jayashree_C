SELECT
  tbl_Rank.Rank_Id,
  tbl_Rank.Rank_Name,
  tbl_Rank.Display_Seniority,
  tbl_Rank.Rank_Type
FROM
  tbl_Rank
WHERE
  (
    (
      (tbl_Rank.Rank_Type)= [Forms]![frm_Create_Combatant_Record]![cmb_Rank_Type]
    )
  );
