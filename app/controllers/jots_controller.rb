class JotsController < OpenReadController
  before_action :set_jot, only: %i[update destroy]

  # GET /jots
  def index
    @jots = Jot.all

    render json: @jots
  end

  # GET /jots/1
  def show
    @jot = Jot.find(params[:id])

    render json: @jot
  end

  # POST /jots
  def create
    @jot = current_user.jots.build(jot_params)

    if @jot.save
      render json: @jot, status: :created
    else
      render json: @jot.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /jots/1
  def update
    if @jot.update(jot_params)
      render json: @jot
    else
      render json: @jot.errors, status: :unprocessable_entity
    end
  end

  # DELETE /jots/1
  def destroy
    @jot.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_jot
    @jot = current_user.jots.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def jot_params
    params.require(:jot).permit(:name, :content, :user_id, :active)
  end
end
