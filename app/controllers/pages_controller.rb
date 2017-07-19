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
    redirect_to welcome_path
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

  def secrets
    if
      params[:magic_word] == "password"
      render :secrets
    elsif
      params[:magic_word] != "password"
      flash[:notice] = "You failed to enter the right password, access denied."
      redirect_to "https://www.tuition.io/blog/wp-content/uploads/2013/09/bigstock-failure-fail-exam-or-attempt-c-43251688-e1380345106960.jpg"
    end
  end



end
