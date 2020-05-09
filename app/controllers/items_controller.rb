class ItemsController < ApplicationController
  # require 'pry'

  def rescrap
  end

  def create
    list_id = List.find_by(name: params["List"]["list_to_use"]).id
    data = ScrapperService.new(params[:link], params[:origin_site]).scrap
    @item = Item.create!(list_id: list_id, cost: data["cost"], name: data["name"], image_url: data["image_url"])
    redirect_to action: "edit", id: @item.id
  end

  def delete
    Item.find_by(id: params[:id]).delete
  end

  def update
    @item = Item.find_by(id: params[:id])
    data = {
      cost: params[:cost],
      name: params[:name],
      image_url: params[:image_url]
    }
    if @item.update(data)
      redirect_to action: "show", id: @item.id
    else
      puts "oops error"
    end
    
  end

  def edit
    @item = Item.find_by(id: params[:id])
    respond_to do |format| 
      format.html do
        render "item/edit" 
      end
    end
  end

  def index
  end

  def show
    @item = Item.find_by(id: params[:id])
    respond_to do |format| 
      format.html do
        render "item/show" 
      end
    end
  end
end
