class Calculator
    def initialize (first_number)
        @first_number = first_number
        @progress= []
        @result= first_number
    end
    def add(number)
        @result += number
        @progress.append(["+",number])
        self
    end
    def minus(number)
        @result -= number
        @progress.append(["-",number])
        self
    end
    def multiply(number)
        @result *= number
        @progress.append([ "*",number])
        self
    end
    def divide(number)
        @result /= number
        @progress.append(["/",number])
        self
    end
    def back(steps)
        1.upto(steps) do
            removed = @progress.pop
            case removed[0]
            when "+"
                @result -= removed[1] 
            when "-"
                @result += removed[1] 
            when "*"
                @result /= removed[1] 
            when "/"
                @result *= removed[1]
            end 
        end
        self
    end
    def show
        puts "#{@first_number}#{@progress.join} = #{@result}/ "
    end

end

mohamed = Calculator.new(5).add(2).minus(1).multiply(5).divide(2).back(2).show


