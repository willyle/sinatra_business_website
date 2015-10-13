require 'mandrill'
api_key = ENV['MANDRILL_APIKEY']
m = Mandrill::API.new "#{api_key}"
message = {
 :subject=> "Hello from the Mandrill API",
 :from_name=> "Your name",
 :text=>"Hi message, how are you?",
 :to=>[{:email=> "loljmtorres@gmail.com", :name=> "Recipient1"}],
 :html=>"<html><h1>Hi <strong>message</strong>, how are you?</h1></html>",
 :from_email=>"jc@jasoncurran.com"
}
sending = m.messages.send message
puts sending