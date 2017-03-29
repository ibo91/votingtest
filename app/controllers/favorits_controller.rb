class FavoritsController < ApplicationController
  before_action :set_favorit, only: [:show, :edit, :update, :destroy]

  # GET /favorits
  # GET /favorits.json
  def index
    @favorits = Favorit.all
  end

  # GET /favorits/1
  # GET /favorits/1.json
  def show
  end

  # GET /favorits/new
  def new
    @favorit = Favorit.new
  end

  # GET /favorits/1/edit
  def edit
  end

  # POST /favorits
  # POST /favorits.json
  def create
    @favorit = Favorit.new(favorit_params)

    respond_to do |format|
      if @favorit.save
        format.html { redirect_to @favorit, notice: 'Favorit was successfully created.' }
        format.json { render :show, status: :created, location: @favorit }
      else
        format.html { render :new }
        format.json { render json: @favorit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favorits/1
  # PATCH/PUT /favorits/1.json
  def update
    respond_to do |format|
      if @favorit.update(favorit_params)
        format.html { redirect_to @favorit, notice: 'Favorit was successfully updated.' }
        format.json { render :show, status: :ok, location: @favorit }
      else
        format.html { render :edit }
        format.json { render json: @favorit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorits/1
  # DELETE /favorits/1.json
  def destroy
    @favorit.destroy
    respond_to do |format|
      format.html { redirect_to favorits_url, notice: 'Favorit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorit
      @favorit = Favorit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favorit_params
      params.require(:favorit).permit(:user_id, :karteikarte_id)
    end
end
