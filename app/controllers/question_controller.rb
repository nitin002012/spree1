class QuestionController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @questions = Question.all
    render json: @questions.as_json, status: :ok
  end

  def index1
    @questions = Question.all
  end

  def show
    question = Question.find_by_id(params[:id])
    if question
      render json: question.as_json, status: :ok
    else
      render json: { error: "Question not found" }, status: :not_found
    end
  end

  def new
    @ques = Question.new
  end

  def create1
    @question =Question.new()
    if @question.save
      redirect_to question_path
    else
      render :new
    end
  end


  def create
    question = Question.new(question_params)
    if question.save
      render json: question.as_json, status: :created
    else
      render json: { errors: question.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def destroy
    @question = Question.find(params[:id])
    if @question
      @question.destroy
      head :no_content
    else
      redirect_to question_path
    end
  end

  def update
    @question = Question.find(params[:id])
    if @question
      if @question.update(question_params)
        render json: @question.as_json, status: :ok
      else
        render json: { errors: question.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: { error: "Question not found" }, status: :not_found
    end
  end
  def question_params
    params.require(:question).permit(:title, :description, schema:{}, options:{})
  end


end
