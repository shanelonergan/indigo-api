class MillsController < ApplicationController
    def index
        render json: Mill.all
    end
end
