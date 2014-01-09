class CoyotesController < ApplicationController
  before_action :set_coyote, only: [:show, :edit, :update, :destroy]

  # GET /coyotes
  # GET /coyotes.json
  def index
    @coyotes = Coyote.all
  end

  # GET /coyotes/1
  # GET /coyotes/1.json
  def show
  end

  # GET /coyotes/new
  def new
    @coyote = Coyote.new
  end

  # GET /coyotes/1/edit
  def edit
  end

  # POST /coyotes
  # POST /coyotes.json
  def create
    @coyote = Coyote.new(coyote_params)

    respond_to do |format|
      if @coyote.save
        format.html { redirect_to @coyote, notice: 'Coyote was successfully created.' }
        format.json { render action: 'show', status: :created, location: @coyote }
      else
        format.html { render action: 'new' }
        format.json { render json: @coyote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coyotes/1
  # PATCH/PUT /coyotes/1.json
  def update
    respond_to do |format|
      if @coyote.update(coyote_params)
        format.html { redirect_to @coyote, notice: 'Coyote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @coyote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coyotes/1
  # DELETE /coyotes/1.json
  def destroy
    @coyote.destroy
    respond_to do |format|
      format.html { redirect_to coyotes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coyote
      @coyote = Coyote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coyote_params
      params[:coyote]
    end
end
