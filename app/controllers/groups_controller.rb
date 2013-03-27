class GroupsController < ApplicationController
  load_and_authorize_resource

  def create
    group = Group.create(params[:group])
    redirect_to group
  end

  def edit
    group = Group.find(params[:id])
  end

  def update
    group = Group.find(params[:id])
    group.update_attributes(params[:group])
    redirect_to group
  end

  def invite
    group = Group.find(params[:id])
    puts params[:email]

    user = User.find_by_email(params[:email])

    unless user.nil?
      group.users << user
    end

    redirect_to group
  end
end
