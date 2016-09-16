class EmailsController < ApplicationController
  def index

  end

  def standard
    SendEmail.default_email(recipients).deliver

    AnotherEmail.default_email(recipients).deliver
    redirect_to emails_path, notice: "Send email standard"
  end

  def delayed
    SendEmailWorker.perform_async("SendEmail",recipients)

    SendEmailWorker.perform_async("AnotherEmail",recipients)

    redirect_to emails_path, notice: "Send email delayed"
  end
  private
  def recipients
    ["shkldon0@gmail.com"]
  end
end
