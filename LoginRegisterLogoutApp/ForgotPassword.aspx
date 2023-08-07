<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
    <style>
    /* Form styling */
    form {
      max-width: 400px;
      margin: 0 auto;
    }
    #txtEmail {
      width: 100%;
      padding: 12px 20px;
      margin: 8px 0;
      box-sizing: border-box;
      border: 2px solid #ccc;
      border-radius: 4px;
    }
    #fgtPwd{
      background-color: #4CAF50;
      color: white;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }
    fgtPwd:hover {
      background-color: #45a049;
    }


  </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Forgot Password?</h1>
        <div>
            
            Enter Your Registered Email<br />
        <asp:TextBox ID="txtEmail" runat="server" Placeholder="Enter your Email Address" ></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter the registered email !" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Text="Label"></asp:Label>
            <br />
        <asp:Button ID="fgtPwd" runat="server" Text="Submit" OnClick="fgtPwdBtn_Click" />
            <br />
        </div>
    </form>
</body>
</html>
