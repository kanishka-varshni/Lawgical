using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class Hod_AddStaff : System.Web.UI.Page
{

    public string ConnString = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
    public SqlCommand cmd = new SqlCommand();
    public SqlConnection Conn = new SqlConnection();
    SqlDataReader red;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindddl();
        }
    }

    private void bindddl()
    {
        Conn = new SqlConnection(ConnString);
        cmd = new SqlCommand("select * from department");
        cmd.CommandType = CommandType.Text;
        cmd.Connection = Conn;
        Conn.Open();
        ddlDepartment.DataSource = cmd.ExecuteReader();
        ddlDepartment.DataTextField = "name";
        ddlDepartment.DataValueField = "id";
        ddlDepartment.DataBind();
        Conn.Close();
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            Conn = new SqlConnection(ConnString);
            Conn.Open();
            string qry = "insert into Staff(staff_id,Password,staff_name,department,doj,mobile,email,date_of_create,status)values('" + txtId.Text + "','" + txtPassword.Text + "','" + txtName.Text + "','" + ddlDepartment.SelectedItem.Value + "','" + txtDOJ.Text + "','" + txtMobile.Text + "','" + txtEmail.Text + "','" + DateTime.Now + "','" + ddlStatus.SelectedItem.Text + "')";
            cmd = new SqlCommand(qry, Conn);
            cmd.ExecuteNonQuery();
            lblMessage.Text = "Staff Details Added Successfully";
            lblMessage.ForeColor = System.Drawing.Color.Green;
            Conn.Close();
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message.Replace("'", "");
            lblMessage.ForeColor = System.Drawing.Color.Red;

        }
    }
}