class AuthorsController < ApplicationController
    before_action :find_author, only: [:show, :edit, :update, :destroy]
    
    def new
        @author = Author.new
    end

    def create
        @author = Author.create(author_params)

        if @author.valid?
            @author.save
            redirect_to author_path(@author)
        else
            render :new
        end
        
    end

    def show
        # before_action
    end

    def edit
        # before_action
    end

    def update
        # before_action
    end

    private

    def author_params
        params.permit(:name, :email, :phone_number)
    end

    def find_author
        @author = Author.find_by(:id => params[:id])
    end

end
