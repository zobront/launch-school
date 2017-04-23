# SWITCHES = []
#
# (1..1000).each {|n| SWITCHES << n }
#
# def divisors(number)
#   (1..number).select {|n| number % n == 0 }
# end
#
# p SWITCHES.select {|switch| divisors(switch).size % 2 != 0 }


def toggle(lights)
  1.upto(lights.size) do |round_number|
    lights.each do |position, value|
      if position % round_number == 0
        value == "off" ? lights[position] = "on" : lights[position] = "off"
      end
    end
  end
end

def on_lights(lights)
  lights.keys.select {|key| lights[key] == "on" }
end

lights = Hash.new
1.upto(1000) { |number| lights[number] = "off" }
toggle(lights)
p on_lights(lights)
