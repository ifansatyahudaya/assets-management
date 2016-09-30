class AssetsController < ApplicationController
  before_action :set_asset, only: [:show, :edit, :update, :destroy]

  def index
    @assets = Asset.all  
  end

  def show    
    @history = @asset.histories.new
  end

  def new
    @asset = Asset.new  
  end

  def create
    @asset = Asset.new(asset_params)  
    if @asset.save
      redirect_to asset_path(@asset), notice: "Asset was successfully created"  
    else
      render "new"  
    end
  end

  def edit
  end

  def update
    if @asset.update(asset_params)
      redirect_to asset_path(@asset), notice: "Asset was successfully updated"  
    else
      render "edit"  
    end
  end

  def destroy
    @asset.destroy
    redirect_to assets_url, notice: "Asset was successfully destroyed"  
  end

  private
    def set_asset
      @asset = Asset.find(params[:id])    
    end

    def asset_params
      params.require(:asset).permit(:name, :purchase_date)
    end
end
