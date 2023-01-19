class Company < ActiveRecord::Base
     has_many :freebies
     has_many :company, through:freebies
   
    def freebies
        self.freebies
    end
    def devs
        self.devs
    end

    def self.oldest_company
        Company.order(:founding_year).first
    end

    def give_freebie(dev, item_name, value)
        Freebie.create(dev: dev, company: self, item_name: item_name, value: value)
    end
end
