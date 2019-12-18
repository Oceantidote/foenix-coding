require 'uri'
require 'net/http'
require 'openssl'
module ApplicationHelper


  def sendblue_sign_up(email)
    api_instance = SibApiV3Sdk::ContactsApi.new

    create_contact = SibApiV3Sdk::CreateContact.new # CreateContact | Values to create a contact
    create_contact = { 'email' => email }

    begin
      #Create a contact
      result = api_instance.create_contact(create_contact)
      p result
    rescue SibApiV3Sdk::ApiError => e
      puts "Exception when calling ContactsApi->create_contact: #{e}"
    end
  end

  def add_to_list(email, listID)
    url = URI("https://api.sendinblue.com/v3/contacts/lists/#{listID}/contacts/add")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Post.new(url)
    request["accept"] = 'application/json'
    request["content-type"] = 'application/json'
    request["api-key"] = ENV['SENDBLUE_API_KEY']
    request.body = "{\"emails\":[\"#{email}\"]}"

    response = http.request(request)
    puts response.read_body
  end

end
