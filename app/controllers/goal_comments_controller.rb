class GoalCommentsController < ApplicationController

  # GET /goal_comments
  # GET /goal_comments.json
  def index
    @goal_comments = GoalComment.all
  end

  # GET /goal_comments/1
  # GET /goal_comments/1.json
  def show
    @goal_comment = GoalComment.find(params[:id])
  end

  # GET /goal_comments/new
  def new
    @goal_comment = GoalComment.new
  end

  # GET /goal_comments/1/edit
  def edit
    @goal_comment = GoalComment.find(params[:id])
  end

  # POST /goal_comments
  # POST /goal_comments.json
  def create
    @goal_comment = current_user.goal_comments.new(goal_comment_params)

    respond_to do |format|
      if @goal_comment.save
        format.html { redirect_to profile_path(@goal_comment.goal.user), notice: 'Goal comment was successfully created.' }
        format.json { render :show, status: :created, location: @goal_comment }
      else
        format.html { render :new }
        format.json { render json: @goal_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goal_comments/1
  # PATCH/PUT /goal_comments/1.json
  def update
    @goal_comment = GoalComment.find(params[:id])
    respond_to do |format|
      if @goal_comment.update(goal_comment_params)
        format.html { redirect_to @goal_comment, notice: 'Goal comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @goal_comment }
      else
        format.html { render :edit }
        format.json { render json: @goal_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goal_comments/1
  # DELETE /goal_comments/1.json
  def destroy
    @goal_comment = GoalComment.find(params[:id])
    @goal_comment.destroy
    respond_to do |format|
      format.html { redirect_to goal_comments_url, notice: 'Goal comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_comment_params
      params.require(:goal_comment).permit(:content, :goal_id)
    end
end
