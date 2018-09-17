class RegistrationStepsController < ApplicationController

  include Wicked::Wizard
  steps :personal, :formal

  def show
  	@user = current_user
  	render_wizard
  end

  def update
  	@user = current_user
  	@user.attributes(user_params)
  	render_wizard @user
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :surname, :sex, :badge_number, :address, :city, :telephone_number, :province, :remember_me, :course_id, :avatar)
  end

end