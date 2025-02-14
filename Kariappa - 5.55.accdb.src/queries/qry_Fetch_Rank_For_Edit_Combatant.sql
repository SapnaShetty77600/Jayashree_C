SELECT
  tbl_Rank.Rank_Id,
  tbl_Rank.Rank_Name,
  tbl_Rank.Rank_Type,
  tbl_Rank_Type.Rank_Type_Name,
  tbl_Rank.Display_Seniority
FROM
  tbl_Rank_Type
  INNER JOIN tbl_Rank ON tbl_Rank_Type.Rank_Type_Id = tbl_Rank.Rank_Type
ORDER BY
  tbl_Rank.Display_Seniority DESC;
