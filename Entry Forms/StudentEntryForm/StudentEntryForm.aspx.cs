using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace StudentEntryForm
{
    public partial class StudentForm : System.Web.UI.Page
    {
        string constring = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            txtHeight(26);


        }

        protected void AddStudentBtn_Click(object sender, EventArgs e)
        { 
            string Lname = TxtLname.Text;
            string Fname = TxtFname.Text;
            string Mname = TxtMname.Text;
            string gender = radlGender.SelectedValue;
            string email = String.Concat(Fname.ToLower(),".",Lname.ToLower(), "@ctu.edu.ph"); 
            string currAdd = TxtCurAdd.Text;
            string permAdd = TxtPerAdd.Text;
            string elemSchool = TxtElem.Text;
            string junSchool = TxtJunHigh.Text;
            string senSchool = TxtSenHigh.Text;
            string idNum;
            int rowsAffected;
            using (SqlConnection con = new SqlConnection(constring))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO STUD_ENTRY_TABLE(STUD_LASTNAME, STUD_FIRSTNAME, STUD_MIDDLENAME, STUD_EMAIL, STUD_GENDER, STUD_CURADD, STUD_PERADD, STUD_ELEM, STUD_JUNHIGH, STUD_SENHIGH) VALUES (@last, @first, @middle, @email, @gender, @current ,@permanent, @elem, @junior, @senior)", con))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@last", Lname);
                    cmd.Parameters.AddWithValue("@first", Fname);
                    cmd.Parameters.AddWithValue("@middle", Mname);
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@gender", gender);
                    cmd.Parameters.AddWithValue("@current", currAdd);
                    cmd.Parameters.AddWithValue("@permanent", permAdd);
                    cmd.Parameters.AddWithValue("@elem", elemSchool);
                    cmd.Parameters.AddWithValue("@junior", junSchool);
                    cmd.Parameters.AddWithValue("@senior", senSchool);
                    con.Open();

                    rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected < 1)
                    {
                        Response.Write("<script>alert ('Unable to add contact')</script>");
                    }

                    con.Close();
                }

                try
                {
                    using (var db = new SqlConnection(constring))
                    {
                        db.Open();
                        using (var cmd = db.CreateCommand())
                        {
                            cmd.CommandType = CommandType.Text;

                            cmd.CommandText = "SELECT * FROM STUD_ENTRY_TABLE WHERE STUD_LASTNAME = '" + Lname + "' AND  STUD_FIRSTNAME   = '" + Fname + "' ";
                            SqlDataReader rdr = cmd.ExecuteReader();
                            if (rdr.Read())
                            {
                                idNum = rdr["STUD_IDNUM"].ToString();
                                if(rowsAffected>= 1)
                                {
                                    Response.Write("<script>alert ('NEW STUDENT HAS BEEN ADDED!\\n" +
                                        "\\nIdentification Number: "+idNum+"" +
                                        "\\nName: " + Lname + ", " + Fname + " " + Mname.Substring(0, 1) + "." +
                                        "\\nEmail Address: "+email+"')</script>");
                                }

                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                }
            }
            ClearContent();
            txtHeight(30);

        }

        public void ClearContent()
        {
            TxtLname.Text = "";
            TxtFname.Text = "";
            TxtMname.Text = "";
            radlGender.ClearSelection();
            TxtCurAdd.Text = "";
            TxtPerAdd.Text = "";
            TxtElem.Text = "";
            TxtJunHigh.Text = "";
            TxtSenHigh.Text = "";
        }
        public void txtHeight(int high)
        {
            TxtLname.Height = high;
            TxtFname.Height = high;
            TxtMname.Height = high;
            TxtCurAdd.Height = high;
            TxtPerAdd.Height = high;
            TxtElem.Height = high;
            TxtJunHigh.Height = high;
            TxtSenHigh.Height = high;

        }

  
    }
}