class EventMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.event_mailer.subscription.subject
  #
  def subscription(event, subscription)
    @email = subscription.user_email
    @name = subscription.user_name
    @event = event

    # Берём у юзер его email
    # Subject тоже можно переносить в локали
    mail to: event.user.email, subject: "Новая подписка на #{event.title}"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.event_mailer.comment.subject
  #
  def comment(event, comment, mail)
    @comment = comment
    @event = event

    mail to: mail, subject: "Новый комментарий @ #{event.title}"
  end

  def photo(photo, mail)
    @photo = photo
    @event = photo.event

    mail to: mail, subject: "Новая фотка @ #{@event.title}"
  end
end
