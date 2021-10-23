class ListsController < ApplicationController
  before_action :set_list, only: [:show]
  def index
    @lists = List.all
  end

  def show; end

  def new
    @list = List.new
  end

  def create
    @list = List.new(params_list)
    @list.save
    redirect_to lists_path
  end
end

private

def params_list
  params.require(:list).permit(:name)
end

def set_list
  @list = List.find(params[:id])
end