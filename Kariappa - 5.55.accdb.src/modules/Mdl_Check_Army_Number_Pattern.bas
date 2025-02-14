Attribute VB_Name = "Mdl_Check_Army_Number_Pattern"
Option Compare Database
Option Explicit
Public Rank_Type As String
Public regular_Expression As String
Public regular_Expression_Existing_Rank_Type As String
Public regular_Expression_Selected_Rank_Type As String
Public army_Number_To_Be_Processed As String





 Function Is_Army_Number_Pattern_Correct(ByVal Existing_Army_Number As String, ByVal Modified_Army_Number As String, ByVal Existing_Rank_Type As String, ByVal Selected_Rank_Type As String) As Boolean


 Debug.Print Selected_Rank_Type

 If Selected_Rank_Type = "NA" And Modified_Army_Number <> "NA" Then ' Condition 1

        regular_Expression_Existing_Rank_Type = DLookup("Regular_Expression", "tbl_Rank_Type", "Rank_Type_Name = '" & Existing_Rank_Type & "'")

        regular_Expression = regular_Expression_Existing_Rank_Type

        army_Number_To_Be_Processed = Modified_Army_Number

 End If

  If Selected_Rank_Type <> "NA" And Modified_Army_Number = "NA" Then ' Condition 2

       ' regular_Expression_Existing_Rank_Type = DLookup("Regular_Expression", "tbl_Rank_Type", "Rank_Type_Name = '" & Existing_Rank_Type & "'")

        regular_Expression_Selected_Rank_Type = DLookup("Regular_Expression", "tbl_Rank_Type", "Rank_Type_Name = '" & Selected_Rank_Type & "'")

        regular_Expression = regular_Expression_Selected_Rank_Type

        army_Number_To_Be_Processed = Existing_Army_Number

 End If

 If Selected_Rank_Type <> "NA" And Modified_Army_Number <> "NA" Then

        regular_Expression_Selected_Rank_Type = DLookup("Regular_Expression", "tbl_Rank_Type", "Rank_Type_Name = '" & Selected_Rank_Type & "'")

        regular_Expression = regular_Expression_Selected_Rank_Type

        army_Number_To_Be_Processed = Modified_Army_Number

 End If



 'regular_Expression_Existing_Rank_Type = DLookup("Regular_Expression", "tbl_Rank_Type", "Rank_Type_Name = '" & Existing_Rank_Type_Value & "'")

 'regular_Expression_Selected_Rank_Type = DLookup("Regular_Expression", "tbl_Rank_Type", "Rank_Type_Name = '" & Selected_Rank_Type & "'")


 ' Army number to be processed

 '
 ' If only Army Number modified then Army number to be processed in Existing Army Number

 ' If only Rank Type modified, then Army number to be processed is Existing Army Number

 ' If both Army number and Rank type are modfiied, then Army number to be processed is Modified Army Number


 Dim regex As Object

 Set regex = CreateObject("VBScript.RegExp")

                With regex
                    .pattern = regular_Expression ' reached here at 1 30 pm
                    .IgnoreCase = False
                    .Global = False
                End With



            If regex.Test(army_Number_To_Be_Processed) Then

                    MsgBox "The Army number that has been entered follows the correct pattern for the selected type of rank which is " & Selected_Rank_Type & "."

                    Is_Army_Number_Pattern_Correct = True ' this value is returned by the function for further processing.

                   Else

                        MsgBox "The Army number that has been entered does not follow the correct pattern for the selected type of rank which is " & Selected_Rank_Type & ".  Please correct and try again."

                        Exit Function

                End If



End Function
