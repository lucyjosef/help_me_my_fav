class UsersController < ApplicationController
  before_action :load_user, only: %i[delete show edit]

  def show
    render "errors/404" if @user.nil?
  end

  def edit
  end

  def delete
  end

  def create
  end

  private

  def load_user
    @resource = "User"
    @user = User.find_by(id: params[:id])
  end
end
