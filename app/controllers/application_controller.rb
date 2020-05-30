class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters,if: :devise_controller? 

	private

  def after_sign_in_path_for(resource)
    case resource
    when Admin
      admin_shops_path
    when Member
      shops_path
    end
  end

  def after_sign_up_path_for(resource)
    case resource
    when :admin
      new_admin_session_path
    when :member
      shops_path
    end
  end

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up,keys:[:email, :first_name, :last_name, :phone_number])
	end
end
