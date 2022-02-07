# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :list

    def initialize list
        @list = list
    end

    def parse 
        parsed = []
        individual = @list.split(" ")
        individual.map do |email|
            if email.chars[-1] == "," then parsed << email.chars.slice(0...-1).join
            else parsed << email
            end
        end
        parsed.uniq
    end

end

example = EmailAddressParser.new("john@doe.com, person@somewhere.org")
example2 =EmailAddressParser.new("john@doe.com person@somewhere.org")

puts example.parse
puts example2.parse
