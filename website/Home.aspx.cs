using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Hobbies_Click(object sender, EventArgs e)
    {
        switch (Gender.SelectedIndex)
        {
            case 0:
                Response.Redirect("HobbiesBoys.aspx");
                break;

            case 1:
                Response.Redirect("HobbiesGirls.aspx");
                break;

            default:
                Response.Redirect("HobbiesBoys.aspx");
                break;
        }
    }

    protected void Places_Click(object sender, EventArgs e)
    {
        switch (Gender.SelectedIndex)
        {
            case 0:
                Response.Redirect("PlacesBoys.aspx");
                break;

            case 1:
                Response.Redirect("PlacesGirls.aspx");
                break;

            default:
                Response.Redirect("PlacesBoys.aspx");
                break;
        }
    }

    protected void Blog_Click(object sender, EventArgs e)
    {
        Response.Redirect("Blog.aspx");
    }
}