class Job < ActiveRecord::Base
    def self.all_languages
        ['English', 'Spanish', 'Chinese', 'Tagalog', 'Vietnamese', 'French', 'German', 'Korean', 'Arabic', 'Russian', 'Italian']
    end
end