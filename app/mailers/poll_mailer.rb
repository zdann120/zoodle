class PollMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.poll_mailer.invite.subject
  #
  def invite(poll, email)
    @poll = poll

    mail to: email, subject: "Zoodle Poll: #{@poll.label}"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.poll_mailer.choose_final.subject
  #
  def choose_final(poll)
    @poll = poll

    mail to: @poll.user.email, subject: "Zoodle Poll: Final time chosen for #{@poll.label}"
  end
end
