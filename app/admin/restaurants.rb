ActiveAdmin.register Restaurant do

 permit_params :name, :price, :address, :city, :zipcode, :cuisine, :foodly_rating, :yelp_rating, :yelp_url, :newspaper_rating, :newspaper_url, :infatuation_rating, :infatuation_url, :google_rating, :google_url
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
