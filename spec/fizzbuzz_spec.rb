require 'fizzbuzz'

describe 'fizzbuzz' do

  # Array 1 - 100 for testing
  number = *(1..100)

  #Partition method () returns an array with specified criteria and 
  #returns another array with the rest of the values in the original array.
  fizzbuzz, number = number.partition{ |i| i % 3 == 0 && i % 5 == 0 }

  fizz, number = number.partition{ |i| i % 3 == 0 }

  buzz, number = number.partition{ |i| i % 5 == 0 }

    # it method below checks if number % 5 && % 3 !== 0, returns number
    it "number is not divisible by 3/5 or both" do
        number.each do |x|
          expect(fizzbuzz(x)).to eq x
        end
    end
    # returns fizz if % 3 == 0
    it "number % 3 == 0 return fizz" do
        fizz.each do |x|
            expect(fizzbuzz(x)).to eq "fizz"
        end
    end
    # returns fizz if % 5 == 0
    it "number % 5 == 0 return buzz" do
        buzz.each do |x|
          expect(fizzbuzz(x)).to eq "buzz"
        end
    end
end
