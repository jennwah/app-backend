class Api::V1::BooksController < Api::V1::ApiController
    wrap_parameters format: [:json]
    def index
        @books = Book.all
        render json: @books
    end

    def create
        @book = Book.new(book_params)

        if @book.save
            render json: @book
        else
            render json: @book.errors
        end
    end

    private
    def book_params
        params.require(:book).permit(:title, :description)
    end
end

