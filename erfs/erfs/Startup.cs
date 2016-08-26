using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(erfs.Startup))]
namespace erfs
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
