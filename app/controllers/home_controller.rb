class HomeController < ApplicationController

  # hacky :/
  def home
    respond_to do |format| 
      format.html do
        render "home/home" 
      end
    end
  end
end
