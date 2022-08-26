class BirdsController < ApplicationController
  # GET /birds
  def index
    render json: Bird.all, except: %i[created_at updated_at]
  end

  # GET /birds/:id
  def show
    bird = Bird.find_by(id: params[:id])
    if bird
      render json: bird, except: %i[created_at updated_at]
    else
      render json: { error: 'Bird not found' }, status: not_found
    end
  end
end
