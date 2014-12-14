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

        lbl_Name.Visible = False
        tb_Name.Visible = False
        lbl_Gender.Visible = False
        rbl_gender.Visible = False
        lbl_gradDate.Visible = False
        Calendar1.Visible = False
        lbl_earn.Visible = False
        tb_earn.Visible = False
        btn_submit.Visible = False
        btn_ClearForm.Visible = False

        btn_ReturnToForm.Visible = True
        lbl_Hello.Visible = True
        lbl_salutation.Visible = True
        lbl_nameEntered.Visible = True
        lbl_comma.Visible = True
        lbl_GreatDay.Visible = True
        lbl_gradDateEntered.Visible = True
        lbl_ExplPoint.Visible = True
        lbl_HopeYouEarn.Visible = True
        currencyLabel.Visible = True
        lbl_Salary.Visible = True
        lbl_Visit.Visible = True
        link_GitHub.Visible = True
        lbl_period.Visible = True

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

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        btn_ReturnToForm.Visible = False
        lbl_Hello.Visible = False
        lbl_salutation.Visible = False
        lbl_nameEntered.Visible = False
        lbl_comma.visible = False
        lbl_GreatDay.Visible = False
        lbl_gradDateEntered.Visible = False
        lbl_ExplPoint.Visible = False
        lbl_HopeYouEarn.Visible = False
        currencyLabel.Visible = False
        lbl_Salary.Visible = False
        lbl_Visit.Visible = False
        link_GitHub.Visible = False
        lbl_period.Visible = False


    End Sub

    Protected Sub btn_ClearForm_Click(sender As Object, e As EventArgs) Handles btn_ClearForm.Click

        Response.Redirect("Default.aspx")

    End Sub


    Protected Sub btn_ReturnToForm_Click(sender As Object, e As EventArgs) Handles btn_ReturnToForm.Click

        Response.Redirect("Default.aspx")

    End Sub

End Class

