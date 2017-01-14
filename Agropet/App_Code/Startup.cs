using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Agropet.Startup))]
namespace Agropet
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
