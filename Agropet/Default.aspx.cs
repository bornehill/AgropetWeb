using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PetData.Pet;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        PetService service = new PetService();
        var menus = service.GetMenuWeb(0, "");
    }
}