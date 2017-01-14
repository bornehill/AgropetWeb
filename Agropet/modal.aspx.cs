using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Security.Application;

namespace Agropet.website
{
  public partial class modal : System.Web.UI.Page
  {
    public String sScreenId = "";
    public String sParameters = "";

    private static string GetSafeQueryString(string inputText)
    {
      return Encoder.UrlPathEncode(inputText);
    }

    private void Page_PreInit(Object sender, EventArgs eventArgs)
    {
      try
      {
        Page.Validate();
        if (Page.IsValid)
        {
          Int32 iPrimero = 0;
          for (var i = 0; i < Request.QueryString.Count; i++)
          {
            if (Request.QueryString.Keys[i] == "sScreenId")
              sScreenId = Request.QueryString[i] + (Request.QueryString.Keys.Count > 1 ? "?" : "");
            else
            {
              if (iPrimero == 0)
              {
                sParameters = sParameters.Trim() + Request.QueryString.Keys[i] + "=" + Request.QueryString[i];
                iPrimero = 1;
              }
              else
                sParameters = sParameters.Trim() + "&" + Request.QueryString.Keys[i] + "=" + Request.QueryString[i];
            }
          }

          frmMain.Attributes["src"] = GetSafeQueryString(sScreenId + sParameters);
        }
      }
      catch (Exception)
      {
        throw;
      }
    }
  }
}