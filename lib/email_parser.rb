# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
class EmailAddressParser
    def initialize(emails)
        @orig_str = emails
    end

    def parse
        @new_parse=[]
        @orig_str_parse = @orig_str.split(" ")
        #binding.pry
        @orig_str_parse.each do |email|
                @new_parse << email.tr(",","")
        end
        @new_parse.uniq
    end
end

# binding.pry