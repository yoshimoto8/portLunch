class WorkerMypagesController < ApplicationController
  def index
    @worker = Worker.find(current_worker.id)
    p @worker
  end
  # def create
  # end
  # def show
  # end
  # def update
  # end
end
