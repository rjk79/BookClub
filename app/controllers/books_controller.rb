class BooksController < ApplicationController

    def new
        @book = Book.new
    end

    def show
        @book = Book.find(params[:id])
        @notes = Note.where(user_id: current_user.id, book_id: @book.id)
    end

    def index
        @books = Book.all
    end

    def create
        @book = Book.new(book_params) 
        if @book.save
            @notes = Note.where(user_id: current_user.id, book_id: @book.id)
            render :show
        else
            flash.now[:errors] = @book.errors.full_messages
            render :new  
        end      
    end

    def book_params
        return params.require(:book).permit(:title, :author, :genre, :text)
    end
end
