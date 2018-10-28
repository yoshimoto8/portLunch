class WorkerMypagesController < ApplicationController
  def index
    @worker = Worker.find(current_worker.id)
  end
  # def create
  # end
  # def show
  # end
  def update
    @worker = Worker.find(current_worker.id).update(self_introduction: params[:self_introduction])
  end
end
