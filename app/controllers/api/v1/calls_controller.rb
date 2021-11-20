class Api::V1::CallsController < ApplicationController
    before_action :find_call, only: [:destroy]

    def index
        @calls = Call.all

        render json: @calls
    end

    def new
        @call = Call.new
    end

    def create
        @call = Call.new(call_params)
        if @call.save
            render json: @calls
        else
            render json: {error: "Could not create call"}
        end
    end

    def destroy
        @call.delete

        render json: @calls
    end

    private

    def find_call
        @call = Call.find_by_id(params[:id])
    end

    def call_params
        params.require(:call).permit(:phone_number, :duration)
    end

end