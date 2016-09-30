class HistoriesController < ApplicationController
  before_action :set_asset, only: [:create] 
  def new
    
  end

  def create
    @history = @asset.histories.new(history_params)  
    if @history.save
      redirect_to asset_path(@asset.id), notice: "History was successfully created"
    else
      render "new"
    end  
  end

  private
    def history_params
      params.require(:history).permit(:description, :date_history)  
    end

    def set_asset
      @asset = Asset.find(params[:asset_id])
    end
end
