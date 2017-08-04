module ExceptionHandler

	# gracefully includes this module into the relevant namespace
	extend ActiveSupport::Concern

	included do
		rescue_from ActiveRecord::RecordNotFound do |e|
			json_response({ message: e.message }, :not_found)
		end
	
		rescue_from ActiveRecord::RecordInvalid do |e|
			json_response({ message: e.message }, :unprocessable_entity)
		end
	end

end