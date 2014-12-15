class Token < ActiveRecord::Base

	def is_verified?
    self.verified
	end

end