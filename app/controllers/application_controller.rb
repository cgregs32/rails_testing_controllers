class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

  #only called on things that inherit from
  protected
  def json_error(model)
    render json: { errors: model.errors.full_messages.join(',') }, status: :unprocessable_entity
  end

end
