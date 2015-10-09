require "sinatra"

get "/" do
	@title = "Home"
	@photo = "home"
	erb :home
end

get "/about" do
	@title = "How It Works"
	@photo = "about"
	erb :about
end

get "/services" do
	@title = "Our Services"
	@photo = "services"
	erb :services
end

get "/contact" do
	@title = "Contact Us"
	@photo = "contact"
	erb :contact
end

get "/appointment" do
	@title = "Book An Appointment"
	@photo = "appointment"
	erb :appointment
end

get "/recruit" do
	@title = "Join Our Team"
	@photo = "recruit"
	erb :recruit
end