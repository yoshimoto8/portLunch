class WorkersController < ApplicationController
  layout 'workers/application'
  def index
    @worker = Worker.find(current_user.id)
  end
  def create
  end
  def show
  end
  def update
  end
end
