class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def facebook
    p('===========================')
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
      @user.fb_token = @oauth.get_app_access_token
      sign_in_and_redirect @user, event: :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, kind: "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def failure
    redirect_to root_path
  end
end
