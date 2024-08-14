require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'linkedin_cio_data.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  p = Prospect.new
  p.name = row['Name']
  p.company_name = row['Company']
  p.linkedin_url = row['Url']
  p.save
end