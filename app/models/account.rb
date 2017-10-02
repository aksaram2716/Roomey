class Account < ApplicationRecord

    validates_presence_of :name
    validates_presence_of :password

    def create
        NewAccountMailer.submitted('nick').deliver_later
    end
end
