# frozen_string_literal: true

class ThoughtsController < ProtectedController
  before_action :set_thought, only: %i[show update destroy]

  # GET /thoughts
  def index
    @thoughts = current_user.thoughts

    render json: @thoughts
  end

  # GET /thoughts/1
  def show
    render json: @thought
  end

  # POST /thoughts
  def create
    @thought = current_user.thoughts.build(thought_params)

    if @thought.save
      render json: @thought, status: :created
    else
      render json: @thought.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /thoughts/1
  def update
    if @thought.update(thought_params)
      render json: @thought
    else
      render json: @thought.errors, status: :unprocessable_entity
    end
  end

  # DELETE /thoughts/1
  def destroy
    @thought.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_thought
    @thought = current_user.thoughts.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def thought_params
    params.require(:thought).permit(:title, :published, :user_id)
  end
end
