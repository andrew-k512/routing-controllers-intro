class PagesController < ApplicationController

  def welcome
    @header = "Awesome Welcome Page"
    render :welcome
  end

  def about
   @header = "About Us"
   render :about
  end

  def contest
    @header = "Contest Info"
    render :contest
  end

end
