class GrupasController < ApplicationController
  before_action :set_grupa, only: [:show, :edit, :update, :destroy]

  # GET /grupas
  # GET /grupas.json
  def index
    @grupas = Grupa.all
  end

  # GET /grupas/1
  # GET /grupas/1.json
  def show
  end

  # GET /grupas/new
  def new
    @grupa = Grupa.new
  end

  # GET /grupas/1/edit
  def edit
  end

  # POST /grupas
  # POST /grupas.json
  def create
    @grupa = Grupa.new(grupa_params)

    respond_to do |format|
      if @grupa.save
        format.html { redirect_to @grupa, notice: 'Grupa was successfully created.' }
        format.json { render :show, status: :created, location: @grupa }
      else
        format.html { render :new }
        format.json { render json: @grupa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grupas/1
  # PATCH/PUT /grupas/1.json
  def update
    respond_to do |format|
      if @grupa.update(grupa_params)
        format.html { redirect_to @grupa, notice: 'Grupa was successfully updated.' }
        format.json { render :show, status: :ok, location: @grupa }
      else
        format.html { render :edit }
        format.json { render json: @grupa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grupas/1
  # DELETE /grupas/1.json
  def destroy
    @grupa.destroy
    respond_to do |format|
      format.html { redirect_to grupas_url, notice: 'Grupa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupa
      @grupa = Grupa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grupa_params
      params.require(:grupa).permit(:name, :semestr)
    end
end
