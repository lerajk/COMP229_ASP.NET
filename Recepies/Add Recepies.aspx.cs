using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;



public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void AddData(object sender, EventArgs e)

    {
    

        string connectionstring = "Server = (localdb)\\MSSQLLocalDB; Database = Recepies_Two;" + "Integrated Security=True";
        SqlConnection connection = new SqlConnection(connectionstring);

 
        connection.Open();

        string strquery = "INSERT INTO RECEPIES_TWO (Recepie_Name,Submitted_By, Cooking_Time, Portions, Category, Type, Description ) VALUES (@Recepie_Name, @Submit, @CookingTime, @Portions, @Category, @Type, @Description)";

        SqlCommand command = new SqlCommand(strquery, connection);
        command.Parameters.AddWithValue("@Recepie_Name", txtstate.Text);
        command.Parameters.AddWithValue("@Submit", TextBox1.Text);
        command.Parameters.AddWithValue("@CookingTime", TextBox2.Text);
        command.Parameters.AddWithValue("@Portions", TextBox3.Text);
        command.Parameters.AddWithValue("@Category", DropDownList1.SelectedItem.Text);
        command.Parameters.AddWithValue("@Type", DropDownList2.SelectedItem.Text);
        command.Parameters.AddWithValue("@Description", TextBox4.Text);
        command.ExecuteNonQuery();


    }
}