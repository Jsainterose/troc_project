class ApplicationController < ActionController::Base
  before_action :set_admin

  protect_from_forgery with: :exception

  private
  def set_admin
    @admin = User.find_by(email: "admin@admin.com")
  end
end
