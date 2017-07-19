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

  def kitten
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
    render :kitten
  end

end


def show
  @picture = Picture.find(params[:id])
end
