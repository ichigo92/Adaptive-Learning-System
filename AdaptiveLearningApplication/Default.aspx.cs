using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdaptiveLearningApplication
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void InsertUser(object sender, EventArgs e)
        {
            AdminLogin al = new AdminLogin();
            string name = txtSignFirstName.Text;
            string email = txtSignEmail.Text;
            string username = txtSignLastName.Text;
            string password = txtSignPassword.Text;
            al.Admin_id = name;
            al.Admin_password = password;
            Console.WriteLine("Selected Value: " + r_admin.Value);
            string role = null;
            if (r_admin.Checked)
                role = r_admin.Value;
            else if (r_faculty.Checked)
                role = r_faculty.Value;
            else if (r_student.Checked)
                role = r_student.Value;
            Console.WriteLine("Role: " + role);

            if (role == "admin")
            {
                if (al.NewUser())
                    Response.Redirect("AdminDashboard.aspx?msg=You are Logged in!!");
                else
                    Response.Redirect("Default.aspx?msg=Invalid username and password!");
                    
            }
            else
            {
                Console.WriteLine("Please Select Role");
                Response.Redirect("Default.aspx?msg=Invalid username and password!");
            }



            //string login_type = "User";
           
            //al.Username = username;
            //al.Password = password;
            //al.LoginType = login_type;

           

            

            //string value = "";
            //bool isChecked = rdoRoleRange.Checked;
            //if (isChecked)
            //    value = radioButton1.Text;
            //else
            //    value = radioButton2.Text;
        }

        protected void LoginValidation(object sender, EventArgs e)
        {
            AdminLogin al = new AdminLogin(txtUsername.Text, txtPassword.Text);

            if (al.Admin_id != null)
            {
                StringBuilder sb = new StringBuilder();
                sb.Append(al.Admin_id);

                HttpCookie ck;

                FormsAuthenticationTicket tkt = new FormsAuthenticationTicket(1, sb.ToString(), DateTime.Now, DateTime.Now.AddDays(5), true, "");

                ck = new HttpCookie(FormsAuthentication.FormsCookieName, FormsAuthentication.Encrypt(tkt));
                ck.Path = FormsAuthentication.FormsCookiePath;
                ck.Domain = FormsAuthentication.CookieDomain;

                Response.Cookies.Add(ck);

                Response.Redirect("AdminDashboard.aspx?msg=You are Logged in!!");


            }

            else
                Response.Redirect("Default.aspx?msg=Invalid username and password!");


            /* al.CheckUser();
             string username = txtUsername.Text;
             string password = txtPassword.Text;
             string name = ul.Name;
             int id = ul.UserID;
             Session["id"] = id;
             Session["name"] = name;
             string username_db = ul.Username;
             string password_db = ul.Password;
             if (username == username_db && password == password_db)
             {
                 Response.Redirect("Default.aspx?msg=You are logged in!");
             }
             //Response.Redirect("Default.aspx?msg=" + id + " " + name);*/
        }
    }
}