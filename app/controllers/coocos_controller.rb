class CoocosController < ApplicationController
  before_action :set_cooco, only: [:show, :edit, :update, :destroy]

  # GET /coocos
  # GET /coocos.json
  def index
    @coocos = Cooco.all
  end

  # GET /coocos/1
  # GET /coocos/1.json
  def show
  end

  # GET /coocos/new
  def new
    @cooco = Cooco.new
  end

  # GET /coocos/1/edit
  def edit
  end

  # POST /coocos
  # POST /coocos.json
  def create
    @cooco = Cooco.new(cooco_params)

    respond_to do |format|
      if @cooco.save
        format.html { redirect_to @cooco, notice: 'Cooco was successfully created.' }
        format.json { render :show, status: :created, location: @cooco }
      else
        format.html { render :new }
        format.json { render json: @cooco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coocos/1
  # PATCH/PUT /coocos/1.json
  def update
    respond_to do |format|
      if @cooco.update(cooco_params)
        format.html { redirect_to @cooco, notice: 'Cooco was successfully updated.' }
        format.json { render :show, status: :ok, location: @cooco }
      else
        format.html { render :edit }
        format.json { render json: @cooco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coocos/1
  # DELETE /coocos/1.json
  def destroy
    @cooco.destroy
    respond_to do |format|
      format.html { redirect_to coocos_url, notice: 'Cooco was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cooco
      @cooco = Cooco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cooco_params
      params.require(:cooco).permit(:content, :user_id)
    end
end
