using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FootballBettingWeb.Startup))]
namespace FootballBettingWeb
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
