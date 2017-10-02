class Account < ApplicationRecord

    validates_presence_of :name
    validates_presence_of :password
    validates_presence_of :email

    def create
        NewAccountMailer.submitted('nick').deliver_later
    end
end
