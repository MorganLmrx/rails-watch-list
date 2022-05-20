class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

    def create
      @list = List.new(lists_params)
      @list.save
      # # No need for app/views/listss/create.html.erb
      # redirect_to lists_path(@lists)
    end

private

  def lists_params
    params.require(:list).permit(:name)
  end
end