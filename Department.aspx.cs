using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace CrudPractice.Admin
{
    public partial class Department : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadDepartment();
        }

        protected void btnDepartment_Click(object sender, EventArgs e)
        {
            int result = 0;
            string constr = ConfigurationManager.ConnectionStrings["con"].ToString();
            SqlConnection con = new SqlConnection(constr);
            string query = "INSERT INTO dbo.tbl_Department(DepartmentName)VALUES(@DepartmentName)";
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@DepartmentName", txtDepartment.Text);
                con.Open();
                result =cmd.ExecuteNonQuery();
            }
            if (result > 0)
            {
                MessageBox.Show("Insert Done");
            }
            else
            {
                MessageBox.Show("Insert Faild"); 
            }
        }

        public void loadDepartment()
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ToString();
            SqlConnection con = new SqlConnection(constr);
            string query = "select* from tbl_Department";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            gvDepartment.DataSource = cmd.ExecuteReader();
            gvDepartment.DataBind();

        }
    }
}