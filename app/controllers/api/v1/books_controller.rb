class Api::V1::BooksController < Api::V1::ApiController
    def index
        @books = Book.all
        render json: @books
    end

    def create
        @book = Book.new(title: params[:title], description: params[:description])

        if @book.save
            render json: @book
        else
            render json: @book.errors
        end
    end
end

