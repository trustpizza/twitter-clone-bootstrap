class Follow < ApplicationRecord
  belongs_to :sender, class_name: 'User'
  belongs_to :receiver, class_name: 'User', 
              counter_cache: :follows_count
end
