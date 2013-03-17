class Banzena < ActiveRecord::Base
	def self.banzenas_name
		Banzena.select(:name).uniq
	end
end
