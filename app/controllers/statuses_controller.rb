class StatusesController < ApplicationController
  def index
    @statuses = Status.all
  end

  def show
    @status = Status.find(params[:id])
  end

  def new
    @status = Status.new
  end

  def create
    @status = Status.new(params[:status])
    @status.save
    flash[:message] = "Status Updated!"
    redirect_to status_path(@status)
  end

  def destroy
    @status = Status.find(params[:id])
    @status.destroy
  end
end
