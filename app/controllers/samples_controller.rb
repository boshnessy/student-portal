class SamplesController < ApplicationController

    def index
        render json: {message: "Barry"}
    end
end
