using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Agropet.Entidades.Seguridad;
using Agropet.Entidades.Especial;

namespace PetData.Pet
{
    public class PetService
    {
      public List<EntidadMenuWeb> GetMenuWeb(EntidadMenuWeb menu)
      {
        return new PetProvider().GetMenuWeb(menu);
      }

      public List<EntidadBannersWeb> GetBannersWeb(EntidadBannersWeb banner)
      {
        return new PetProvider().GetBannersWeb(banner);
      }
  }
}
