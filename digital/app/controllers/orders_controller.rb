class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
    
    end
  
  def display
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    $value = params[:device_id]
    @device = Device.find($value)
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
	@order = Order.new(order_params)
	@order.user_id = current_user.id

    respond_to do |format|
      if @order.save
        current_user.carts.where(:order_id => nil).update_all(:order_id => @order.id)
       current_user.carts.where(:status => "pending").update_all(:status => "ordered")
      current_user.orders.where(:order_status_id => nil).update_all(:order_status_id => 1)
       @cart = Device.find($value)
	@t=Order.last
				@schedule=Schedule.new
                                @schedule.user_id = current_user.id
				@schedule.fromdate=@cart.fromdate
				@schedule.todate=@cart.todate
				@schedule.fromtime=@cart.fromtime
				@schedule.totime=@cart.totime
				@schedule.device_id=@cart.id
				@schedule.order_id=@t.id
				@schedule.save
	format.html { redirect_to orders_url, notice: "your order was created" }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
end

  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def user_order
	 @orders = Order.all
    respond_to do |format|
    format.js
  end
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:card_type, :user_id, :cart_id, :status_id)
    end
end
