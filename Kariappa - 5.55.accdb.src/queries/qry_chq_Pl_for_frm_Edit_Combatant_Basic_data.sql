SELECT
  tbl_Chq_Pl.CHQ_Pl_Id,
  tbl_Chq_Pl.CHQ_Pl_Name,
  tbl_Chq_Pl.Display_Seniority,
  tbl_Chq_Pl.Sub_Unit_Id
FROM
  tbl_Chq_Pl
WHERE
  (
    (
      (tbl_Chq_Pl.Sub_Unit_Id)= [Forms]![frm_Edit_Combatant_Basic_Data]![Cmb_selectedSubUnit]
    )
  )
ORDER BY
  tbl_Chq_Pl.Display_Seniority;
