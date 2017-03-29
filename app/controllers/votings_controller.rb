class VotingsController < ApplicationController
  before_action :set_voting, only: [:show, :edit, :update, :destroy]

  # GET /votings
  # GET /votings.json
  def index
    @votings = Voting.all
  end

  # GET /votings/1
  # GET /votings/1.json
  def show
  end

  # GET /votings/new
  def new
    @voting = Voting.new
  end

  # GET /votings/1/edit
  def edit
  end

  # POST /votings
  # POST /votings.json
  def create
    @voting = Voting.new(voting_params)

    respond_to do |format|
      if @voting.save
        format.html { redirect_to @voting, notice: 'Voting was successfully created.' }
        format.json { render :show, status: :created, location: @voting }
      else
        format.html { render :new }
        format.json { render json: @voting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /votings/1
  # PATCH/PUT /votings/1.json
  def update
    respond_to do |format|
      if @voting.update(voting_params)
        format.html { redirect_to @voting, notice: 'Voting was successfully updated.' }
        format.json { render :show, status: :ok, location: @voting }
      else
        format.html { render :edit }
        format.json { render json: @voting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /votings/1
  # DELETE /votings/1.json
  def destroy
    @voting.destroy
    respond_to do |format|
      format.html { redirect_to votings_url, notice: 'Voting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  #->Prelang (voting/acts_as_votable)
  def vote

    direction = params[:direction]

    # Make sure we've specified a direction
    raise "No direction parameter specified to #vote action." unless direction

    # Make sure the direction is valid
    unless ["like", "bad"].member? direction
      raise "Direction '#{direction}' is not a valid direction for vote method."
    end

    @voting.vote_by voter: current_user, vote: direction

    redirect_to action: :index
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voting
      @voting = Voting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def voting_params
      params.require(:voting).permit(:einzelbewertung, :user_id, :karteikarte_id)
    end
end
