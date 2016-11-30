class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @selected_celeb = User.where(role: 'celeb' )

  end
end
