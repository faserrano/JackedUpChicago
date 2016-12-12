using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JackedUpChicago
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SendMail()
        {
            var fromAddress = "jasonandfrank12@gmail.com";
            var toAddress = TextBoxEmail.Text.ToString();
            const string fromPassword = "jasonandfrank";

            string yourName = TextBoxName.Text.ToString();
            string yourPhone = TextBoxPhone.Text.ToString();
            string yourSubject = TextBoxSubject.Text.ToString();
            string yourQuestions = TextBoxQuestions.Text.ToString();

            string body = "From: " + TextBoxName.Text + "\n" + "Email: " + TextBoxEmail.Text +
                 "\n" + "Phone: " + TextBoxPhone.Text + "\n" + "Subject: " + TextBoxSubject.Text +
                  "Questions or comments: " + TextBoxQuestions.Text;
            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                smtp.Timeout = 20000;
            }
            smtp.Send(fromAddress, toAddress, yourSubject, body);
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SendMail();
                Label5.Text = "Thank you.  Your message has been sent!";
                Label5.Visible = true;
                TextBoxName.Text = "";
                TextBoxEmail.Text = "";
                TextBoxPhone.Text = "";
                TextBoxSubject.Text = "";
                TextBoxQuestions.Text = "";
            }
            catch(Exception ex)
            {
                Label5.Text = "Email could not be sent.";
            }
        }
    }
}