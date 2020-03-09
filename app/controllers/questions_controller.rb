class QuestionsController < ApplicationController
  def ask
  end

  def answer
    length = params[:question].length
    @query = params[:question]
    @answer = if @query == 'I am going to work'
                'Great!'
              elsif @query[length - 1] == '?'
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
