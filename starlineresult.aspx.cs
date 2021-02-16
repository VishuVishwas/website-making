using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class starlineresult : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            try
            {
                string SS = "";
                DataTable Dt;
                int NoofDays = 0;
                int Id = Request.QueryString["Id"].objectParse().IntParse();

                //SS = "Select Name,NoofDays from GameMaster Where Id = " + Id + "";
                //Dt = new clsDataAccess().GetDataTable(SS);
                //if (Dt.Rows.Count > 0)
                //{
                //    txtName.InnerHtml = Dt.Rows[0]["Name"].ToString();
                //    NoofDays = 100 / Dt.Rows[0]["NoofDays"].objectParse().IntParse();
                //}

                txtName.InnerHtml = "Starline Result";

                //SS = "Select '" + NoofDays.ToString() + "%'  as W,*,convert(varchar,RDate,107) as DT from DeclareResult where GameId =" + Id + " order by RDate Desc";
                //Dt = new clsDataAccess().GetDataTable(SS);
                //rptData.DataSource = Dt;
                //rptData.DataBind();

                SS = "Select  GameId, format(OpenTime,'hh:mm tt')  As OTime,Convert(Varchar,RDate,106) As ResultDate,PannaNo1,DigitNo1 ";
                SS+= " From DeclareResult DR Inner Join GameMaster GM On GM.Id = DR.GameId Where GM.GameType = 2 Order By RDate desc ";
                Dt = new clsDataAccess().GetDataTable(SS);
                DataTable DtMain = new DataTable();

                DtMain.Columns.Add("ResultDate");
                DataTable DtFinal = Dt.DefaultView.ToTable(true, "OTime");
                DataTable DtFinal2 = Dt.DefaultView.ToTable(true, "ResultDate");
                for (int i = 0; i < DtFinal.Rows.Count; i++)
                {
                    DtMain.Columns.Add(DtFinal.Rows[i][0].ToString(), typeof(string));
                }
                for (int i = 0; i < DtFinal2.Rows.Count; i++)
                {
                    DtMain.Rows.Add();
                    string _Date = DtFinal2.Rows[i]["ResultDate"].objectParse();
                    DtMain.Rows[DtMain.Rows.Count - 1]["ResultDate"] = _Date;
                    for (int j = 1; j < DtMain.Columns.Count; j++)
                    {
                        string _ColName = DtMain.Columns[j].ColumnName.objectParse();
                        string _Val = "";
                        DataRow[] Dr = Dt.Select("OTime = '" + _ColName + "' and ResultDate = '" + _Date + "'");
                        if (Dr.Length > 0)
                        {
                            _Val = Dr[0]["PannaNo1"].objectParse() + " | " + Dr[0]["DigitNo1"].objectParse();
                        }
                        DtMain.Rows[DtMain.Rows.Count - 1][j] = _Val;
                    }
                }
              
                Grid1.DataSource = DtMain;
                Grid1.DataBind();
            }
            catch (Exception ex)
            {
                ClsGeneral.ShowErrMsg(ex.Message);
            }
        }
    }
}