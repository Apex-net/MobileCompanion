﻿namespace ReusableApplications
{
    using System;
    using System.ServiceModel.Activation;
    using System.Web;
    using System.Web.Routing;

    public class Global : HttpApplication
    {
        public void Application_Start(object sender, EventArgs e)
        {
            this.RegisterRoutes();
        }

        private void RegisterRoutes()
        {
            WebServiceHostFactory factory = new WebServiceHostFactory();
            RouteTable.Routes.Add(new ServiceRoute(string.Empty, factory, typeof(ApexNet.DRY.News.Service)));
        }
    }
}
