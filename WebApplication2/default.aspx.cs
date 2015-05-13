using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                lblmsg.Text = "";
            }
        }

        protected void buttoncopytext_Click(object sender, EventArgs e)
        {
            //copy text to label
            lblmsg.Text = ltlmsg.Text;
            buttoncopytext.Enabled = false;
        }

        protected void btnShowSelections_Click(object sender, EventArgs e)
        {
            //clear
            lbltoppings.Text = "";

            //Loop through the list of checkboxes

            foreach (ListItem topping in cblToppings.Items)
            {
                //Check if topping is checked or not.
                if (topping.Selected)
                {
                    lbltoppings.Text += topping.Selected + " ";
                }
            }

            //Display size
            lbltoppings.Text = ddlSize.SelectedIndex.Text;

        }

        protected void cblToppings_selectedIndexChanged(object sender, EventArgs f){
            lbltoppings.Text = "autopost back";
        }

    }
}