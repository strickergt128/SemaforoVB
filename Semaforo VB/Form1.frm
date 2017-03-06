VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7170
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   10215
   LinkTopic       =   "Form1"
   ScaleHeight     =   7170
   ScaleWidth      =   10215
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   8400
      Top             =   840
   End
   Begin VB.Shape Shape3 
      BackColor       =   &H80000001&
      BackStyle       =   1  'Opaque
      Height          =   1935
      Left            =   3840
      Shape           =   3  'Circle
      Top             =   4680
      Width           =   2175
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000001&
      BackStyle       =   1  'Opaque
      Height          =   1935
      Left            =   3840
      Shape           =   3  'Circle
      Top             =   2760
      Width           =   2175
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H80000001&
      BackStyle       =   1  'Opaque
      Height          =   1935
      Left            =   3840
      Shape           =   3  'Circle
      Top             =   720
      Width           =   2175
   End
   Begin VB.Image Image1 
      Height          =   6315
      Left            =   2400
      Picture         =   "Form1.frx":0000
      Stretch         =   -1  'True
      Top             =   360
      Width           =   4995
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Timer1_Timer()
Timer1.Interval = Timer1.Interval + 100
If Timer1.Interval = 200 Then
Shape1.BackColor = vbRed
End If
If Timer1.Interval = 1000 Then
Shape2.BackColor = &H80FF&
Shape1.BackColor = vbBlack
End If
If Timer1.Interval = 1100 Then
Shape3.BackColor = vbGreen
Shape2.BackColor = vbBlack
End If
If Timer1.Interval = 1400 Then
Shape3.BackColor = vbBlack
Timer1.Interval = 100
End If
End Sub
