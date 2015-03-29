class Id3sController < ApplicationController
  before_action :set_id3, only: [:show, :edit, :update, :destroy]

  def query
    @query = params[:q]
    if @query.nil? || @query.empty?
      return
    end
    regex = /#{@query}/i
    @id3s = Id3.or({title: regex}, {artist: regex}, {album: regex})
  end

  # GET /id3s
  # GET /id3s.json
  def index
    @id3s = Id3.all
  end

  # GET /id3s/1
  # GET /id3s/1.json
  def show
  end

  # GET /id3s/new
  def new
    @id3 = Id3.new
  end

  # GET /id3s/1/edit
  def edit
    @uriinfos = Uriinfo.all
  end

  # POST /id3s
  # POST /id3s.json
  def create
    @id3 = Id3.new(id3_params)

    respond_to do |format|
      if @id3.save
        format.html { redirect_to @id3, notice: 'Id3 was successfully created.' }
        format.json { render :show, status: :created, location: @id3 }
      else
        format.html { render :new }
        format.json { render json: @id3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /id3s/1
  # PATCH/PUT /id3s/1.json
  def update
    respond_to do |format|
      if @id3.update(id3_params)
        format.html { redirect_to @id3, notice: 'Id3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @id3 }
      else
        format.html { render :edit }
        format.json { render json: @id3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /id3s/1
  # DELETE /id3s/1.json
  def destroy
    @id3.destroy
    respond_to do |format|
      format.html { redirect_to id3s_url, notice: 'Id3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_id3
      @id3 = Id3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def id3_params
      params.require(:id3).permit(:title, :artist, :album, :uriinfo_ids => [])
    end
end
