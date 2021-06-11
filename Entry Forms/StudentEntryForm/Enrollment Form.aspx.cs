﻿using System;
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
    public partial class Enrollment_Form : System.Web.UI.Page
    {

        string constring = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string courCode;
        string courProg;
        int years;

        protected void Page_Load(object sender, EventArgs e)
        {
            theDiv.Visible = false;


        }

        protected void srchStudBtn_Click(object sender, EventArgs e)
        {
            string idnum = searchId.Text;
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

                            cmd.CommandText = "SELECT * FROM STUD_ENTRY_TABLE WHERE STUD_IDNUM = '" + idnum + "' ";
                            SqlDataReader rdr = cmd.ExecuteReader();
                            if (rdr.Read())
                            {
                                theDiv.Visible = Visible;
                                TxtLname.Text = rdr["STUD_LASTNAME"].ToString();
                                TxtFname.Text = rdr["STUD_FIRSTNAME"].ToString();
                                TxtMname.Text = rdr["STUD_MIDDLENAME"].ToString();
                                string gender = rdr["STUD_GENDER"].ToString();
                                if (gender == "Male")
                                {
                                    radlGender.SelectedIndex = 0;
                                }
                                else
                                {
                                    radlGender.SelectedIndex = 1;
                                }
                                showCourData();
                            }

                        }

                    }

                }
                catch (Exception ex)
                {
                }
            }
        }
        public void showCourData()
        {
            SqlConnection con = new SqlConnection(constring);
            con.Open();

            SqlCommand com = new SqlCommand("select *from COUR_ENTRY_TABLE", con);
            // table name   
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);  // fill dataset  
            ddlCourse.DataTextField = ds.Tables[0].Columns["COUR_DESC"].ToString(); // text field name of table dispalyed in dropdown       
            ddlCourse.DataValueField = ds.Tables[0].Columns["COUR_CODE"].ToString();
            // to retrive specific  textfield name   
            ddlCourse.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist  
            ddlCourse.DataBind();  //binding dropdownlist  

            
        }

        protected void selectCour_Click(object sender, EventArgs e)
        {
            theDiv.Visible = Visible;
            courCode = ddlCourse.SelectedValue;

            try
            {
                using (var db = new SqlConnection(constring))
                {
                    db.Open();
                    using (var cmd = db.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;

                        cmd.CommandText = "SELECT * FROM COUR_ENTRY_TABLE WHERE COUR_CODE = '" + courCode + "' ";
                        SqlDataReader rdr = cmd.ExecuteReader();
                        if (rdr.Read())
                        {
                                TxtUnit.Text = rdr["COUR_UNIT"].ToString();
                                courProg = rdr["COUR_PROG"].ToString();
                                string strYr = rdr["COUR_YEAR"].ToString();
                                years = Convert.ToInt32(strYr);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
            }

            if (courProg.Equals("Day"))
            {
                ddlCourProg.Items.Clear();
                ddlCourProg.Items.Add(new ListItem("Day","Day"));
            }
            else if (courProg.Equals("Evening"))
            {
                ddlCourProg.Items.Clear();
                ddlCourProg.Items.Add(new ListItem("Evening", "Evening"));
            }
            else
            {
                ddlCourProg.Items.Clear();
                ddlCourProg.Items.Add(new ListItem("Day", "Day"));
                ddlCourProg.Items.Add(new ListItem("Evening", "Evening"));
            }

            ddlCourYrLvl.Items.Clear();
            for (int x= 0; x <years; x++)
            {
                ddlCourYrLvl.Items.Insert(x, new ListItem(""+(x+1)));
            }

            ddlCourSem.Items.Clear();
            ddlCourSem.Items.Add(new ListItem("First Semester", "1"));
            ddlCourSem.Items.Add(new ListItem("Second Semester", "2"));
            showInstructors();
        }

        protected void srchInsttuc_Click(object sender, EventArgs e)
        {
            theDiv.Visible = Visible;
        }

        public void showInstructors()
        {
            SqlConnection con = new SqlConnection(constring);
            con.Open();

            SqlCommand com = new SqlCommand("select *from INST_ENTRY_TABLE", con);
            // table name   
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);  // fill dataset  

            ddlInstruc.DataTextField = ds.Tables[0].Columns["INST_FULLNAME"].ToString(); // text field name of table dispalyed in dropdown       
            ddlInstruc.DataValueField = ds.Tables[0].Columns["INST_IDNUM"].ToString();
            // to retrive specific  textfield name   
            ddlInstruc.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist  
            ddlInstruc.DataBind();  //binding dropdownlist  

        }
    }
}

  