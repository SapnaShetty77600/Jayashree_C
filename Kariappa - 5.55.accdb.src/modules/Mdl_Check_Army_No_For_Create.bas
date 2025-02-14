Attribute VB_Name = "Mdl_Check_Army_No_For_Create"
Option Compare Database
Option Explicit

' check army number for create
Function Is_Army_Number_For_Create_Correct(ByVal input_Army_Number As String, ByVal Selected_Rank_Type As Integer) As Boolean

' Based on the Selected Rank Type, fetch the pattern

Debug.Print " I reached the module to check the input Army number for create"


' get the regex pattern



'
'regular_Expression_Selected_Rank_Type = DLookup("Regular_Expression", "tbl_Rank_Type", "Rank_Type_Id = ' & selected_Rank_Type & '")

 regular_Expression_Selected_Rank_Type = DLookup("Regular_Expression", "tbl_Rank_Type", "Rank_Type_Id = " & Selected_Rank_Type)


        regular_Expression = regular_Expression_Selected_Rank_Type

        army_Number_To_Be_Processed = input_Army_Number


 Dim regex As Object

 Set regex = CreateObject("VBScript.RegExp")

                With regex
                    .pattern = regular_Expression
                    .IgnoreCase = False
                    .Global = False
                End With

If regex.Test(army_Number_To_Be_Processed) Then

                    MsgBox "The Army number that has been entered follows the correct pattern for the selected type of rank."

                    Is_Army_Number_For_Create_Correct = True ' this value is returned by the function for further processing.

                   Else

                        MsgBox "The Army number that has been entered does not follow the correct pattern for the selected type of rank.  Please correct and try again."

                        Exit Function

                End If


End Function
