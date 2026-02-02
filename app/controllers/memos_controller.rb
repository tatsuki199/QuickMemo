class MemosController < ApplicationController
  before_action :move_to_index, except: [:index, :show, :search]

  def index
    @memos = Memo.order("created_at DESC")
    if params[:date].present?
      date = Date.parse(params[:date])
      @memos = @memos.where(
        created_at: date.beginning_of_day..date.end_of_day
      )
    end
    if params[:from].present? && params[:to].present?
      from = Date.parse(params[:from]).beginning_of_day
      to   = Date.parse(params[:to]).end_of_day
      @memos = @memos.where(created_at: from..to)
    end
    
  end

  def new
    @memo = Memo.new
  end

  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @memo = Memo.find(params[:id])
  end

  def edit
    @memo = Memo.find(params[:id])
  end

  def update
    @memo = Memo.find(params[:id])
    if @memo.update(memo_params)
      redirect_to memo_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @memo = Memo.find(params[:id])
    @memo.destroy
    redirect_to root_path
  end


  private
  def memo_params
    params.require(:memo).permit(:title, :detail, :category_id, :importance_id, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
