class StaticPagesController < ApplicationController
  def about
  end

  def index
  end

  def payment
  end

  def photo_archive
    @year = params[:id]
    # RAISE ERROR if year out of range
  end

  def trips
  end

  def contact
  end

  def officer
  end
end
