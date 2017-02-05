module FlashHelper
	def convert(key)
		case key
		when "notice"
			"success"
		when "alert"
			"danger"
		when "warning"
			"warning"
		end
	end
end