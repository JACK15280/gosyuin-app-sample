class GroupsController < ApplicationController

  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    Group.create(group_params)
    redirect_to root_path
  end

  def show
    @groups = Group.all
    @group = Group.find(params[:id])
    @posts = @group.posts
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    @group.update(group_params)
    redirect_to group_path(@group.id)
  end


  private
  def group_params
    params.require(:group).permit(:name, post_ids: [])
  end
end