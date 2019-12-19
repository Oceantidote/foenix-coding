require 'uri'
require 'net/http'
require 'openssl'
module ApplicationHelper

  def new_subscribe(email)
    url = URI("https://api.sendinblue.com/v3/contacts")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Post.new(url)
    request["accept"] = 'application/json'
    request["content-type"] = 'application/json'
    request["api-key"] = ENV['SENDBLUE_API_KEY']
    request.body = "{\"email\":\"#{email}\",\"listIds\":[12,13],\"updateEnabled\":false}"
    p request.body
    response = http.request(request)
    puts response.read_body
  end

  def new_contact(email, fname, lname, company, message, country, sms)
    url = URI("https://api.sendinblue.com/v3/contacts")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Post.new(url)
    request["accept"] = 'application/json'
    request["content-type"] = 'application/json'
    request["api-key"] = ENV['SENDBLUE_API_KEY']
    request.body = "{\"email\":\"#{email ? email : ""}\",\"attributes\":{\"COMPANY\":\"#{company ? company.capitalize : ""}\",\"SMS\":\"#{sms ? sms : ""}\",\"FULL_NAME\":\"#{fname && lname ? fname.capitalize + " " + lname.capitalize : ""}\",\"MESSAGE\":\"#{message ? message : ""}\",\"COUNTRY\":\"#{country ? country : ""}\",\"FIRSTNAME\":\"#{fname ? fname.capitalize : ""}\",\"LASTNAME\":\"#{lname ? lname.capitalize : ""}\"},\"listIds\":[13],\"updateEnabled\":false}"
    p request.body
    response = http.request(request)
    puts response.read_body
  end

end













