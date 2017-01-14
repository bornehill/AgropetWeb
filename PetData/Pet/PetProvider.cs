﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.Serialization;
using AgroPET.Datos.Catalogos;
using Agropet.Entidades.Seguridad;
using Agropet.Entidades.Especial;

namespace PetData.Pet
{
    internal class PetProvider
    {
      internal List<EntidadMenuWeb> GetMenuWeb(EntidadMenuWeb menu)
      {
        CatalogosExtDA catalogoGenerico = new CatalogosExtDA();
        return catalogoGenerico.ObtenerMenuWeb(menu);
      }

      internal List<EntidadBannersWeb> GetBannersWeb(EntidadBannersWeb banner)
      {
        CatalogosExtDA catalogoGenerico = new CatalogosExtDA();
        return catalogoGenerico.ObtenerBannersWeb(banner);
      }
  }
}
