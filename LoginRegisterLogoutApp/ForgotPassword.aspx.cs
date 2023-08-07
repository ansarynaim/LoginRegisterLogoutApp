using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void fgtPwdBtn_Click(object sender, EventArgs e)
    {
       try
        {
            string cs = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from [userinfo] where email='"+txtEmail.Text+"'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                dr.Read();
                string emailid = dr["email"].ToString();
                string pw = dr["password"].ToString();
                StringBuilder sb = new StringBuilder();
                sb.AppendLine("email :-" + emailid);
                sb.AppendLine("password :-" + pw);
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential("naimansary492@gmail.com", "bwyobyhioorpiilo");
                MailMessage msg = new MailMessage();
                msg.To.Add(txtEmail.Text);
                msg.From = new MailAddress("Naim is checking ..<naimansary492@gmail.com>");
                msg.Subject = "Your Password";
                msg.Body = sb.ToString();
                client.Send(msg);
                lblmsg.Text = "Your Password has been sent to your registered Email Id";




            }
            else
            {
                lblmsg.Text = "Invalid Email ID";
            }
        }
        catch(Exception ex)
        {
            lblmsg.Text = "ERROR: " + ex.Message.ToString();
        }
    }
}