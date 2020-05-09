class ListsController < ApplicationController
  before_action :load_list, only: %i[delete show edit]

  def create
  end

  def edit
  end

  def delete
  end

  def index
    @lists = List.all()
    respond_to do |format| 
      format.html do
        render "list/index" unless @lists.nil?
      end
    end
  end

  def show
    respond_to do |format| 
      format.html do 
        if @list.nil? do
          render "errors/404"
        else
          render "list/index" unless @list.nil?
        end
      end
    end
  end

  private

  def load_list
    @list = List.find_by(id: params[:id])
  end
end
