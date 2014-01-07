class GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @goals = Goal.order(updated_at: :desc)
  end

  def show
  end

  def new
    @goal = current_user.goals.build
  end

  def edit
    @goal = Goal.find(params[:id])
    
  end

  
  def create
    @goal = current_user.goals.build(goal_params)
    if @goal.save
      redirect_to @goal, notice: 'Goal was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    
    @goal = Goal.find(params[:id])
    
    if @goal.update(goal_params)
      redirect_to @goal, notice: 'Goal was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @goal.destroy
    redirect_to goals_url
   
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal
      @goal = Goal.find(params[:id])
    end

    def correct_user
      @goal = current_user.goal.find_by(id: params[:id])
      redirect_to goals_path, notice: "Not authorized to edit this goal" if @goal.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_params
      params.require(:goal).permit(:description, :complete, :current, :goal_type)
    end
end
