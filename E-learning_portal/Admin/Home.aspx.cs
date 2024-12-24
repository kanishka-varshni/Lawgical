using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hod_Home : System.Web.UI.Page
{
	public string ConnString = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
	public SqlCommand cmd = new SqlCommand();
	public SqlConnection Conn = new SqlConnection();
	SqlDataReader red;

	protected void Page_Load(object sender, EventArgs e)
	{
		if (!IsPostBack)
		{
			grid();
		}
	}
	protected void grid()
	{
		
	}

	protected void grdView_RowCommand(object sender, GridViewCommandEventArgs e)
	{
		
	}
}