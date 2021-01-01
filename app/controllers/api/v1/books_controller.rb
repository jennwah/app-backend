class Api::V1::BooksController < Api::V1::ApiController
    def index
        @books = Book.all
        render json: @books
    end

    def create
        @book = Book.new(book_params)

        if @book.save
            json_string = {'message' => 'Book is successfully Created!!'}.to_json
            format.json { render :json => {item: @book, json_string}
        else
            format.json { render json: @book.errors, status: :unprocessable_entity }
        end
    end

    private
        def book_params
            params.require(:book).permit(:title, :description)
        end
end

