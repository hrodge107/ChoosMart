<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StartUp.aspx.cs" Inherits="ChoosMart_App.StartUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Start Up</title>

    <!-- PS: I did not use external CSS cause this style will only be applied this page -->
    <style>
        * {
            box-sizing: border-box;
            font-family: Verdana;
        }

        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        #main {
            display: flex;
            flex-direction: column;
            align-items: center;

            min-height: 100vh;       
            width: 100%;

            padding-top: 20em;

            background-color: #00bfda;
        }

        .img {
            width: 35em;
            height: auto;

            padding: 1em;
        }

        .btn {
            margin: 0.7em 0;
            padding: 0.8em 2em;
            
            background-color: white;
            color: #00f3c5;
            box-shadow: 0px 4px 10px 0px rgba(0, 0, 0, 0.2);

            border-radius: 1em;

            width: 9em;

            display: flex;
            justify-content: center;
            align-items: center;

            font-size: 3em;
            font-weight: 700;
            text-decoration: none;
        }


        h1 {
            font-size: 8em;
            font-weight: 700;

            padding: 0;
            margin: 0;

            color: white;

            border-bottom: 10px solid white;
        }

        h4 {
            font-size: 3em;
            color: #00f3c5;

            padding: 0;
            margin: 0;

            margin-bottom: 1em;
        }

    </style>

</head>
<body>

    <form id="form1" runat="server">
        <div id="main">
            <asp:Image ID="imgLogo" runat="server" ImageUrl="~/images/logo.png" CssClass="img" />
        
            <h1>ChoosMart</h1> 
            <hr />
            <h4>Where every factor is a priority</h4>

            <asp:HyperLink ID="btnLogin" runat="server" CssClass="btn" Text="Login" NavigateUrl="~/ProductPage.aspx"/>
            <asp:HyperLink ID="btnSignup" runat="server" CssClass="btn" Text="Sign up" NavigateUrl="~/StartUp.aspx"/>
        </div>
    </form>

</body>
</html>
