class UserAnswersController < ApplicationController

def index

end

 def show
 @user = User.find(params[:id])
end

def new
  @user = User.new
end

def create
 @solved = UserAnswer.new(solved_params)
 @solved.save
 redirect_to "#"
end

private
 def solved_params
 params.require(:useranswer) #.permit(:id, :content ,:questions_attributes => [:id, :answers_attributes => [:id] ])
  end
end
