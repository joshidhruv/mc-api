module Api
  module V1
class LineItemsController < ApplicationController
  before_action :set_line_item, only: %i[ show update destroy ]

  # GET /line_items or /line_items.json
  def index
    @line_items = LineItem.all
    render json: @line_items
  end

  # GET /line_items/1 or /line_items/1.json
  def show
    render json: @line_item
  end

  # GET /line_items/new
  def new
    @line_item = LineItem.new
  end

  # GET /line_items/1/edit
  # def edit
  # end

  # POST /line_items or /line_items.json
  def create
    @line_item = LineItem.new(line_item_params)
      if @line_item.save
        render json: @line_item, status: :created
        else
          render json: @line_item.errors, status: :unprocessable_entity
        end
  end

  # PATCH/PUT /line_items/1 or /line_items/1.json
  def update
      if @line_item.update(line_item_params)
        render json: @line_item
      else
        render json: @line_item.errors, status: :unprocessable_entity
      end
    end

  # DELETE /line_items/1 or /line_items/1.json
  def destroy
    @line_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_item
      @line_item = LineItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def line_item_params
      params.require(:line_item).permit(:quantity, :description, :amount, :invoice_id)
    end
  end
end
end