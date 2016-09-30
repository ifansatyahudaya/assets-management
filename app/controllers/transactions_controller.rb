class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show, :edit, :update, :destroy]
  # before_action :set_asset_collection, only: [:new, :edit]
  def index
    @transactions = Transaction.all  
  end

  def show  
  end

  def new
    @transaction = Transaction.new  
  end

  def create
    @transaction = Transaction.new(transaction_params)
    if @transaction.save
      redirect_to transaction_path(@transaction), notice: "Transaction was successfully created"  
    else
      render "new"  
    end
    ads
  end

  def edit
  end

  def update
    if @transaction.update(transaction_params)  
      redirect_to transaction_path(@transaction), notice: "Transaction was successfully updated"
    else
      render "edit"
    end
  end

  def destroy
    @transaction.destroy
    redirect_to transactions_path, notice: "Transaction was successfully destroyed"  
  end

  private

    # def set_asset_collection
    #   @asset_collection = Asset.all.collect { |a| [a.name, a.id] }  
    # end

    def set_transaction
      @transaction = Transaction.find(params[:id])  
    end

    def transaction_params
      params.require(:transaction).permit(:title, :date_transaction, :price, :asset_id, :attachment)
    end
end
