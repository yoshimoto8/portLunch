class WorkerMypagesController < ApplicationController
  def index
    @worker = current_worker
  end

  def update
    current_worker.update(filter_params)
    @worker = current_worker
  end

  private

  def filter_params
    params.require(:worker).permit(:want_to_do_thing, :self_introduction)
  end
end
