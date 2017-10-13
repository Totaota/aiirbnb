class OmniauthCallBacksController < Devise::OmniauthCallBacksController
    
   def facebook
       @user = User.from_omniauth(request.env["omniauth.atuh"])
       if @user.persisted?
           sign_in_and_redirect @user, :event => :authentification
           set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
       else
           session["devise.facebook_data"] = request.env["omniauth.auth"]
           redirect_to new_user_registration_url
       end
   end
   
end