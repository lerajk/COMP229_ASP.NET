using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SearchResults(object sender, EventArgs e)
    {
        //Creating Connection 
        string connectionstring = "Server = (localdb)\\MSSQLLocalDB; Database = Recepies_Two;" + "Integrated Security=True";
        SqlConnection connection = new SqlConnection(connectionstring);
        string strquery = "SELECT * FROM Recepies_Two WHERE Submitted_By like CONCAT('%',@input, '%') or Recepie_Name like CONCAT('%',@input, '%') ";
        SqlCommand command = new SqlCommand(strquery, connection);



        //Query from Database: Initial
        //string strquery = "SELECT Submitted_By FROM Recepies WHERE CONTAINS((Submitted_By), @input); ";

        //Query with multiple search box
        //string strquery = "SELECT * FROM Recepies_Two WHERE Submitted_By = @input or Recepie_Name = @input or Type = @input";

        //Partial Match with Submitted_By
        //string strquery = "SELECT * FROM Recepies_Two WHERE Submitted_By like CONCAT('%',@input, '%') ";

        // Partial Match with Submitted_By and Recepie_Name
        //string strquery = "SELECT * FROM Recepies_Two WHERE Submitted_By like CONCAT('%',@input, '%') or Recepie_Name like CONCAT('%',@input, '%') ";


        // Partial Match with Submitted_By and Recepie_Name + Private Integration
        //string strquery = "SELECT * FROM Recepies_Two WHERE Type = 'Private' and Submitted_By like CONCAT('%',@input, '%') or Recepie_Name like CONCAT('%',@input, '%') ";


        if (Checkbox1.Checked == true)
        {

            //strquery  = "SELECT * FROM Recepies_Two WHERE Type = 'Private' and Submitted_By like CONCAT('%',@input, '%') or Recepie_Name like CONCAT('%',@input, '%') ";
            command.CommandText = "SELECT * FROM Recepies_Two WHERE Type = 'Private' and (Submitted_By like CONCAT('%',@input, '%') or Recepie_Name like CONCAT('%',@input, '%')) ";



        }
       
    

        //SqlCommand command = new SqlCommand(strquery, connection);

        connection.Open();

        command.Parameters.AddWithValue("@input", TextBox1.Text);
        //command.ExecuteNonQuery();

        SqlDataReader reader = command.ExecuteReader();
        RepeaterTwo.DataSource = reader;
        RepeaterTwo.DataBind();
        reader.Close();
        connection.Close();


    }
}