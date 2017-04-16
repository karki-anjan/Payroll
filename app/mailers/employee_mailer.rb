class EmployeeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.employee_mailer.invitation_confirmation.subject
  #
  def invitation_confirmation
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
