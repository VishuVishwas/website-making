using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            try
            {
                string SS = "";
                DataTable Dt;

                SS = "Select Id,Name from GameMaster where GameType=1";
                Dt = new clsDataAccess().GetDataTable(SS);
                rptGames.DataSource = Dt;
                rptGames.DataBind();
                rptChartZone.DataSource = Dt;
                rptChartZone.DataBind();

                SS = "Select Id,Name from GameMaster where GameType=2";
                Dt = new clsDataAccess().GetDataTable(SS);
                rptStarLinePanel.DataSource = Dt;
                rptStarLinePanel.DataBind();

                SS = "select DR.*,G.Name,FORMAT(G.OpenTime,'hh:mm tt') as OT,convert(varchar(5),RDate,107) as DT from DeclareResult DR left join GameMaster G on G.Id=DR.GameId where convert(varchar,RDate,112) = '" + DateTime.UtcNow.AddMinutes(330).AddDays(-1).ToString("yyyyMMdd") + "' and G.GameType=2";
                Dt = new clsDataAccess().GetDataTable(SS);
                rptYesterdayresult.DataSource = Dt;
                rptYesterdayresult.DataBind();

                //SS = "select DR.*,G.Name,convert(varchar,G.OpenTime,108) as OT,convert(varchar,RDate,107) as DT from DeclareResult DR left join GameMaster G on G.Id=DR.GameId where convert(varchar,RDate,112) = '" + DateTime.UtcNow.AddMinutes(330).ToString("yyyyMMdd") + "' and G.GameType=2";
                SS = "Select G.Id,G.Name,FORMAT(G.OpenTime,'hh:mm tt') as OT,FORMAT(G.CloseTime,'hh:mm tt') as CT, ";
                SS += " (Select Top 1 PannaNo1 From DeclareResult DR Where DR.GameId = G.Id and convert(varchar, RDate,112) = '" + DateTime.UtcNow.AddMinutes(330).ToString("yyyyMMdd") + "') As PannaNo1, ";
                SS += " (Select Top 1 DigitNo1 From DeclareResult DR Where DR.GameId = G.Id and convert(varchar, RDate, 112) = '" + DateTime.UtcNow.AddMinutes(330).ToString("yyyyMMdd") + "') As DigitNo1, ";
                SS += " (Select Top 1 DigitNo2 From DeclareResult DR Where DR.GameId = G.Id and convert(varchar, RDate, 112) = '" + DateTime.UtcNow.AddMinutes(330).ToString("yyyyMMdd") + "') As DigitNo2, ";
                SS += " (Select Top 1 PannaNo2 From DeclareResult DR Where DR.GameId = G.Id and convert(varchar, RDate, 112) = '" + DateTime.UtcNow.AddMinutes(330).ToString("yyyyMMdd") + "') As PannaNo2 ";
                SS += " from GameMaster G ";
                SS += " where G.GameType = 2 ";
                Dt = new clsDataAccess().GetDataTable(SS);
                rptTodayResult.DataSource = Dt;
                rptTodayResult.DataBind();

                //SS = "select DR.*,G.Name,convert(varchar,G.OpenTime,108) as OT,convert(varchar,RDate,107) as DT from GameMaster G left join  DeclareResult DR on G.Id=DR.GameId where convert(varchar,RDate,112) = '" + DateTime.UtcNow.AddMinutes(330).ToString("yyyyMMdd") + "' and G.GameType=1";
                SS = "Select G.Id,G.Name,FORMAT(G.OpenTime,'hh:mm tt') as OT,FORMAT(G.CloseTime,'hh:mm tt') as CT, ";
                SS += " (Select PannaNo1 From DeclareResult DR Where DR.GameId = G.Id and convert(varchar, RDate,112) = '" + DateTime.UtcNow.AddMinutes(330).ToString("yyyyMMdd") + "') As PannaNo1, ";
                SS += " (Select DigitNo1 From DeclareResult DR Where DR.GameId = G.Id and convert(varchar, RDate, 112) = '" + DateTime.UtcNow.AddMinutes(330).ToString("yyyyMMdd") + "') As DigitNo1, ";
                SS += " (Select DigitNo2 From DeclareResult DR Where DR.GameId = G.Id and convert(varchar, RDate, 112) = '" + DateTime.UtcNow.AddMinutes(330).ToString("yyyyMMdd") + "') As DigitNo2, ";
                SS += " (Select PannaNo2 From DeclareResult DR Where DR.GameId = G.Id and convert(varchar, RDate, 112) = '" + DateTime.UtcNow.AddMinutes(330).ToString("yyyyMMdd") + "') As PannaNo2 ";
                SS += " from GameMaster G ";
                SS += " where G.GameType = 1 ";
                Dt = new clsDataAccess().GetDataTable(SS);
                rptLiveResult.DataSource = Dt;
                rptLiveResult.DataBind();

                divLoading.Visible = false;
                for (int i = 0; i < Dt.Rows.Count; i++)
                {
                    string PannaNo1 = Dt.Rows[i]["PannaNo1"].ToString();
                    string DigitNo1 = Dt.Rows[i]["DigitNo1"].ToString();
                    string PannaNo2 = Dt.Rows[i]["PannaNo2"].ToString();
                    string DigitNo2 = Dt.Rows[i]["DigitNo2"].ToString();
                    DateTime OT = DateTime.Parse(Dt.Rows[i]["OT"].ToString());
                    DateTime CT = DateTime.Parse(Dt.Rows[i]["CT"].ToString());
                    DateTime DtCurr = DateTime.UtcNow.AddMinutes(330);
                    if (DtCurr.AddMinutes(-5).TimeOfDay <= OT.TimeOfDay && DtCurr.AddMinutes(5).TimeOfDay >= OT.TimeOfDay)
                    {
                        if (PannaNo1.Trim().Length == 0)
                        {
                            PannaNo1 = "Loading...";
                        }
                        else
                        {
                            PannaNo1 = DigitNo1 + "-" + PannaNo1;
                        }
                        divLoading.Visible = true;
                        txtGameName.InnerHtml = Dt.Rows[i]["Name"].ToString();
                        txtLoading.InnerHtml = PannaNo1;
                        break;
                    }
                }


                SS = "select *,format(OpenTime,'hh:mm tt') as OT,format(CloseTime,'hh:mm tt') as CT from GameMaster where GameType=1 order by SequenceNo";
                Dt = new clsDataAccess().GetDataTable(SS);
                rptGlobalTimeTable.DataSource = Dt;
                rptGlobalTimeTable.DataBind();

                SS = "select *,format(OpenTime,'hh:mm tt') as OT,format(CloseTime,'hh:mm tt') as CT from GameMaster where GameType=2 order by SequenceNo";
                Dt = new clsDataAccess().GetDataTable(SS);
                rptmyGamesTimeTable.DataSource = Dt;
                rptmyGamesTimeTable.DataBind();

                SS = "select DR.*,convert(varchar,RDate,107) as RD,G.Name from DeclareResult DR left join GameMaster G on G.Id=DR.GameId";
                SS += " where convert(varchar, RDate,112)= '" + DateTime.UtcNow.AddMinutes(330).ToString("yyyyMMdd") + "' and G.GameType=1 order by RDate Desc";
                Dt = new clsDataAccess().GetDataTable(SS);
                rptpanelChart.DataSource = Dt;
                rptpanelChart.DataBind();

                SS = "select * from CompanyProfile";
                Dt = new clsDataAccess().GetDataTable(SS);
                if (Dt.Rows.Count > 0)
                {
                    lnkIOSLink.HRef = Dt.Rows[0]["IOSLink"].ToString();
                    lnkIOSLink1.HRef = Dt.Rows[0]["IOSLink"].ToString();
                    lnkAndroidLink.HRef = Dt.Rows[0]["AndroidLink"].ToString();
                    lnkAndroidLink1.HRef = Dt.Rows[0]["AndroidLink"].ToString();
                }
            }
            catch (Exception ex)
            {
                ClsGeneral.ShowErrMsg(ex.Message);
            }
        }
    }

    [WebMethod]
    public static string SendLink(string Mobile)
    {
        string Data = "";

        string SS = "select AndroidLink,IOSLink from CompanyProfile";
        DataTable Dt = new clsDataAccess().GetDataTable(SS);
        if (Dt.Rows.Count > 0)
        {
            string AndroidLink = Dt.Rows[0]["AndroidLink"].ToString();
            string IOSLink = Dt.Rows[0]["IOSLink"].ToString();

            string MsgBody = "Hello ! Download App for Earn Money " + Environment.NewLine;
            SS += " Android App Link :" + AndroidLink + Environment.NewLine;
            MsgBody += " Ios App Link :" + IOSLink;

            ClsSendSMS.SendSMSWeb(Mobile, MsgBody);
            Data = "1#App Download Links Succesfully Sends To Your Mobile..!";
        }
        else
        {
            Data = "0#Something Went wrong....!";
        }

        return Data;
    }
}