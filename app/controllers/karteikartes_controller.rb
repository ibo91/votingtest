class KarteikartesController < ApplicationController
  before_action :set_karteikarte, only: [:show, :edit, :update, :destroy]

  # GET /karteikartes
  # GET /karteikartes.json
  def index
    @karteikartes = Karteikarte.all
  end

  # GET /karteikartes/1
  # GET /karteikartes/1.json
  def show
  end

  # GET /karteikartes/new
  def new
    @karteikarte = Karteikarte.new
  end

  # GET /karteikartes/1/edit
  def edit
  end

  # POST /karteikartes
  # POST /karteikartes.json
  def create
    @karteikarte = Karteikarte.new(karteikarte_params)

    respond_to do |format|
      if @karteikarte.save
        format.html { redirect_to @karteikarte, notice: 'Karteikarte was successfully created.' }
        format.json { render :show, status: :created, location: @karteikarte }
      else
        format.html { render :new }
        format.json { render json: @karteikarte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /karteikartes/1
  # PATCH/PUT /karteikartes/1.json
  def update
    respond_to do |format|
      if @karteikarte.update(karteikarte_params)
        format.html { redirect_to @karteikarte, notice: 'Karteikarte was successfully updated.' }
        format.json { render :show, status: :ok, location: @karteikarte }
      else
        format.html { render :edit }
        format.json { render json: @karteikarte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /karteikartes/1
  # DELETE /karteikartes/1.json
  def destroy
    @karteikarte.destroy
    respond_to do |format|
      format.html { redirect_to karteikartes_url, notice: 'Karteikarte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_karteikarte
      @karteikarte = Karteikarte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def karteikarte_params
      params.require(:karteikarte).permit(:titel, :vorderseite, :rueckseite, :durchschnittsbewertung)
    end
end
