require "sinatra"
require "mandrill"

api_key = ENV['MANDRILL_APIKEY']
m = Mandrill::API.new "#{api_key}"

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

post "/login" do
	@title = "Welcome"
	@photo = "services"
	erb :login
end

post "/mail" do
	@title = "Thank You"
	@photo = "contact"

	message = {
		subject: params[:subject],
		from_name: params[:name],
		text: params[:message],
		to: [{ email: 'mrwillyle@gmail.com', name: 'Recipient1' }],
		html: params[:message],
		from_email: params[:email]
	}
	sending = m.messages.send message
	puts sending
	erb :mail
end