class ProxyController < ApplicationController
  include ProxyHelper

  def hotlink
    puts params[:domain]+params[:id]
    gethotlink params[:domain], params[:id]
  end
end
