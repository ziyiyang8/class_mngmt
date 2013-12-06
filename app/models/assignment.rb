class Assignment < ActiveRecord::Base

	scope :pending, -> { where(done: [false, nil]) }
	scope :completed, -> { where(done: true) }
end
