class BalletsController < ApplicationController
  before_action :set_ballet, only: [:show, :edit, :update, :destroy]

  # GET /ballets
  # GET /ballets.json
  def index
    @ballets = Ballet.all
  end

  # GET /ballets/1
  # GET /ballets/1.json
  def show
  end

  # GET /ballets/new
  def new
    @ballet = Ballet.new
  end

  # GET /ballets/1/edit
  def edit
  end

  # POST /ballets
  # POST /ballets.json
  def create
    @ballet = Ballet.new(ballet_params)

    respond_to do |format|
      if @ballet.save
        format.html { redirect_to @ballet, notice: 'Ballet was successfully created.' }
        format.json { render :show, status: :created, location: @ballet }
      else
        format.html { render :new }
        format.json { render json: @ballet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ballets/1
  # PATCH/PUT /ballets/1.json
  def update
    respond_to do |format|
      if @ballet.update(ballet_params)
        format.html { redirect_to @ballet, notice: 'Ballet was successfully updated.' }
        format.json { render :show, status: :ok, location: @ballet }
      else
        format.html { render :edit }
        format.json { render json: @ballet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ballets/1
  # DELETE /ballets/1.json
  def destroy
    @ballet.destroy
    respond_to do |format|
      format.html { redirect_to ballets_url, notice: 'Ballet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ballet
      @ballet = Ballet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ballet_params
      params.require(:ballet).permit(:name, :composer, :choreographer, :ballerina)
    end
end
