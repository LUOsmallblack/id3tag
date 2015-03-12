class Id3Controller < ApplicationController
  def index
    @query = params[:q]
  end
end
