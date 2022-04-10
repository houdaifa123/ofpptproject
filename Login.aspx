<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ofpptproject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" >
    <style type="text/css">
            .auto-style1 {
                margin-left: 7px;
            }

                .auto-style1:hover {
                    color: lightcoral;
                }

            #div1 {
                text-align: center;
                margin-top: 20%;
            }

            #TextBox1 {
                border-radius: 9px;
            }

            #TextBox2 {
                border-radius: 9px;
            }

            #Button1 {
                border-radius: 9px;
                border: 4px double;
                text-align: center;
            }
       @media screen and (max-width: 640px)
       {
            #div1
            {
              font-size: 6pt;
            }
       }

    </style>
</head>
<body style="background-color:cornflowerblue">
    <form id="form1" runat="server">
        <div id="div1">
            <div>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Saisier votre Email" Height="32px" Width="231px" TextMode="Email"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Email n'est pas saisie" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="*Format d'email est incorrect" ControlToValidate="TextBox1" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />
                <br />
            </div>
            <div>
                <asp:TextBox ID="TextBox2" runat="server" placeholder="entrez votre mot de passe" Height="30px" Width="232px" TextMode="Password"></asp:TextBox>
                <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Veillez entrez Mot de passe" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Mot de passe est incorrect" ControlToValidate="TextBox2" ValidationExpression="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[-+!*$@%_])([-+!*$@%_\w]{8,15})$" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />
                <br />
            </div>
                <asp:Button ID="Button1" runat="server" Text="sing in" CssClass="auto-style1" Width="76px" Height="34px" />
        </div>
    </form>
</body>
</html>
