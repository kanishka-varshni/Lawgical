using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class Staff_Profile : System.Web.UI.Page
{

	public string ConnString = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
	public SqlCommand cmd = new SqlCommand();
	public SqlConnection Conn = new SqlConnection();

	SqlTransaction transaction;

	Common _common = new Common();
	DataSet ds = new DataSet();
	string userId;

	protected void Page_Load(object sender, EventArgs e)
	{
		try
		{
			userId = Session["userID"].ToString();
		}
		catch (Exception)
		{
			Response.Redirect("~/Home.aspx?Session=Out");
		}
		if (!IsPostBack)
		{
			getData();
		}
	}

	private void getData()
	{
		ds = _common.GetData(userId, "staff","staff_id");
		lblName.Text = ds.Tables[0].Rows[0]["staff_name"].ToString();
		lblId.Text = ds.Tables[0].Rows[0]["staff_id"].ToString();
		lblDepartment.Text = ds.Tables[0].Rows[0]["department"].ToString();
        lblStatus.Text = ds.Tables[0].Rows[0]["status"].ToString();
	}
}