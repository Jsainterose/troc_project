class ApplicationController < ActionController::Base
  before_action :set_admin, :set_app_cat

  protect_from_forgery with: :exception

  private
  def set_admin
    @admin = User.find_by(email: "admin@admin.com")
  end

  def set_app_cat
    @app_cat = Category.find_by(id: 1)
  end
end
