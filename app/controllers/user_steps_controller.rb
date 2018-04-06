class UserStepsController < ApplicationController
  include Wicked::Wizard
  steps :second, :third

  def show
    @user = current_user
    render_wizard
  end

  def update
    @user = current_user
    @user.attriutes = params[:user]
    render_wizard @user
  end

  private

  def finish_wizard_path
    users_path(current_user)
  end

  def current_user
    User.find_by(id: session[:user_id])
  end
end
