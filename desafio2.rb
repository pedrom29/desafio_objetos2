require 'date'

class Course
    attr_accessor :name, :fechas

    def initialize(name, *fechas)
        @name = name
        @fechas = fechas.map {|date| Date.parse(date)}
    end

    def self.read_file
        file = File.open('cursos.txt', 'r') 
        data = file.readlines
        file.close

        curso = []
        data.each do |date|
            ls = date.split(' ')
            curso.push Course.new(*ls)
        end
    end

    def before(filter_date)
        raise ArgumentError, 'El argumento no es valido' unless filter_date >= 2018-01-01
        @fechas.select {|date| date < filter_date}
    end

    def after(filter_date) 
        raise ArgumentError, 'El argumento no es valido' unless filter_date >= 2018-01-01
        @fechas.select {|date| date > filter_date}       
    end
end

course = Course.read_file

fecha = []

course.each do |curso|
    ls = curso.split ()
    fecha.push Course.new(*ls)
end

fecha.each do |date|
    puts date.before(Date.today)
    puts date.after(Date.today)
end

