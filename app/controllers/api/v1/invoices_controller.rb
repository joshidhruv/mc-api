module Api
  module V1
class InvoicesController < ApplicationController
  before_action :set_invoice, only: %i[ show update destroy ]

  # GET /invoices or /invoices.json
  def index
    @invoices = Invoice.all
    render json: @invoices
  end

  # GET /invoices/1 or /invoices/1.json
  def show
    # if invoice.presence?
    render json: @invoice
  # else
  #   render json: {error: ["Couldn't find Invoice."]}, status: :not_found
  # end
  end

  # GET /invoices/new
  def new
    @invoice = Invoice.new
  end

  # GET /invoices/1/edit
  # def edit
  # end

  # POST /invoices or /invoices.json
  def create
    @invoice = Invoice.new(invoice_params)
      if @invoice.save
        render json: @invoice, status: :created
        else
          render json: @invoice.errors, status: :unprocessable_entity
        end
  end

  # PATCH/PUT /invoices/1 or /invoices/1.json
  def update
      if @invoice.update(update_invoice_params)
        render json: @invoice
        else
          render json: @invoice.errors, status: :unprocessable_entity
        end
      end

  # DELETE /invoices/1 or /invoices/1.json
  def destroy
    @invoice.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice
      @invoice = Invoice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def invoice_params
      params.require(:invoice).permit(:identifier, :currency, :memo, :due_date, :open_balance, :amount,
      sender: {}, recipient: {}, 
      line_items_attributes: %i[quantity description amount invoice_id],
      )
    end
    def update_invoice_params
      params.permit(:identifier, :currency, :memo, :due_date, :open_balance, :amount,
      sender: {}, recipient: {}, 
      line_items_attributes: [:id, :quantity, :description, :amount, :invoice_id],
      )
    end
  end
end
end
