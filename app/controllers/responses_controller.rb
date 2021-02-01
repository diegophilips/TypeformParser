class ResponsesController < ApplicationController

  def index
    results = HTTParty.get("https://api.typeform.com/forms/ne2HBuJu/responses", :headers =>
    {"Authorization" => "Bearer #{ENV["TYPEFORM_API_TOKEN"]}"})
    render json: results.to_json
  end

  private

  def set_credentials
  @token = ENV["TYPEFORM_API_TOKEN"]
  end
end
