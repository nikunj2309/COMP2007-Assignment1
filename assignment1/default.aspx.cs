using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignment1
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //If page submitted with result, make summary visible.
            if (IsPostBack)
            {
                summary.Visible = true;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Calculate total number of games won and lost.
            int gw = 0, gl = 0;
            if (rblResult1.SelectedValue == "1") { gw++; } else { gl++; }
            if (rblResult2.SelectedValue == "1") { gw++; } else { gl++; }
            if (rblResult3.SelectedValue == "1") { gw++; } else { gl++; }
            if (rblResult4.SelectedValue == "1") { gw++; } else { gl++; }

            //Display total number of games won.
            lblGW.Text = gw.ToString();

            //Display total number of game Lost.
            lblGL.Text = gl.ToString();

            //Calculate the percentage of winning.
            double wp = gw / 4.0 * 100;

            //Display the percentage of winnig.
            lblWP.Text = wp.ToString();

            //Calculate total number of points scored.
            int tps = int.Parse(txtPScored1.Text) +
                int.Parse(txtPScored2.Text) +
                int.Parse(txtPScored3.Text) +
                int.Parse(txtPScored4.Text);

            //Display total number of points scored.
            lblTPS.Text = tps.ToString();

            //Calculate total points allowed.
            int tpa = int.Parse(txtPAllowed1.Text) +
                int.Parse(txtPAllowed2.Text) +
                int.Parse(txtPAllowed3.Text) +
                int.Parse(txtPAllowed4.Text);

            //Display total number of points scored.
            lblTPA.Text = tpa.ToString();

            //Calculate total Spectators.
            int ts = int.Parse(txtSpec1.Text) +
                int.Parse(txtSpec2.Text) +
                int.Parse(txtSpec3.Text) +
                int.Parse(txtSpec4.Text);

            //Display total number of Spectators.
            lblTS.Text = ts.ToString();

            //Calculate Differential of Points.
            int dop = tps - tpa;

            //Display Differential of Points.
            lblDOP.Text = dop.ToString();

            //Calculate Average Spectators.
            int aspec = ts / 4;

            //Display Average Spectators.
            lblAS.Text = aspec.ToString();

        }
    }
}