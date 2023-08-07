<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Page</title>
    <style>
    /* Form styling */
    form {
      max-width: 400px;
      margin: 0 auto;
    }
    #firstname,#lastname,#email,#password {
      width: 100%;
      padding: 12px 20px;
      margin: 8px 0;
      box-sizing: border-box;
      border: 2px solid #ccc;
      border-radius: 4px;
    }
    #regBtn {
      background-color: #4CAF50;
      color: white;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }
    regBtn:hover {
      background-color: #45a049;
    }

  </style>
</head>
<body  style="margin: 0 auto; width: 30%;">
    <h1>REGISTER PAGE</h1>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>&nbsp;<br />
        <asp:TextBox ID="firstname" runat="server" Placeholder="Enter your First Name" ></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="firstname" ErrorMessage="First Name must be filled." ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label><br />
        <asp:TextBox ID="lastname" runat="server" Placeholder="Enter your Last Name" ></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lastname" ErrorMessage="Last Name must be filled." ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label><br />
        <asp:TextBox ID="email" runat="server" Placeholder="Enter your Email Address" ></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" ErrorMessage="Email must be filled." ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label><br />
        <asp:TextBox ID="password" runat="server" Placeholder="Enter your password" TextMode="Password" ></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="password" ErrorMessage="Password must be filled." ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        <asp:Button ID="regBtn" runat="server" Text="Submit" OnClick="regBtn_Click" />
        </div>
    </form>
</body>
</html>
