class UserMailer < ApplicationMailer

	default from: 'pugaartur@gmail.com'

	def subemail(user)
		@user = user
		mail(to: @user.email, subject: 'Book subscription')
	end

end
