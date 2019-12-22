class SearchesController < ApplicationController
    def index
        @books = Book.where("title ~* :reg", :reg => search_params[:query])  
        # debugger
    end

    def search_params
        params.require(:search).permit(:query)
    end
end