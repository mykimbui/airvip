class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @selected_celeb = User.where(role: 'Celebrity' )
    @selected_celeb = @selected_celeb.sample(6)

    @selected_lookalike = User.where(role: 'Lookalike' )
    @selected_lookalike = @selected_lookalike.sample(6)

  end
end
