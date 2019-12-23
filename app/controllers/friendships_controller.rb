class FriendshipsController < ApplicationController
    def create
        @friendship = Friendship.new(friendship_params)
        if @friendship.save
          
        else
          flash.now[:errors] = @friendship.errors.full_messages
        end
    end


    private
    def friendship_params
        params.require(:friendship).permit(:user1_id, :user2_id)
    end
end
