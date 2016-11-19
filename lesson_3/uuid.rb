def create_uuid
  array = []

  ('a'..'f').each { |x| array << x }
  (0..9).each { |x| array << x.to_s }

  uuid = ''

  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += array.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end
