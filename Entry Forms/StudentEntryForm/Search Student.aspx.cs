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
    public partial class Search_Student : System.Web.UI.Page
    {
        string constring = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string lastName;
        string firstName;
        string midName;
        string emailG;
        string genderG;
        string curAdd;
        string perAdd;
        string elem;
        string junHigh;
        string senHigh;


        protected void Page_Load(object sender, EventArgs e)
        {
            txtHeight(20);
            theDiv.Visible = false;
        }

        protected void srchStudBtn_Click(object sender, EventArgs e)
        {
            string studID = searchId.Text;
            using (SqlConnection con = new SqlConnection(constring))
            {
                try
                {
                    using (var db = new SqlConnection(constring))
                    {
                        db.Open();
                        using (var cmd = db.CreateCommand())
                        {
                            cmd.CommandType = CommandType.Text;

                            cmd.CommandText = "SELECT * FROM STUD_ENTRY_TABLE WHERE STUD_IDNUM = '" + studID + "' ";
                            SqlDataReader rdr = cmd.ExecuteReader();
                            if (rdr.Read())
                            {

                                theDiv.Visible = true;
                                lastName = rdr["STUD_LASTNAME"].ToString(); ;
                                firstName = rdr["STUD_FIRSTNAME"].ToString(); 
                                midName = rdr["STUD_MIDDLENAME"].ToString(); 
                                emailG = rdr["STUD_EMAIL"].ToString();
                                genderG = rdr["STUD_GENDER"].ToString(); 
                                curAdd = rdr["STUD_CURADD"].ToString(); 
                                perAdd = rdr["STUD_PERADD"].ToString(); 
                                elem = rdr["STUD_ELEM"].ToString(); ; 
                                junHigh = rdr["STUD_JUNHIGH"].ToString(); 
                                senHigh = rdr["STUD_SENHIGH"].ToString();


                                TxtLname.Text = lastName;
                                TxtFname.Text = firstName;
                                TxtMname.Text = midName;

                                if (genderG == "Male")
                                {
                                    radlGender.SelectedIndex = 0;
                                }
                                else
                                {
                                    radlGender.SelectedIndex = 1;
                                }
                                TxtCurAdd.Text = curAdd;
                                TxtPerAdd.Text = perAdd;
                                TxtElem.Text = elem;
                                TxtJunHigh.Text = junHigh;
                                TxtSenHigh.Text = senHigh;

                            }
                            else
                            {
                                Response.Write("<script>alert ('STUDENT NOT REGISTERED!')</script>");
                            }

                        }

                    }

                }
                catch (Exception ex)
                {
                }
            }
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

        protected void btnDel_Click(object sender, EventArgs e)
        {
            using (SqlConnection conx = new SqlConnection(constring))
            {
                string studID = searchId.Text;
                string query = "DELETE FROM STUD_ENTRY_TABLE WHERE STUD_IDNUM = " + studID + "";
                conx.Open();
                SqlCommand cmd = new SqlCommand(query, conx);
                int rowsAffected = cmd.ExecuteNonQuery();
                if (rowsAffected >= 1)
                {
                    Response.Write("<script>alert ('STUDENT WITH ID NUMBER (" + studID + ") HAS BEEN DELETED!')</script>");
                }
                conx.Close();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            theDiv.Visible = true;
            string Lname = TxtLname.Text;
            string Fname = TxtFname.Text;
            string genderl = radlGender.SelectedValue;
            string emaill = String.Concat(Fname.ToLower(), ".", Lname.ToLower(), "@ctu.edu.ph");
            string idNum = searchId.Text;

      
                using (var db = new SqlConnection(constring))
                {
                    db.Open();
                    using (var cmd = db.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "UPDATE STUD_ENTRY_TABLE SET " +
                    "STUD_LASTNAME = @LN, " +
                    "STUD_FIRSTNAME= @FN, " +
                    "STUD_MIDDLENAME= @MN, " +
                    "STUD_EMAIL = @EML, " +
                    "STUD_GENDER = @GEN, " +
                    "STUD_CURADD = @CUR, " +
                    "STUD_PERADD = @PER, " +
                    "STUD_ELEM = @ELEM, " +
                    "STUD_JUNHIGH = @JUN, " +
                    "STUD_SENHIGH = @SEM" +
                    " WHERE STUD_IDNUM = @ID";

                    cmd.Parameters.AddWithValue("@LN", TxtLname.Text);
                    cmd.Parameters.AddWithValue("@FN", TxtFname.Text);
                    cmd.Parameters.AddWithValue("@MN", TxtMname.Text);
                    cmd.Parameters.AddWithValue("@EML", emaill);
                    cmd.Parameters.AddWithValue("@GEN", genderl);
                    cmd.Parameters.AddWithValue("@CUR", TxtCurAdd.Text);
                    cmd.Parameters.AddWithValue("@PER", TxtPerAdd.Text);
                    cmd.Parameters.AddWithValue("@ELEM", TxtElem.Text);
                    cmd.Parameters.AddWithValue("@JUN", TxtJunHigh.Text);
                    cmd.Parameters.AddWithValue("@SEM", TxtSenHigh.Text);
                    cmd.Parameters.AddWithValue("@ID", idNum);
                    var ctr = cmd.ExecuteNonQuery();


                    if (ctr >= 1)
                    {
                        Response.Write("<script>alert ('STUDENT WITH ID NUMBER (" + idNum + ") HAS BEEN UPDATED!')</script>");
                    }
                    }
                    db.Close();
                }

            txtHeight(24);
        }
    }
}