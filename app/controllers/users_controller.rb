class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @memos = user.memos
  end
  def edit
  end
end
