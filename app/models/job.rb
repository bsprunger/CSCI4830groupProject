class Job < ActiveRecord::Base
    def self.all_languages
        ['English', 'Spanish', 'Chinese', 'Tagalog', 'Vietnamese', 'French', 'German', 'Korean', 'Arabic', 'Russian', 'Italian']
    end
    
    
    def self.search(search)
        if search
            where('jobTitle || companyName LIKE ?', "%#{search}%")
        else
            where(nil)
        end
    end
end