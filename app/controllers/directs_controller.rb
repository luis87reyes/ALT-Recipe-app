class DirectsController < ApplicationController
  before_action :set_direct, only: [:show, :edit, :update, :destroy]

  # GET /directs
  # GET /directs.json
  def index
    @directs = Direct.all
  end

  # GET /directs/1
  # GET /directs/1.json
  def show
  end

  # GET /directs/new
  def new
    @direct = Direct.new
  end

  # GET /directs/1/edit
  def edit
  end

  # POST /directs
  # POST /directs.json
  def create
    @direct = Direct.new(direct_params)

    respond_to do |format|
      if @direct.save
        format.html { redirect_to @direct, notice: 'Direct was successfully created.' }
        format.json { render :show, status: :created, location: @direct }
      else
        format.html { render :new }
        format.json { render json: @direct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /directs/1
  # PATCH/PUT /directs/1.json
  def update
    respond_to do |format|
      if @direct.update(direct_params)
        format.html { redirect_to @direct, notice: 'Direct was successfully updated.' }
        format.json { render :show, status: :ok, location: @direct }
      else
        format.html { render :edit }
        format.json { render json: @direct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directs/1
  # DELETE /directs/1.json
  def destroy
    @direct.destroy
    respond_to do |format|
      format.html { redirect_to directs_url, notice: 'Direct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_direct
      @direct = Direct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def direct_params
      params.require(:direct).permit(:Name, :Directions)
    end
end
