class Admin::SessionsController < Admin::AdminController
  skip_before_filter :require_login

  def create
    login(params[:email], params[:password])
  end

  def destroy
    logout
    redirect_to new_admin_session_path
  end
end
