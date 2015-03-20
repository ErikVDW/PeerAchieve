class GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :edit, :update, :achieve, :destroy]

  # GET /goals
  # GET /goals.json
  def index
    @goals = Goal.all
  end

  # GET /goals/1
  # GET /goals/1.json
  def show
  end

  # GET /goals/new
  def new
    @goal = Goal.new
  end

  # GET /goals/1/edit
  def edit
  end

  # POST /goals
  # POST /goals.json
  def create
    # TODO - Make sure there is a user logged in (using a before filter)
    @goal = current_user.goals.new(goal_params)

    respond_to do |format|
      if @goal.save
        format.html { redirect_to profile_path(@goal.user), notice: 'Goal was successfully created.' }
        format.json { render :show, status: :created, location: @goal }
      else
        format.html { redirect_to profile_path(@goal.user), notice: @goal.errors.messages.only(' ') }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goals/1
  # PATCH/PUT /goals/1.json
  def update
    respond_to do |format|
      if @goal.update(goal_params)
        format.html { redirect_to @goal, notice: 'Goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @goal }
      else
        format.html { render :edit }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end
  
  
  # PATCH/PUT /goals/achieve/1
  # PATCH/PUT /goals/achieve/1.json
  def achieve # consider changing to toggle_achieve
    respond_to do |format|
      @goal.update(achieved_status: true)  #  @goal.update(achieved_status: !@goal.achieved_status)  
      format.html { redirect_to profile_path(@goal.user), notice: 'Goal was acheived!' }
      format.json { render :show, status: :ok, location: @goal }
    end
  end
  

  # DELETE /goals/1
  # DELETE /goals/1.json
  def destroy
    @goal.destroy
    respond_to do |format|
      format.html { redirect_to goals_url, notice: 'Goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal
      @goal = Goal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_params
      params.require(:goal).permit(:content)
    end
end
