class CompetitionController < ApplicationController
    def list
        @competitions = Competition.all
    end
    
    def show
        @competition = Competition.find(params[:id])
    end
    def new
        @competitions = Competition.new
    end
    
    def create
        @book = Book.new(book_params)
	
        if @book.save
            redirect_to :action => 'list'
        else
            @subjects = Subject.all
            render :action => 'new'
    end
    
    def delete
    end 
end
