class TestsController < ApplicationController
  before_action :set_test, only: [:show, :edit, :update, :destroy]

  # GET /tests
  # GET /tests.json
  def index
    @tests = Test.all
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
  end

  def result
    
  end
  # GET /tests/new
  ##### uncomment ######
  def new
    @solved = UserAnswer.new
    @test = Test.new
   # 3.times { @test.questions.build }
    # 3.times do
    #   question = @test.questions.build
  3.times do
    question = @test.questions.build
    4.times { question.answers.build }
  end
  
  end
#end
 # def new
 #    @test = Test.new
 #    @test.questions.build # build ingredient attributes, nothing new here
 #  end
 #  # GET /tests/1/edit
  def edit
  end
  def add_question
  # @current = @user.test_id
 # @test = Test.find(params[:id])
  @test.questions.build
  respond_to do |format|
  format.js #add_question.js.erb
  end
end

  # POST /tests
  # POST /tests.json
  ###### uncomment create #####
  def create
    @test = Test.new(test_params)
    # @solved = UserAnswer.new()
    respond_to do |format|
      if @test.save
        format.html { redirect_to @test, notice: 'Test was successfully created.' }
        format.json { render action: 'show', status: :created, location: @test }
      else
        format.html { render action: 'new' }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  #   @solved =  UserAnswer.new(solved_params)
  #   raise params @solved.inspect
  #   if @solved.save
  #     flash[:success] = "Data saved"
  #   else
  #     flash[:alert] = "Data not saved"
  # end
end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  #  def create
  #   @test = Test.new(test_params)
  #   if params[:add_question]
  #     # add empty ingredient associated with @test
  #     @test.questions.build
  #   elsif params[:remove_questions]
  #     # nested model that have _destroy attribute = 1 automatically deleted by rails
  #   else
  #     # save goes like usual
  #     if @test.save
  #       flash[:notice] = "Successfully created test."
  #       redirect_to @test and return
  #     end
  #   end
  #   render :action => 'new'
  # end
# @conversation = Conversation.find(params[:conversation_id])
 # def update
 #    @test = Test.find(params[:id])
 #    if params[:add_question]
 #      # rebuild the ingredient attributes that doesn't have an id
 #      unless params[:test][:questions_attributes].blank?
 #    for attribute in params[:test][:questions_attributes]
 #      @test.questions.build(attribute.last.except(:_destroy)) unless attribute.last.has_key?(:id)
 #    end
 #      end
 #      # add one more empty ingredient attribute
 #      @test.questions.build
 #    elsif params[:remove_ingredient]
 #      # collect all marked for delete ingredient ids
 #      removed_questions = params[:test][:questions_attributes].collect { |i, att| att[:id] if (att[:id] && att[:_destroy].to_i == 1) }
 #      # physically delete the questions from database
 #      Ingredient.delete(removed_questions)
 #      flash[:notice] = "questions removed."
 #      for attribute in params[:test][:questions_attributes]
 #        # rebuild questions attributes that doesn't have an id and its _destroy attribute is not 1
 #        @test.questions.build(attribute.last.except(:_destroy)) if (!attribute.last.has_key?(:id) && attribute.last[:_destroy].to_i == 0)
 #      end
 #    else
 #      # save goes like usual
 #      if @test.update_attributes(params[:test])
 #        flash[:notice] = "Successfully updated test."
 #        redirect_to @test and return
 #      end
 #    end
 #    render :action => 'edit'
 #  end
########uncomment######################
  def update
    respond_to do |format|
      if @test.update(test_params)
        format.html { redirect_to @test, notice: 'Test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @test.destroy
    respond_to do |format|
      format.html { redirect_to tests_url }
      format.json { head :no_content }
    end
  end

def choice
@test ||= Test.find(session[:test_id]) if session[:test_id]
 # total = @test.questions.count.to_i
 # session[:total]   = total
 session[:correct] = 0
 # @total   = session[:total]
 # answerid = params[:answer]
 # @answer = answerid ? Answer.find(answerid)
   h = params[:answer]
   #raise params answer.inspect
   h.values.each do |answer|
   @answer = answer ? Answer.find(answer) : nil
  if @answer and @answer.correct
    @correct = true
    session[:correct] += 1
  else
    @correct = false
  end
end 
 # if @answer and @answer.correct
 #   @correct = true
 #   session[:correct] += 1
 # else
 #  @correct = false
 # end
redirect_to thanks_path
end
def thanks

end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test
      @test = Test.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_params
      params.require(:test).permit(:name,  :questions_attributes => [:id, :content , :_destroy ,:answers_attributes => [:id, :content, :_destroy , :correct] ])
    end
  #   def survey_params
  #   params.require(:survey).permit(:name,
  #     :questions_attributes => [:id, :content,
  #       :answers_attributes => [:id, :content, :participant_id]
  #     ])
  # end

#   def solved_params
# params.require(:useranswer).permit(:id, :content ,:questions_attributes => [:id, :answers_attributes => [:id] ])
#   end
end
# def person_params
#   params.require(:person).
#     permit(:name, addresses_attributes: [:id, :kind, :street, :_destroy])
# end


# def product_params
#   params.require(:product).permit(:name, data: params[:product][:data].try(:keys))
# end


