Attribute VB_Name = "Mdl_Check_Combatant_Name_For_Create"
Option Compare Database
Option Explicit

Function Is_Combatant_Name_For_Create_Correct(ByVal input_Combatant_Name As String) As Boolean

Dim is_Input_Name_Valid As Boolean

Dim length_Of_Input_Name As Integer

Dim response_To_Length_Of_Name As Variant

Dim frm As Form

Set frm = Forms("frm_Create_Combatant_Record")

Is_Combatant_Name_For_Create_Correct = False ' Set false at the beginning of this fuction


 Dim regex As Object

Set regex = CreateObject("VBScript.RegExp")

    ' Define the regular expression pattern
    regex.pattern = "^[A-Za-z' ]+$" ' permits A to Z regardless of case, space and the apostrophe
    regex.IgnoreCase = True
    regex.Global = True

    ' Test if the input text matches the pattern
    is_Input_Name_Valid = regex.Test(input_Combatant_Name)

    ' Display a message based on the validation result
    If Not is_Input_Name_Valid Then

        MsgBox "The name you entered is invalid. Please enter only letters A-Z, spaces, and apostrophes.", vbExclamation, "Validation Result"

        Exit Function

   End If



     length_Of_Input_Name = Len(input_Combatant_Name)
'
      If length_Of_Input_Name > 0 And length_Of_Input_Name < 3 Then
'
                    response_To_Length_Of_Name = MsgBox("The text length is less than 3 characters. Do you want to continue?", vbYesNo + vbExclamation, "Warning")
'
                    If response_To_Length_Of_Name = vbNo Then ' the value given to the variable response will be 7 if the user chooses no. If he chooses yes, the value will be 6


                        Debug.Print "User chooses he does not want to continue."

                        ' Set focus to the text box and exit function - need to work on this in the lost focus event itself..

                         MsgBox ("Please correct the name of the Combatant")

                         Exit Function



                    Else
                        ' User chose Yes, proceed with the action
                        MsgBox "Proceeding with the current input.", vbInformation, "Proceeding"

                         MsgBox (" if yes  value of response" & response_To_Length_Of_Name)



                    End If
     End If

   Is_Combatant_Name_For_Create_Correct = True





End Function
