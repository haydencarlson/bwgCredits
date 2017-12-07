ActiveAdmin.register Offer do

permit_params :url, :title, :description, :image_url, :reward_amount
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
