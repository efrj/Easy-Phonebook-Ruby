class Contact
	def name
		@name
	end

	def email
		@email
	end

	def birthdate
		@birthdate
	end

	def phone_number
		@phone_number
	end

	def findAll letter
		@files = Dir.glob('xml/letter/' << letter <<'/*.xml')
		return @files
	end

	def save name, email, birthdate, phone_number
		require 'nokogiri'
		@name = name
		@email = email
		@birthdate = birthdate
		@phone_number = phone_number

		builder = Nokogiri::XML::Builder.new do |xml|
			xml.contact {
				xml.name @name
				xml.email @email
				xml.birthdate @birthdate
				xml.phone_number @phone_number
			}
		end
		xml_string = builder.to_xml
		letter_contact = name[0,1].downcase!
		Dir.mkdir('xml/letter/' << letter_contact) unless File.exists?('xml/letter/' << letter_contact)
		file_name = name.gsub(' ', '_').downcase!
		File.open('xml/letter/' << letter_contact << '/' << file_name << '.xml', 'w+') do |file|
			file.write xml_string
		end
		return letter_contact
	end

	def find letter, file
		require 'nokogiri'
		@file = Nokogiri::XML(File.open('xml/letter/' << letter << '/' << file << '.xml'))
		return @file
	end

	def dropFile letter, file
		if File.exist?('xml/letter/' << letter << '/' << file << '.xml')
			File.delete('xml/letter/' << letter << '/' << file << '.xml')
		end
	end
end