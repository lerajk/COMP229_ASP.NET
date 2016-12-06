using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "Number of Visits:   " + Application["visitor"].ToString();
    }

    protected void FetchResults(object sender, EventArgs e)
    {
        //Creating Connection 
        string connectionstring = "Server = (localdb)\\MSSQLLocalDB; Database = Recepies_Two;" + "Integrated Security=True";
        SqlConnection connection = new SqlConnection(connectionstring);

        //Query from Database
        string strquery = "select * from Recepies_Two";

        SqlCommand command = new SqlCommand(strquery, connection);

        connection.Open();

        SqlDataReader reader = command.ExecuteReader();
        Repeater.DataSource = reader;
        Repeater.DataBind();
        reader.Close();

        connection.Close();


    }
}