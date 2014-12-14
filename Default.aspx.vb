Imports System.Threading
Imports System.Globalization

Partial Class _default
    Inherits System.Web.UI.Page

    Protected Overrides Sub InitializeCulture()

        Dim lang As String = Request("ddl_language")

        If lang IsNot Nothing Or lang <> "" Then
            Thread.CurrentThread.CurrentUICulture = New CultureInfo(lang)
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(lang)
        End If

    End Sub

    Protected Sub btn_submit_Click(sender As Object, e As EventArgs) Handles btn_submit.Click

        Dim money As Decimal = tb_earn.Text
        Dim name As String = tb_Name.Text
        Dim salutation As String = rbl_gender.SelectedValue
        Dim gradDate As String = Calendar1.SelectedDate
        Dim display As String = "Yes"

        lbl_gradDateEntered.Text = gradDate
        lbl_nameEntered.Text = name
        lbl_salutation.Text = salutation
        currencyLabel.Text = String.Format("{0:c}", money)

    End Sub

End Class

