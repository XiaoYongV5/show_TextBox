using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 可输入的下拉框
{
	public partial class _Default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				List<string> list = new List<string>()
				{ 
                "湖北武汉", "湖北咸宁",  "湖北孝感", "湖北安陆", "湖北恩施" 
			    };
				foreach (var item in list)
				{
					DropDownList.Items.Add(item);
				}
			}
		}
	}
}
