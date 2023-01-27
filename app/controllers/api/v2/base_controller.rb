class Api::V2::BaseController < ApplicationController::API
    include DeviseTokenAuth::Concerns::SetUserByToken
end