class WorkerMypagesController < ApplicationController
  def index
    @worker = Worker.find(current_worker.id)
  end
  # def create
  # end
  # def show
  # end
  def update
    @worker = Worker.find(current_worker.id).update(filter_params())
  end

  private

  def filter_params
    params.permit(:want_to_do_thing, :self_introduction)
  end
end
