# Preview all emails at http://localhost:3000/rails/mailers/poll_mailer
class PollMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/poll_mailer/invite
  def invite
    PollMailer.invite
  end

  # Preview this email at http://localhost:3000/rails/mailers/poll_mailer/choose_final
  def choose_final
    PollMailer.choose_final
  end

end
