require "sinatra"
require "mandrill-api"

get "/" do
	@title = "Home"
	erb :home
end

get "/about" do
	@title = "How It Works"
	erb :about
end

get "/services" do
	@title = "Our Services"
	erb :services
end

get "/contact" do
	@title = "Contact Us"
	erb :contact
end

get "/appointment" do
	@title = "Book An Appointment"
	erb :appointment
end

get "/recruit" do
	@title = "Join Our Team"
	erb :recruit
end