class Api::V1::QuestionsController<ApplicationController
    skip_before_action :authenticate_user!, only: [:index]

  def index
      render :json => Question.all
  end
end