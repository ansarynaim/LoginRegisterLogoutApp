﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void lgnBtn_Click(object sender, EventArgs e)
    {
        con.Open();
        string checkUser = "select user_id,email,first_name,last_name from [userinfo] where email=@email and password=@password";
        SqlCommand checkCmd = new SqlCommand(checkUser, con);
        checkCmd.Parameters.AddWithValue("@email", email.Text.ToString());
        checkCmd.Parameters.AddWithValue("@password", password.Text.ToString());
        SqlDataReader read = checkCmd.ExecuteReader();
        if (read.Read())
        {
            Session["user_id"] = read.GetValue(0).ToString();
            Session["email"] = read.GetValue(1).ToString();
            Session["first_name"] = read.GetValue(2).ToString();
            Session["last_name"] = read.GetValue(3).ToString();
            con.Close();
            Response.Redirect("Home.aspx");
        }
        else
        {
            errorMSG.Text = "Invalid email or password.";
            errorMSG.ForeColor = System.Drawing.Color.Red;
            con.Close();
        }
    }
}