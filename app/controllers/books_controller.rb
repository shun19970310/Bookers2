class BooksController < ApplicationController
    def create
      @book = Book.new(book_params)
      @book.save
      @book.user_id = current_user.id
      redirect_to books_path
    end



    private

    def book_params
        params.require(:book).permit(:title, :body)
    end
end
