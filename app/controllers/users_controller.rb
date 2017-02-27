class UsersController < ApplicationController

  def index
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def new
    @user = User.find_by_id(params[:id])
  end

  def create
    user = User.find_by_id(params[:id])

    # Set your secret key: remember to change this to your live secret key in production
    # See your keys here: https://dashboard.stripe.com/account/apikeys
    # Stripe.api_key = "sk_test_SGwnOJkSlINjRw6md5KFpRf5"

    # Create a Customer:
    # customer = Stripe::Customer.create(
    #   :email => user.email,
    #   :source => params[:stripeToken], # get the payment token submitted by the form
    # )
    # user.stripe_id = customer.id

  end

end
