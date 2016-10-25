class OrdersController < ApplicationController
  def create
    order_params = params[:order]
    order_params[:locale] = params[:locale]
    order_params[:referrer] = request.referrer
    order_params[:session_id] = session.id
    @order = Order.create(params[:order])
    ApplicationMailer.new_order(@order).deliver



    render inline: "", status: 201
  end
end