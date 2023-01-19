class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :company, through:freebies
    def freebies
        self.freebies
    end

    def companies
        self.companies
    end

    def recieved_one?(item_name)
        self.freebies.any? {|freebie| freebie.item_name == item_name
    end
        def give_away(dev,freebie)
            if self == freebie.dev
                freebie.update(dev: dev)
            end
        end
end
