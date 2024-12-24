using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

/// <summary>
/// Summary description for Common
/// </summary>
public class Common
{

	public string ConnString = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
	public SqlCommand cmd = new SqlCommand();
	public SqlConnection Conn = new SqlConnection();

	public Common()
	{
		//
		// TODO: Add constructor logic here
		//
	}

	public DataSet GetData(string id, string TabName,string fieldname)
	{
		Conn = new SqlConnection(ConnString);
		Conn.Open();
		SqlDataAdapter adp = new SqlDataAdapter("select * from " + TabName + " where " + fieldname + " = " + id, Conn);
		DataSet ds = new DataSet();
		adp.Fill(ds);
		return ds;
	}

	public DataSet GetLeave(string query)
	{
		Conn = new SqlConnection(ConnString);
		Conn.Open();
		SqlDataAdapter adp = new SqlDataAdapter(query, Conn);
		DataSet ds = new DataSet();
		adp.Fill(ds);
		return ds;
	}

}