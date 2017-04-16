# Preview all emails at http://localhost:3000/rails/mailers/employee_mailer
class EmployeeMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/employee_mailer/invitation_confirmation
  def invitation_confirmation
    EmployeeMailer.invitation_confirmation
  end

end
