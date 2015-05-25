module Scope

	concern do 
		scope :lasts, 	-> (count) { order('DESC created_at').limit(count) }
		scope :firsts, 	-> (count) { order('ASC created_at').limit(count) }
		
		scope :publish,     -> { where(publish: true)}
		scope :not_publish, -> { where(publish: false)}
		scope :draft,	    -> { where(draft: true, publish: false)}

		scope :per_user, -> (id) { where(user_id: id)}
	end
end