class WashesController < ApplicationController
    def index
        render json: Wash.all
    end
end
