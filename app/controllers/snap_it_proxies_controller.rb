class SnapItProxiesController < ApplicationController
  before_action :set_snap_it_proxy, :only => [:show]

  layout 'empty'

  def show
  end


  def create
  end




  private
  def set_snap_it_proxy
    # @snap_it_proxy = SnapItProxy.find_by_token(params[:token])
    @snap_it_proxy = SnapItProxy.first
    unless @snap_it_proxy
      # TODO HTTP referrer doesn't exist if proxy is not found
      redirect_to :back, :flash => { :error => "Let's not get snappy over here!" }
    end
  end

  def snap_it_proxy_params
    params.require(:snap_it_proxy).permit(
      :body,
      :language,
      :theme
    )
  end
end