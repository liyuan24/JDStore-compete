class Review < ApplicationRecord
	before_create :get_stars
	belongs_to :user
	belongs_to :product

	def get_stars
		stars = Rate.find_by_rater_id_and_rateable_id_and_dimension(self.user.id, self.product.id, "quality").stars
		if stars < 2
			self.bad = true
		elsif stars >= 2 && self.stars <=3
			self.fair = true
		else
			self.good = true	
		end
	end

	scope :good, -> {where(:good => true)}
	scope :fair, -> {where(:fair => true)}
	scope :bad, -> {where(:bad => true)}
end
