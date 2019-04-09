using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PetData.Pet;
using Agropet.Entidades.Seguridad;
using Agropet.Entidades.Especial;

namespace Agropet.website
{
  public partial class Index : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GetBannersWeb() {
      (this.Master as MasterPet).GetBannersWeb();
    }
  }
}