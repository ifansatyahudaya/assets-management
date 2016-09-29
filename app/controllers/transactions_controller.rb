class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all  
  end

  def new
    @transaction = Transaction.new  
  end

  def create
    @transaction = Transaction.new(transaction_params)
  end

  private
    def transaction_params
      params.require(:transaction).permit(:title, :date_of_transaction, :decimal)
    end
end
