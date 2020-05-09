class ItemsController < ApplicationController
  # require 'pry'

  def rescrap
  end

  def create
    data = ScrapperService.new(params[:link], params[:origin_site]).scrap
    item = Item.create!(cost: data["cost"], name: data["name"], image_url: data["image_url"])
    binding.pry
  end

  def delete
  end

  def update
  end

  def edit
  end

  def index
  end

  def show
  end
end
