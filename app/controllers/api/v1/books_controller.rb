class Api::V1::BooksController < Api::V1::ApiController
    def index
        @books = Book.all
        render json: @books
    end
end

