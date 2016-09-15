class Message
  def initialize(body,user,url)
    @body, @user, @url = body,user,url
  end
  def send
    HTTParty.post "http://localhost:3010/message",body: {
      message: {
        body: @body,
        user: @user,
        url: @url
      }
    }.to_json,headers: {
      "Accept"=> "application/json",
      "Content-type" => "aplication/json"
    }
  end

end