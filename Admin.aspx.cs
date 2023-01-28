using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrudPractice.Admin
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDdlDepartment();
                loadEmployee();
            }
        }

        private void BindDdlDepartment()
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ToString();
            SqlConnection con = new SqlConnection(constr);
            //DataTable dt = new DataTable();
            string query = "select* from tbl_Department";
            con.Open();
            SqlCommand cmd = new SqlCommand(query,con);
            ddlDepartment.DataSource = cmd.ExecuteReader();
            ddlDepartment.DataBind();

            //SqlDataAdapter adpt = new SqlDataAdapter(query,con);          
            //adpt.Fill(dt);
            //ddlDepartment.DataSource = dt;
            //ddlDepartment.DataBind();
            //ddlDepartment.DataTextField = "DepartmentName";
            //ddlDepartment.DataValueField = "DepartmentId";
            //ddlDepartment.DataBind();

            //ddlDepartment.Items.Insert(0, "Select Item");
         

        }

        protected void btnEmployeeSave_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ToString();
            SqlConnection con = new SqlConnection(constr);
            string query = @"INSERT INTO dbo.tbl_Employee
           (EmployeName
           ,EmployeePhone
           ,EmployeeEmail
           ,Address
           ,DepartmentId)
            VALUES
           (
			@EmployeName
           ,@EmployeePhone
           ,@EmployeeEmail
           ,@Address
           ,@DepartmentId
		   )";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@EmployeName", txtEmName.Text);
            cmd.Parameters.AddWithValue("@EmployeePhone", txtPhone.Text);
            cmd.Parameters.AddWithValue("@EmployeeEmail", txtEmpEmail.Text);
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@DepartmentId", Convert.ToInt32(ddlDepartment.SelectedItem.Value));
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            txtEmName.Text = "";
            txtPhone.Text = "";
            txtEmpEmail.Text = "";
            txtAddress.Text = "";
            loadEmployee();
        }

        public void loadEmployee()
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ToString();
            SqlConnection con = new SqlConnection(constr);
            string query = "select * from tbl_Employee";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            gvEmployeeList.DataSource = cmd.ExecuteReader();
            gvEmployeeList.DataBind();
            con.Close();

        }

        protected void gvEmployeeList_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //int id = Convert.ToInt32(gvEmployeeList.DataKeys[e.RowIndex].Value);

            string constr = ConfigurationManager.ConnectionStrings["con"].ToString();
            SqlConnection con = new SqlConnection(constr);
            string query = "delete from tbl_Employee where EmployeeID = @id";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", Convert.ToInt32(gvEmployeeList.DataKeys[e.RowIndex].Value.ToString()));
            cmd.ExecuteNonQuery();
            loadEmployee();
        }

        protected void gvEmployeeList_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvEmployeeList.EditIndex = e.NewEditIndex;
            loadEmployee();
        }

        protected void gvEmployeeList_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            string constr = ConfigurationManager.ConnectionStrings["con"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            //int dpt = Convert.ToInt32((gvEmployeeList.Rows[e.RowIndex].FindControl("txtEmpDepartment") as TextBox).Text);
            string query = @"UPDATE tbl_Employee SET EmployeName = @EmployeName, EmployeePhone = @EmployeePhone, EmployeeEmail = @EmployeeEmail, Address = @Address, DepartmentId = @DepartmentId WHERE EmployeeID = @id;";

            SqlCommand cmd = new SqlCommand(query,con);
            cmd.Parameters.AddWithValue("@EmployeName", (gvEmployeeList.Rows[e.RowIndex].FindControl("txtEmpName") as TextBox).Text.Trim());
            cmd.Parameters.AddWithValue("@EmployeePhone", (gvEmployeeList.Rows[e.RowIndex].FindControl("txtEmpPhone") as TextBox).Text.Trim());
            cmd.Parameters.AddWithValue("@EmployeeEmail", (gvEmployeeList.Rows[e.RowIndex].FindControl("txtEmpEmail") as TextBox).Text.Trim());
            cmd.Parameters.AddWithValue("@Address", (gvEmployeeList.Rows[e.RowIndex].FindControl("txtEmpAddress") as TextBox).Text.Trim());
            //cmd.Parameters.AddWithValue("@DepartmentId", Convert.ToInt32((gvEmployeeList.Rows[e.RowIndex].FindControl("txtEmpDepartment") as TextBox).Text.Trim())) ;
            cmd.Parameters.AddWithValue("@DepartmentId", Convert.ToInt32((gvEmployeeList.Rows[e.RowIndex].FindControl("txtEmpDepartment") as TextBox).Text.Trim()));
            cmd.Parameters.AddWithValue("@id", Convert.ToInt32(gvEmployeeList.DataKeys[e.RowIndex].Value.ToString()));
            cmd.ExecuteNonQuery();
            
            loadEmployee();

        }

        protected void gvEmployeeList_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvEmployeeList.EditIndex = -1;
            loadEmployee();
        }
    }
}