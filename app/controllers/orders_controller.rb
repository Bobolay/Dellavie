class OrdersController < ApplicationController
  def create
    # binding.pry
    order_params = params[:order]
    order_params[:locale] = params[:locale]
    order_params[:referrer] = request.referrer
    order_params[:session_id] = session.id
    equal_params = Hash[[:user_position, :name, :email, :phone, :message, :locale, :referrer, :session_id].map{|k| [k, order_params[k]] }]

    if Order.where(equal_params).empty?
      @order = Order.create(order_params)
      ApplicationMailer.new_order(@order).deliver
    end





    render inline: "", status: @order ? 201 : 200
  end
end
