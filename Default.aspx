<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_default" Culture="auto:en-US" UICulture="auto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Localization</title>
    
    <link rel="stylesheet" type="text/css" href="./css/localizationStyle.css" />

    <style type="text/css">
        #Reset1 {
            width: 62px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">

    <div id="header">

        <h1>
            <asp:Label ID="lbl_welcome" runat="server" Text="<%$ Resources:Resource, Welcome %>"></asp:Label>
        </h1>
        
        <h2>
            <asp:Label ID="lbl_courseName" runat="server" Text="<%$ Resources:Resource, CourseName %>"></asp:Label>
        </h2>

    </div> <!-- close header div -->
        
    <div id="body">

        <div id="languageDropDown">

            <h4>
                <asp:Label ID="lbl_chooseLanguage" runat="server" Text="<%$ Resources:Resource, ChooseLanguage %>"></asp:Label>
            </h4>

            <asp:DropDownList ID="ddl_language" runat="server" AutoPostBack="true">
                <asp:ListItem Value="ar-SA">Arabic</asp:ListItem>
                <asp:ListItem Value="zh-CN">Chinese</asp:ListItem>
                <asp:ListItem Value="en-US" Selected="true">English</asp:ListItem>
                <asp:ListItem Value="es-ES">Spanish</asp:ListItem>
            </asp:DropDownList>

        </div>  <!-- close languageDropDown div -->

        <div id="content">

            <asp:ScriptManager ID="sm1" runat="server" EnablePartialRendering="true" />

            <div id="name">

                <asp:Label ID="lbl_Name" runat="server" Text="<%$ Resources:Resource, Name %>"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="tb_Name" runat="server"></asp:TextBox>

            </div>  <!-- close name div -->
          
            <div id="gender">

                <div id="genderLabel">
                    <asp:Label ID="lbl_Gender" runat="server" Text="<%$ Resources:Resource, Gender %>"></asp:Label>
                </div>  <!-- close genderLabel div -->

                <div id="genderRadioButtons">
                    <asp:RadioButtonList ID="rbl_gender" runat="server" RepeatDirection="Horizontal" AutoPostBack="false">
                        <asp:ListItem Text="<%$ Resources:Resource, Female %>" Value="Ms."></asp:ListItem>
                        <asp:ListItem Text="<%$ Resources:Resource, Male %>" Value="Mr."></asp:ListItem>
                    </asp:RadioButtonList>
                </div>  <!-- close genderRadioButtons div -->

            </div> <!-- close gender div -->

            <div id="calendar">
                
                <asp:Label ID="lbl_gradDate" runat="server" Text="<%$ Resources:Resource, GradDate %>"></asp:Label>

                <br /> <br />

                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" RenderMode="Block">
                        <ContentTemplate>
                            <asp:Calendar ID="Calendar1" runat="server" ></asp:Calendar>
                        </ContentTemplate>
                    </asp:UpdatePanel> 
                

            </div>  <!-- close calendar div -->
            
            <asp:Label ID="lbl_earn" runat="server" Text="<%$ Resources:Resource, Earn %>"></asp:Label>
                &nbsp;&nbsp;
            <asp:TextBox ID="tb_earn" runat="server" Width="128px"></asp:TextBox>                          

            <br /><br />

            <asp:Button ID="btn_submit" runat="server" Text="Submit" />&nbsp;&nbsp;<asp:Button ID="btn_ClearForm" runat="server" Text="Clear" />
            
            <p>
            <asp:Label ID="lbl_Hello" runat="server" Text="<%$ Resources:Resource, Hello %>"></asp:Label>
            
            <asp:Label ID="lbl_salutation" runat="server" Text=""></asp:Label>

            <asp:Label ID="lbl_nameEntered" runat="server" Text=""></asp:Label><asp:Label ID="lbl_comma" runat="server" Text=","></asp:Label>

            <br /><br />

            <asp:Label ID="lbl_GreatDay" runat="server" Text="<%$ Resources:Resource, GreatDay %>"></asp:Label>
            
            <asp:Label ID="lbl_gradDateEntered" runat="server" Text="Label"></asp:Label><asp:Label ID="lbl_ExplPoint" runat="server" Text="!"></asp:Label>

            <br /><br />

            <asp:Label ID="lbl_HopeYouEarn" runat="server" Text="<%$ Resources:Resource, HopeYouEarn %>"></asp:Label>

            <asp:Label ID="currencyLabel" runat="server" Text="Label"></asp:Label>

            <asp:Label ID="lbl_Salary" runat="server" Text="<%$ Resources:Resource, Salary %>"></asp:Label>

            <br /><br />
            
            <asp:Label ID="lbl_Visit" runat="server" Text="<%$ Resources:Resource, PleaseVisit %>"></asp:Label>
            
            <asp:HyperLink ID="link_GitHub" runat="server" NavigateUrl="https://github.com/ajkisling">GitHub</asp:HyperLink><asp:Label ID="lbl_period" runat="server" Text="."></asp:Label>
            
            </p>
            
            <br /><br /><br /> 

            <asp:Button ID="btn_ReturnToForm" runat="server" Text="Go Back" />           

        </div>  <!-- close content div -->            

     </div>  <!-- close body div -->

    </form>
</body>
</html>
