class EmailsController < ApplicationController
  def index

  end

  def standard
    SendEmail.default_email(recipients).deliver

    AnotherEmail.default_email(recipients).deliver
    redirect_to emails_path, notice: "Send email standard"
  end

  def delayed

  end
  private
  def recipients
    ["shkeelrauf@gmail.com"]
  end
end
