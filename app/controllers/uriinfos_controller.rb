class UriinfosController < ApplicationController
  before_action :set_uriinfo, only: [:show, :edit, :update, :destroy]

  # GET /uriinfos
  # GET /uriinfos.json
  def index
    @uriinfos = Uriinfo.all
  end

  # GET /uriinfos/1
  # GET /uriinfos/1.json
  def show
  end

  # GET /uriinfos/new
  def new
    @uriinfo = Uriinfo.new
  end

  # GET /uriinfos/1/edit
  def edit
  end

  # POST /uriinfos
  # POST /uriinfos.json
  def create
    @uriinfo = Uriinfo.new(uriinfo_params)

    respond_to do |format|
      if @uriinfo.save
        format.html { redirect_to @uriinfo, notice: 'Uriinfo was successfully created.' }
        format.json { render :show, status: :created, location: @uriinfo }
      else
        format.html { render :new }
        format.json { render json: @uriinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uriinfos/1
  # PATCH/PUT /uriinfos/1.json
  def update
    respond_to do |format|
      if @uriinfo.update(uriinfo_params)
        format.html { redirect_to @uriinfo, notice: 'Uriinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @uriinfo }
      else
        format.html { render :edit }
        format.json { render json: @uriinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uriinfos/1
  # DELETE /uriinfos/1.json
  def destroy
    @uriinfo.destroy
    respond_to do |format|
      format.html { redirect_to uriinfos_url, notice: 'Uriinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uriinfo
      @uriinfo = Uriinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uriinfo_params
      params.require(:uriinfo).permit(:name, :uri, :originurl)
    end
end
