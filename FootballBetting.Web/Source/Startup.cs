using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FootballBetting.Web.Startup))]
namespace FootballBetting.Web
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
