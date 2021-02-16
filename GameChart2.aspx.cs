using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GameChart2 : System.Web.UI.Page
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

                SS = "Select Name,NoofDays from GameMaster Where Id = " + Id + "";
                Dt = new clsDataAccess().GetDataTable(SS);
                if (Dt.Rows.Count > 0)
                {
                    txtName.InnerHtml = Dt.Rows[0]["Name"].ToString();
                    NoofDays = 100 / Dt.Rows[0]["NoofDays"].objectParse().IntParse();
                }



                SS = "Select '" + NoofDays.ToString() + "%'  as W,*,convert(varchar,RDate,107) as DT from DeclareResult where GameId =" + Id + " order by RDate Desc";
                Dt = new clsDataAccess().GetDataTable(SS);
                rptData.DataSource = Dt;
                rptData.DataBind();


            }
            catch (Exception ex)
            {
                ClsGeneral.ShowErrMsg(ex.Message);
            }
        }
    }
}