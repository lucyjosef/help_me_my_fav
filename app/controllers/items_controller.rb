class ItemsController < ApplicationController
  include ItemHelper

  def rescrap
  end

  def create
    binding.pry
    @item = Item.create(link: params[:link])
    ItemHelper.scrap(@item)
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
