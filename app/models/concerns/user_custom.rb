#Whitelist additional fields for devise User objects.
module ItemsSlugged
    extend ActiveSupport::Concern

    included do
        validates :title, presence: true
        extend FriendlyId
        friendly_id :title, use: :slugged
    end

    ################## SLUG ###############  
    

end
