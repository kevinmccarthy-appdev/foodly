class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all

    render("restaurants/index.html.erb")
  end

  def show
    @restaurant = Restaurant.find(params[:id])

    render("restaurants/show.html.erb")
  end

  def new
    @restaurant = Restaurant.new

    render("restaurants/new.html.erb")
  end

  def create
    @restaurant = Restaurant.new

    @restaurant.name = params[:name]
    @restaurant.price = params[:price]
    @restaurant.address = params[:address]
    @restaurant.city = params[:city]
    @restaurant.zipcode = params[:zipcode]
    @restaurant.cuisine = params[:cuisine]
    @restaurant.foodly_rating = params[:foodly_rating]
    @restaurant.yelp_rating = params[:yelp_rating]
    @restaurant.yelp_url = params[:yelp_url]
    @restaurant.newspaper_rating = params[:newspaper_rating]
    @restaurant.newspaper_url = params[:newspaper_url]
    @restaurant.infatuation_rating = params[:infatuation_rating]
    @restaurant.infatuation_url = params[:infatuation_url]
    @restaurant.google_rating = params[:google_rating]
    @restaurant.google_url = params[:google_url]

    save_status = @restaurant.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/restaurants/new", "/create_restaurant"
        redirect_to("/restaurants")
      else
        redirect_back(:fallback_location => "/", :notice => "Restaurant created successfully.")
      end
    else
      render("restaurants/new.html.erb")
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])

    render("restaurants/edit.html.erb")
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    @restaurant.name = params[:name]
    @restaurant.price = params[:price]
    @restaurant.address = params[:address]
    @restaurant.city = params[:city]
    @restaurant.zipcode = params[:zipcode]
    @restaurant.cuisine = params[:cuisine]
    @restaurant.foodly_rating = params[:foodly_rating]
    @restaurant.yelp_rating = params[:yelp_rating]
    @restaurant.yelp_url = params[:yelp_url]
    @restaurant.newspaper_rating = params[:newspaper_rating]
    @restaurant.newspaper_url = params[:newspaper_url]
    @restaurant.infatuation_rating = params[:infatuation_rating]
    @restaurant.infatuation_url = params[:infatuation_url]
    @restaurant.google_rating = params[:google_rating]
    @restaurant.google_url = params[:google_url]

    save_status = @restaurant.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/restaurants/#{@restaurant.id}/edit", "/update_restaurant"
        redirect_to("/restaurants/#{@restaurant.id}", :notice => "Restaurant updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Restaurant updated successfully.")
      end
    else
      render("restaurants/edit.html.erb")
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])

    @restaurant.destroy

    if URI(request.referer).path == "/restaurants/#{@restaurant.id}"
      redirect_to("/", :notice => "Restaurant deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Restaurant deleted.")
    end
  end
end
