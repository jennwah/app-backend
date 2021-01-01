class Api::V1::AuthorsController < Api::V1::ApiController
    def index
        @authors = Author.all
        render json: @authors
    end
end
