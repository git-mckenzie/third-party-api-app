class JobsController < ApplicationController
  def index
    response = HTTP.get("https://api.adzuna.com/v1/api/jobs/us/search/1?app_id=fa3e8805&app_key=#{Rails.application.credentials.adzuna_api_key}")
    render json: response.parse(:json)
  end
end
