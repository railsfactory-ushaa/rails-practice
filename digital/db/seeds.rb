# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
roles = Role.create([{ name: 'device_manager' }, { name: 'content_manager' }, { name: 'user' }])
users = User.create( first_name: 'usha', last_name: 'ambig', email: 'ushaambig@railsfactory.org', gender: 'female',  contact_number: '9008636658', password: 'usha12345', password_confirmation: 'usha12345', role_id: 1 )
users.save(:validate => false)

users1 = User.create( first_name: 'pavani', last_name: 'shankar', email: 'pavani@railsfactory.org', gender: 'female', contact_number: '9743253221', password: 'usha12345', password_confirmation: 'usha12345', role_id: 2 )
users1.save(:validate => false)

resolution = Resolution.create([{ size: 1024*576, name: 'widescreen', description: 'aspect ratio is greater than standard 1.37:1' }, {size: 640*480, name: 'normal', description: 'average resolution' }])

location = Location.create([{ name: 'Bangalore', postal_code: '560060' }, { name: 'Chennai', postal_code: '560070' }, { name: 'Hydrabad', postal_code: '560080' }, { name: 'Kochchi', postal_code: '560090' }, { name: 'Mumbai', postal_code: '560063' }])

order_status = OrderStatus.create([{ status: 'scheduled' }, { status: 'canceled' }])
category = Category.create([{name: 'monitor' }, { name: 'user' }])

