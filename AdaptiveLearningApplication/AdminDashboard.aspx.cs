using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdaptiveLearningApplication
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        public string Message
        {
            get
            {
                if (Request.QueryString["msg"] != null)
                {
                    return Convert.ToString(Request.QueryString["msg"]);
                }
                return null;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Message != null)
                {
                    successAlert.Attributes["style"] = "visibility: visible";
                    successAlert.Style.Add("margin-top", "100px");
                    successAlert.Style.Add("margin-bottom", "472px");
                }
            }
                
        }
    }
}