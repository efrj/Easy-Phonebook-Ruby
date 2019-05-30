helpers do
  def contact_name file
    file_name = file.split('/')
    contact_name = file_name[3].gsub('_', ' ')
    contact_name = contact_name.gsub('.xml', '').upcase
    return contact_name
  end

  def file_letter file
    file_name = file.split('/')
    file_letter = file_name[2]
    return file_letter
  end

  def file_name file
    file_name = file.split('/')
    file_name = file_name[3].gsub('.xml', '')
    return file_name
  end
end
