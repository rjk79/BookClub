class NotesController < ApplicationController
    def edit
        @note = current_user.notes.find(params[:id])
        if @note.nil? 
            # values avail in next req
            flash[:errors] = @note.errors.full_messages
            redirect_to book_url(@note.book_id)
        else
            render :edit
        end
    end
    def update
        @note = current_user.notes.find(params[:id])
        if @note.update(note_params)
            redirect_to book_url(@note.book_id)
        else
            # makes values avail in same req
            flash.now[:errors] = @note.errors.full_messages
            render :edit
        end
    end
    def destroy
        @note = current_user.notes.find(params[:id])
        if @note
            @note.destroy
        end
        redirect_to book_url(@note.book_id)
    end
    def create
        @note = Note.new(note_params)
        book_id = params[:note][:book].to_i
        @note.book_id = book_id
        @note.user_id = current_user.id
        if @note.save
            redirect_to book_url(@note.book_id)
        else
            flash[:errors] = @note.errors.full_messages
        end
    end

    def note_params
        return params.require(:note).permit(:body)
    end
end
