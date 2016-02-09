ActiveAdmin.register Poll do
	scope_to :current_user
	actions :all, except: [:new]
	before_filter :only => [:show] do
	  @poll = Poll.friendly.find(params[:id])
	end


# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
