# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


swan_lake = Ballet.create!(name: 'Swan Lake', composer: 'Tchaikovsky', choreographer: 'Peter Martins', ballerina: 'Sara Mearns')
emeralds = Ballet.create!(name: 'Emeralds', composer: 'Fauré', choreographer: 'Balanchine', ballerina: 'Abi Stafford')




swan_lake_review = Review.create!(description: 'Ms. Mearns, interpreting the double role with completely authoritative individuality, makes both heroines arrestingly multilayered. Her Odette reveals a capacity for voluptuous passion within doomed captivity; her Odile is extraordinarily cool, enigmatic, even poignant, notwithstanding sweeping brilliance.-Alastair MacCaulay', ballet: swan_lake)
emeralds_review = Review.create!(description:'On opening night, Abi Stafford, in the first ballerina role, ably supported by her partner, Jared Angle, created a world of rapt serenity in the first pas de deux, seamlessly moving onstage with tiny, quicksilver bourrées as if flowing on a cloud. In her subsequent solo, she spun and whirled with elegance and flair, turning her liquid, silky-smooth arm movements into a tapestry of stunning designs.', ballet: emeralds)
