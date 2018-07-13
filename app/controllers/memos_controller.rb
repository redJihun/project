class MemosController < ApplicationController
  def index
  end

  def new
    @memo = Memo.new
  end

  def create
    @memo = Memo.new
    @memo.title = params[:memo][:title]
    @memo.content = params[:memo][:content]
    @memo.user_id = params[:memo][:user_id]
    @memo.save
    
    redirect_to memo_path(@memo.id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
    @memo = Memo.find(params[:id])
  end
end
