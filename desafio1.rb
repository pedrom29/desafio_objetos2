class Table
    attr_accessor :name, :days
    def initialize(name, *days)
        @name = name
        @days = days.map(&:to_i)
    end

    def mayor_valor
        mayor = @days.max
        puts "#{@name}: Mayor valor #{mayor} : Día #{@days.index(mayor)+1}"
    end
    
    def promedio
        return "Promedio recaudación #{@nombre} #{@days.sum / @days.count.to_f}"
    end
end

file = File.open('casino.txt', 'r')
data = file.readlines
file.close

casino = []
data.each do |prod|
    ls = prod.split(', ')
    casino.push Table.new(*ls)
end

casino.each do |filter|
    puts filter.mayor_valor
    puts filter.promedio
end