require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def integer?(number)
  number.to_i.to_s == number
end

def float?(number)
  number.to_f.to_s == number
end

def valid_number?(number)
  integer?(number) || float?(number)
end

def operation_to_message(op)
  word = case op
  when '+'
    'Adding'
  when '-'
    'Subtracting'
  when '*'
    'Multiplying'
  when '/'
    'Dividing'
  end
  word
end

prompt(MESSAGES['welcome'])
name = gets.chomp

loop do
  if name.empty?()
    prompt(MESSAGES['validname'])
  else
    break
  end
end

prompt("Hi #{name}!")

loop do
  num1 = ''
  loop do
    prompt(MESSAGES['firstnum'])
    num1 = gets.chomp

    if valid_number?(num1)
      break
    else
      prompt(MESSAGES['invalidnum'])
    end
  end

  num2 = ''
  loop do
    prompt(MESSAGES['secondnum'])
    num2 = Kernel.gets.chomp

    if valid_number?(num2)
      break
    else
      prompt(MESSAGES['invalidnum'])
    end
  end

  prompt(MESSAGES['operation'])

  op = ''
  loop do
    op = gets.chomp

    if %w(+ - * /).include?(op)
      break
    else
      prompt(MESSAGES['invalidop'])
    end
  end

  puts "#{operation_to_message(op)} your numbers now..."

  total = case op
          when '*'
            num1.to_i * num2.to_i
          when '/'
            num1.to_f / num2.to_f
          when '+'
            num1.to_i + num2.to_i
          when '-'
            num1.to_i - num2.to_i
          end

  prompt("Your result is: #{total}")

  prompt(MESSAGES['again?'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES['goodbye'])
