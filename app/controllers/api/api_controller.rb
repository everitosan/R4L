module API
  class ApiController < ApplicationController

    def gIndex(model)
      list = model.all
      respond_to do |format|
        format.json {render json:list, status: :ok}
      end
    end

    def gCreate(model, parameters)
      register = model.new(parameters)
      respond_to do |format|
        if register.save
          format.json {render json: register, status: :created}
        else
          format.json {render json: register.errors, status: 400}
        end
      end
    end

    def gShow(model)
      register = model.find(params[:id])
      respond_to do |format|
        format.json { render json: register, status: :ok}
      end
    end

    def gUpdate (model, parameters)
      register = model.find(params[:id])
      respond_to do |format|
        if register.update(parameters)
          format.json {render json: register, status: :ok}
        else
          format.json {render json: register.errors, status: 400}
        end
      end
    end

    def gDestroy (model)
      register = model.find(params[:id])
      if register.destroy
        head 204
      else
        head 400
      end
    end

  end
end
