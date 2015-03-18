class AnswersController < ApplicationController
  

  # POST /answers
  def create
    @answer = Answer.new( answer_params.merge({user:current_user}))
    if @answer.save
      redirect_to :back, notice: 'Ответ создан'
    else
      redirect_to :back, notice: 'Ошибка создания'
    end
  end

  def like_it
    @answer = Answer.find(params[:id])
    change = current_user.change_like @answer
    render json: {update: change}
  end

  private

    # Only allow a trusted parameter "white list" through.
    def answer_params
      params.require(:answer).permit(:plus, :content, :topic_id)
    end
end
