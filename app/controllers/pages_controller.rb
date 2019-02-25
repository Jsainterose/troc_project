class PagesController < ApplicationController
  before_action :set_page, only: [:show]
  def home
    @annonces = Annonce.all
  end

end
