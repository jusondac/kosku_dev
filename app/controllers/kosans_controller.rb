class KosansController < ApplicationController
  before_action :set_kosan, only: %i[ show edit update destroy ]

  # GET /kosans or /kosans.json
  def index
    @kosans = Kosan.all
  end

  # GET /kosans/1 or /kosans/1.json
  def show
  end

  # GET /kosans/new
  def new
    @kosan = Kosan.new
    @provinsi = CodeArea.where(province_id: nil)
  end

  def regencies
    @regencies = CodeArea.where(province_id: params[:province_id])
    render json: @regencies
  end

  # GET /kosans/1/edit
  def edit
  end

  # POST /kosans or /kosans.json
  def create
    @kosan = Kosan.new(kosan_params)
    byebug
    respond_to do |format|
      if @kosan.save
        format.html { redirect_to kosan_url(@kosan), notice: "Kosan baru berhasil dibuat." }
        format.json { render :show, status: :created, location: @kosan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kosan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kosans/1 or /kosans/1.json
  def update
    respond_to do |format|
      if @kosan.update(kosan_params)
        format.html { redirect_to kosan_url(@kosan), notice: "Kosan Berhasil diperbaharui." }
        format.json { render :show, status: :ok, location: @kosan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kosan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kosans/1 or /kosans/1.json
  def destroy
    @kosan.destroy

    respond_to do |format|
      format.html { redirect_to kosans_url, notice: "Kosan berhasil dihapus" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kosan
      @kosan = Kosan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kosan_params
      params.require(:kosan).permit(:nama, :description, :rules, :alamat, :provinsi, :kota_kabupaten)
    end
end
