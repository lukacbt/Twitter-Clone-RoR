class RegistrationsController < Devise::RegistrationsController


  private

  def account_update_params
    params.require(:user).permit(:full_name, :username, :email, :password, :password_confirmation, :current_password)    
  end

  def sign_up_params
    params.require(:user).permit(:full_name, :username, :email, :password, :password_confirmation)    
  end
end