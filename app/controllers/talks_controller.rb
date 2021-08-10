class TalksController < ApplicationController
  protect_from_forgery with: :null_session

  def index
  end
  
  def create
    request = AlexaRubykit::build_request(params)
    response = AlexaRubykit::Response.new
    response.add_speech("こんにちは、ケーク·タイムへようこそ。あなたの誕生日を教えてください。")
    render json: response.build_response
  end
end
