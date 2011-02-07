Factory.define :boat do |b|
  b.name 'ondine'
  b.boat_type 'canal-boat'
  b.url 'canal-boat-ondine'
  b.description 'desc'
  b.price1 3
  b.price2 2
  b.price3 1
  b.max_persons 30
  b.max_persons_buffet 20
  b.max_persons_dinner 10
  b.min_hours 2
  b.association :boat_company
end

Factory.define :request do |r|
  r.persons 14
  r.first_name 'Stephan'
  r.last_name  'van Eijkelenburg'
  r.email 'stephanvane@gmail.com'
  r.phone '0618351895'
  r.date Date.parse('14/2/2011')
  r.start Time.parse('12:30')  
  r.end Time.parse('15:30')
  r.association :requested, :factory => :boat
end

Factory.define :boat_company do |bc|
  bc.name 'Amsterdam Boats'
  bc.email 'info@amsterdamboats.com'
  bc.phone '0612341234'
  bc.secret '12345'
end