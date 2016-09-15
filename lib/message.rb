class Message
  def initialize(body,user,url)
    @body, @user, @url = body,user,url
  end
  def send
    HTTParty.post "http://localhost:3010/messages",body: {
      message: {
        user: @user,
        body: @body,
        url: @url
      }
    }.to_json, headers: {
      "Accept"=> "application/json",
      "Content-Type" => "application/json"
    }
  end

end