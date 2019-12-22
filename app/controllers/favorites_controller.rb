class FavoritesController < ApplicationController
    def create
        @favorite = Favorite.new()
        @favorite.book_id = params[:favorite][:book].to_i
        @favorite.user_id = current_user.id
        if @favorite.save
        else
            flash[:errors] = @favorite.errors.full_messages
        end
    end
end
