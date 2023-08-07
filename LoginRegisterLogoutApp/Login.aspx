<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login page</title>
      <style>
    /* Form styling */
    form {
      max-width: 400px;
      margin: 0 auto;
    }
    #email,#password {
      width: 100%;
      padding: 12px 20px;
      margin: 8px 0;
      box-sizing: border-box;
      border: 2px solid #ccc;
      border-radius: 4px;
    }
    #lgnBtn,#fgtBtn {
      background-color: #4CAF50;
      color: white;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }
    #lgnBtn:hover {
      background-color: #45a049;
    }

    #HyperLink1 {
      color: #007bff;
      text-decoration: none;
      border-bottom: 1px solid #007bff;
    }
    #HyperLink1:hover {
      color: #0056b3;
      border-bottom-color: #0056b3;
    }

  </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Login Page</h1>
        <asp:Label ID="errorMSG" runat="server" Text=""></asp:Label>
        <div>
            
        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label><br />
        <asp:TextBox ID="email" runat="server" Placeholder="Enter your Email Address" ></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="email" ErrorMessage="Email must be filled." ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
        <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label><br />
        <asp:TextBox ID="password" runat="server" Placeholder="Enter your password" TextMode="Password" ></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Password must be filled." ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
        <asp:Button ID="lgnBtn" runat="server" Text="Submit" OnClick="lgnBtn_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server"  NavigateUrl="~/ForgotPassword.aspx">Forgot Password?</asp:HyperLink>
        </div>
    </form>
</body>
</html>
