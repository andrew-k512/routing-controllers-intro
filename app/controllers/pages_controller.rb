class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "Awesome Welcome Page"
    render :welcome
  end

  def about
   @header = "About Us"
   render :about
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended!"
    redirect_to "/welcome"
  end

  def kitten
    set_kitten_url
  end

  def kittens
    set_kitten_url
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end


end
