ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :email, :encrypted_password, :reset_password_token,:reset_password_sent_at, :remember_created_at, :sign_in_count,:current_sign_in_at, :last_sign_in_at, :current_sign_in_ip,:last_sign_in_ip, :created_at, :updated_at, :first_name

action_item do
  link_to 'Invite New User', new_invitation_admin_users_path
end

collection_action :new_invitation do
  @user = User.new
end 

collection_action :send_invitation, :method => :post do
  @user = User.invite!(:email =>params[:user]["email"], type: params[:user][:type], first_name: params[:user][:first_name])
  if @user.errors.empty?
    flash[:success] = "User has been successfully invited." 
    redirect_to admin_users_path
  else
    messages = @user.errors.full_messages.map { |msg| msg }.join
    flash[:error] = "Error: " + messages
    redirect_to new_invitation_admin_users_path
  end
end
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
