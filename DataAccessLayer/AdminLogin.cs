using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace DataAccessLayer
{
    public class AdminLogin
    {
        private string admin_id;

        private string admin_password;

        private string teacher_id;

        private string student_id;

        public string Admin_id
        {
            get { return admin_id; }
            set { admin_id = value; }
        }

        public string Admin_password
        {
            get { return admin_password; }
            set { admin_password = value; }
        }

        public string Teacher_id
        {
            get { return teacher_id; }
            set { teacher_id = value; }
        }

        public string Student_id
        {
            get { return student_id; }
            set { student_id = value; }
        }

        public AdminLogin()
        { }

        public AdminLogin(int AdminId)
        {
            GetAdminbyId(AdminId);
        }

        public AdminLogin(string Username)
        {
            GetAdminbyUsername(Username);
        }

        public AdminLogin(string Username, string Password)
        {
            GetAdminbyUsernameandPassword(Username, Password);
        }

        public void GetAdminbyId(int AdminId)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;Initial Catalog=AdaptiveLearningSystemDB;Integrated Security=True");
            conn.Open();

            SqlCommand cmd = new SqlCommand("SELECT * from Admin WHERE admin_id='" + admin_id + "'", conn);

            IDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {

                admin_id = Convert.ToString(reader["admin_id"]);
                admin_password = Convert.ToString(reader["admin_password"]);

            }

        }

        public void GetAdminbyUsername(string Username)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;Initial Catalog=AdaptiveLearningSystemDB;Integrated Security=True");
            conn.Open();

            SqlCommand cmd = new SqlCommand("SELECT * from Admin WHERE username ='" + Username + "'", conn);

            IDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {

                admin_id = Convert.ToString(reader["admin_id"]);
                //_username = Convert.ToString(reader["username"]);

            }

        }

        public void GetAdminbyUsernameandPassword(string Username, string Password)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;Initial Catalog=AdaptiveLearningSystemDB;Integrated Security=True");
            conn.Open();

            SqlCommand cmd = new SqlCommand("SELECT * from Admin WHERE admin_id='" + Username + "' AND admin_password='" + Password + "'", conn);

            IDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {

                admin_id = Convert.ToString(reader["admin_id"]);
                //_username = Convert.ToString(reader["Username"]);
                //_email = Convert.ToString(reader["email"]);

            }
        }

        public bool NewUser()
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;Initial Catalog=AdaptiveLearningSystemDB;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Admin(admin_id,admin_password) VALUES('" + admin_id + "','" + admin_password + "')", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            return true;
        }

        public void CheckUser()
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;Initial Catalog=AdaptiveLearningSystemDB;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Admin ", conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    admin_id = dr["admin_id"].ToString();
                    admin_password = dr["admin_password"].ToString();
                }
            }
            else
            {
                Console.Write("Database Empty");
            }
            dr.Close();
        }
    }
}
