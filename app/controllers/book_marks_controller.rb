class BookMarksController < ApplicationController
  def new
    @book_mark = BookMark.new
  end

  def index
    @book_marks = BookMark.all
    @book_mark = BookMark.new
  end

  def create
    @book_mark = BookMark.new(book_mark_params)
    @book_mark.user_id = current_user.id
    if @book_mark.save
      redirect_to book_marks_path
    else
      @book_marks = BookMark.all
      render :index
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def book_mark_params
    params.require(:book_mark).permit(:name, :url, :evaluation, :memo, images:[])
  end
end
