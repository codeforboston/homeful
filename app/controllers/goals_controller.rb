class GoalsController < ApplicationController
  def show
    @goal = Goal.find params[:id]
  end

  def new
    @goal = Goal.new
  end

  def edit
    @goal = Goal.find params[:id]
  end
end
