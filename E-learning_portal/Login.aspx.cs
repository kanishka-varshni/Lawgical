using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{

	public string ConnString = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
	public SqlCommand cmd = new SqlCommand();
	public SqlConnection Conn = new SqlConnection();
	SqlDataReader red;


	protected void Page_Load(object sender, EventArgs e)
	{
        //lblName.Text = Request.QueryString["Type"].ToString() + " ";
	}
	protected void btnLogin_Click(object sender, EventArgs e)
	{
		try
		{
           

			Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
            if (Request.QueryString["Type"] == "Admin")
			{
                if (username.Text.ToLower() == "admin" && password.Text.ToLower() == "admin")
				{
					Session["userID"] = username.Text.ToLower();
					Session["UserType"] = "1";
                    Response.Redirect("~/Admin/Home.aspx");
				}
				else
				{
					ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", "<script>alert('Access Denied.....You Are Entered Wrong UserId or Password');</script>", false);

				}
			}
			else if (Request.QueryString["Type"] == "Staff")
			{


				cmd = new SqlCommand("select staff_id,password from Staff where staff_id='" + username.Text + "' and password='" + password.Text + "'", Conn);
				Conn.Open();
				red = cmd.ExecuteReader();

				if (red.Read())
				{
					Session["userID"] = username.Text.ToLower();
					Session["UserType"] = "2";
					Response.Redirect("~/Staff/Home.aspx");

				}
				else
				{
					ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", "<script>alert('Access Denied.....You Are Entered Wrong UserId or Password');</script>", false);
				}
			}

			else if (Request.QueryString["Type"] == "Student")
			{

				cmd = new SqlCommand("select stu_id,password from Student where stu_id='" + username.Text + "' and password='" + password.Text + "'", Conn);
				Conn.Open();
				red = cmd.ExecuteReader();

				if (red.Read())
				{
					Session["userID"] = username.Text.ToLower();
					Session["UserType"] = "3";
					Response.Redirect("~/Student/Home.aspx");
				}
				else
				{
					ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", "<script>alert('Access Denied.....You Are Entered Wrong UserId or Password');</script>", false);
				}
			}

			Conn.Close();
		}
		catch (Exception)
		{

			throw;
		}
	}
}