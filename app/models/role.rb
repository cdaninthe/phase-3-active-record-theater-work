class Role < ActiveRecord::Base
    has_many :auditions

    def actors 
        # self.auditions.map do |audition|
        #     audition.actor
        # end
        self.auditions.pluck(:actor)
    end

    def locations
        # self.auditions.map do |audition|
        #     audition.location
        # end
        self.auditions.pluck(:location)
    end 

    def lead
        # hired = self.auditions.where("hired = ?", true)
        hired = self.auditions.find{|audition| audition.hired}
        hired ? hired : 'no actor has been hired for this role'
    end

    def understudy
        hired = self.auditions.filter{|audition| audition.hired}
        hired[1] ? hired[1] : 'no actor has been hired for this role'    
    end

end