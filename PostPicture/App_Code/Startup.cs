using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(_8185_PostPicture.Startup))]
namespace _8185_PostPicture
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
