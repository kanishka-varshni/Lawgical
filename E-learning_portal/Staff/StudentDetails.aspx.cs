using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;
using System.IO;
using System.Data;


public partial class Staff_StudentDetails : System.Web.UI.Page
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
		Conn = new SqlConnection(ConnString);
		Conn.Open();
        SqlDataAdapter adp = new SqlDataAdapter("select s.ID,s.stu_id,s.Password,s.stu_name'Name',d.Name'department',s.year,s.mobile,s.email,s.date_of_create,s.status from student s join Department d on s.department=d.ID", Conn);
		DataSet st = new DataSet();
		adp.Fill(st);
		grd_show.DataSource = st;
		grd_show.DataBind();

		Conn.Close();
	}	
}