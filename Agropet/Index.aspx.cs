using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PetData.Pet;

namespace Agropet.website
{
    public partial class Index : System.Web.UI.Page
    {
      protected void Page_Load(object sender, EventArgs e)
      {

      }

      protected void GetMenuWeb() {
        PetService service = new PetService();
        var menus = service.GetMenuWeb(0, "");
        foreach (var menu in menus) {
          var submenu = service.GetMenuWeb(menu.MenuId, menu.Menu);
          if (submenu.Count > 0)
          {
            Response.Write("<li class=\"dropdown\">");
            Response.Write("<a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\" "+menu.MenuId.ToString()+" \">"+menu.Menu+"<span class=\"caret\"></span></a>");
            Response.Write("<ul class=\"dropdown-menu\">");
            foreach (var sub in submenu)
            {
              Response.Write("<li><a href=\" "+sub.MenuId+" \">"+sub.Menu+"</a></li>");
            }
            Response.Write("</ul>");
            Response.Write("</li>");
          }
          else {
            Response.Write("<li><a href=\" "+menu.MenuId+" \">"+menu.Menu+"</a></li>");
          }
        }
    }
  }
}