class MessagesController < ApplicationController
  def index
    @group = Group.find(params[:group_id])
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_path, notice: 'グループを作成しました'
    else
      render :index
    end
  end


end
