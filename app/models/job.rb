class Job < ActiveRecord::Base
    # method to define all avaialbe languages
    def self.all_languages
        ['English', 'Spanish', 'Chinese', 'Tagalog', 'Vietnamese', 'French', 'German', 'Korean', 'Arabic', 'Russian', 'Italian']
    end
    
    # search method for the main page
    def self.search(search)
        if search
            where('jobTitle || companyName LIKE ?', "%#{search}%")
        else
            where(nil)
        end
    end
end