class Admin::UsersController < Admin::AdminController
  def update
    current_user.update user_params
    redirect_to edit_admin_users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :avatar)
  end
end
