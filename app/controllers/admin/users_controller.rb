class Admin::UsersController < Admin::AdminController
  def new_session
    redirect_to new_admin_session_path unless login(params[:email], params[:password])
  end
end
