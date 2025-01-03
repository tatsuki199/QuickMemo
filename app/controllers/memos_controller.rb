class MemosController < ApplicationController
  def index
    @memos = Memo.order("created_at DESC")
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

  # def edit
  #   @memo = Memo.find(params[:id])
  # end

  # def update
  #   @memo = Memo.find(params[:id])
  #   if @memo.update(memo_params)
  #     redirect_to memo_path
  #   else
  #     render :edit, status: :unprocessable_entity
  #   end
  # end


  private
  def memo_params
    params.require(:memo).permit(:title, :detail, :category_id, :importance_id, :image)
  end
end
