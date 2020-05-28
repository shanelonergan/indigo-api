# ==> SEEDS <==

Favorite.destroy_all
Listing.destroy_all
User.destroy_all
Transaction.destroy_all
Brand.destroy_all
Category.destroy_all
Mill.destroy_all
Condition.destroy_all
Wash.destroy_all


# ==> Brands <==

levis = Brand.create(
    name: "Levi Strauss & Co",
    location: "USA",
    bio: "Bio here",
    year_founded: 1853
)

apc = Brand.create(
    name: "A.P.C",
    location: "France",
    bio: "Bio here",
    year_founded: 1987
)

threesixteen = Brand.create(
    name: "3sixteen",
    location: "USA",
    bio: "Bio here",
    year_founded: 2008
)

railcar = Brand.create(
    name: "Railcar Fine Goods",
    location: "USA",
    bio: "Bio here"
    # year_founded: 1853
)

acne = Brand.create(
    name: "Acne Studios",
    location: "Sweden",
    bio: "Bio here"
)

nudie = Brand.create(
    name: 'Nudie Jeans',
    location: 'Sweden',
    year_founded: 2001
)

# ==> Categories <==

pants = Category.create(name: "pants")
jackets = Category.create(name: "jackets")
shirts = Category.create(name: "shirts")
overalls = Category.create(name: "overalls")
skirts = Category.create(name: "skirts")

# ==> Conditions <==

neverworn = Condition.create(name: "new/never worn")
gently = Condition.create(name: "gently used")
used = Condition.create(name: "used")
very = Condition.create(name: "very used")
unspecified = Condition.create(name: "unspecified")

# ==> Mills <==

amhot = Mill.create(
    name: "Amhot Mills",
    location: "Osaka, Japan",
    bio: "Founded on August 13, 1993 and based in Osaka, the sheer impenetrability of Amhot Mills‘ internet presence is enough to pique the curiosity of any casual web browser. In fact, you must email someone at the company to request a log-in code to even visit their website. And while their web design may seem like something out of the dark ages, their fabric offerings are anything but. Like many Japanese textile developers, Amhot takes cues from Japan’s long and vibrant history of weaving and sewing, but gives them a modern edge",
    year_founded: 1993
)

kuroki = Mill.create(
    name: "Kuroki Mills",
    location: "Okayama, Japan",
    bio: "Founded in 1950 by Tamotsu Kuroki, it wouldn’t be until 1960 that they would begin to produce denim. Originally, they vat-dyed their denim (somewhat heretical in the denim community), but by 1965, the mill began rope-dying. This gave their product a more authentic look and allowed the fabric to develop fades that mimicked and even rivaled those of the original American blue jean makers. By 1970, the company was producing denim exclusively, and in 1988, they moved to the factory pictured above. Kuroki now supplies denim to some of the heaviest hitters in the industry including 3sixteen.",
    year_founded: 1950
)

collect = Mill.create(
    name: "Collect",
    location: "Kojima, Japan",
    bio: "People say that an organization is only as good as its weakest link, and there are certainly no weak links at that conglomeration known as Japan Blue Group from Kojima. Everything began with Collect, the actual mill and fabric provider, which was founded in 1992. For 14 years, meticulously weaving denim on antique looms was enough, but by 2006 they decided to take that product and apply it to their own designs and founded the first of two in-house denim brands. They called it Momotaro for the mythical boy in the peach, and even gave their jeans a signature pink-line selvedge to do their name-sake justice. In 2010 Japan Blue Jeans was founded, selling similarly high-quality jeans at a lower price point.",
    year_founded: 1992
)

cone = Mill.create(
    name: "Cone Mills",
    location: "Greensboro, North Carolina, USA",
    bio: "Cone Mills is the last of a dying breed—the last selvedge denim mill in the United States. Founded by Moses and Caesar Cone in 1891 in Greensboro, North Carolina, the company got its big break with the so-called “Golden Handshake” in 1915, made with Levi Strauss Co. This informal handshake deal made Cone Mills the exclusive denim-provider for Levi’s, and the deal lasted until Levi’s moved production overseas, although premium Levi’s are still cut from the same old Cone denim. Cone Mills product could be identified by the red line in their selvedge edge and the characteristic inconsistencies in the fabric comes from a slight bounce in the wood floors as the Draper X3 looms do their thing.",
    year_founded: 1891
)

candiani = Mill.create(
    name: "Candiani Mills",
    location: "Milano, Italy",
    bio: "Candiani got its start in 1938 outside of Milano, Italy. Candiani has been family-run since its inception, and after over 75 years in the business has declared themselves the greenest denim mill in the industry. They have won a number of awards for their commitment to sustainability, and with their two factories, they are the largest denim producer in Europe.",
    year_founded: 1938
)

# <== Washes ==>

light = Wash.create(name: "light wash")
mid = Wash.create(name: "mid wash")
dark = Wash.create(name: "dark wash")
black = Wash.create(name: "black")
dye = Wash.create(name: "dye")
stone = Wash.create(name: "stone wash")
acid = Wash.create(name: "acid wash")
bleach = Wash.create(name: "bleach wash")

# <== Users ==>

shane = User.create(
    username: "Shane",
    email: "sptlonergan@gmail.com",
    location: "New York"
)

sukrit = User.create(
    username: "Sukrit",
    email: "sukrit@gmail.com",
    location: "New York"
)

matt = User.create(
    username: "Matt",
    email: "matt@gmail.com",
    location: "New York"
)

evan = User.create(
    username: "Evan",
    email: "evanlon92@gmail.com",
    location: "New York"
)

quinn = User.create(
    username: "Quinn",
    email: "sptlonergan@gmail.com",
    location: "New York"
)

amy = User.create(
    username: "Amy",
    email: "aroweintraub@gmail.com",
    location: "New York"
)

# <== Listings and Photos ==>

l1 = Listing.create(
    name: 'Fantastic Selvedge Vintage Levi\'s',
    user_id: shane.id,
    brand_id: levis.id,
    category_id: pants.id,
    condition_id: used.id,
    wash_id: mid.id,
    mill_id: cone.id,
    waist: 33,
    length: 36,
    weight: 13,
    price: 240,
    description: 'Beautiful vintage Levi\'s 501s, made with famed Cone Mills selvedge denim. Word in beautifully over the years, but still in greate condition. Rare find!'
)

Photo.create(
    url: 'https://imgur.com/N9kRJjV',
    listing_id: l1.id
)

Photo.create(
    url: 'https://imgur.com/CeVoOwL',
    listing_id: l1.id
)

l2 = Listing.create(
    name: 'Brand New APC Jeans',
    user_id: shane.id,
    brand_id: apc.id,
    category_id: pants.id,
    condition_id: neverworn.id,
    wash_id: dark.id,
    mill_id: candiani.id,
    waist: 30,
    length: 32,
    weight: 12,
    price: 80,
    description: 'New, never word APC Petit New Standards. These are great italian selvedge jeans in a modern slim fit. Great deal!'
)

Photo.create(
    url: 'https://imgur.com/uM1jYjK',
    listing_id: l2.id
)

Photo.create(
    url: 'https://imgur.com/yL7rvab',
    listing_id: l2.id
)

l3 = Listing.create(
    name: 'Gently Used Acne Jeans',
    user_id: sukrit.id,
    brand_id: acne.id,
    category_id: pants.id,
    condition_id: gently.id,
    wash_id: black.id,
    mill_id: collect.id,
    waist: 30,
    length: 34,
    weight: 11,
    price: 100,
    description: 'Gently used grey/washed black Acne jeans. These are a great pair of staple denim, I just got them in the wrong size by mistake. My loss is your gain!'
)

Photo.create(
    url: 'https://imgur.com/uM1jYjK',
    listing_id: l3.id
)

Photo.create(
    url: 'https://imgur.com/JlgejMA',
    listing_id: l3.id
)

l4 = Listing.create(
    name: 'Sick Railcar Heavy Jeans',
    user_id: matt.id,
    brand_id: railcar.id,
    category_id: pants.id,
    condition_id: gently.id,
    wash_id: dark.id,
    mill_id: kuroki.id,
    waist: 31,
    length: 32,
    weight: 20,
    price: 200,
    description: 'Insane 20oz selvege denim from the #1 denim mill in the world, Kuroki Mills. These jeans will literally last forever, and only look better with age. These are made to order by Railcar, so they are very rare to find.'
)

Photo.create(
    url: 'https://imgur.com/wcb3gGH',
    listing_id: l4.id
)

Photo.create(
    url: 'https://imgur.com/7h6TLBp',
    listing_id: l4.id
)

l5 = Listing.create(
    name: 'Used Nudie Jeans',
    user_id: shane.id,
    brand_id: nudie.id,
    category_id: pants.id,
    condition_id: used.id,
    wash_id: light.id,
    mill_id: amhot.id,
    waist: 30,
    length: 32,
    weight: 11,
    price: 50,
    description: 'Well-loved Nudie Jeans. These are super comfortable, everday-wear jeans. Still plenty of life left in them!'
)

Photo.create(
    url: 'https://imgur.com/ixnsvzJ',
    listing_id: l5.id
)

Photo.create(
    url: 'https://imgur.com/ixnsvzJ',
    listing_id: l5.id
)

l6 = Listing.create(
    name: 'Fantastic Selvedge Vintage Levi\'s',
    user_id: shane.id,
    brand_id: levis.id,
    category_id: pants.id,
    condition_id: used.id,
    wash_id: mid.id,
    mill_id: cone.id,
    waist: 33,
    length: 36,
    weight: 13,
    price: 240,
    description: 'Beautiful vintage Levi\'s 501s, made with famed Cone Mills selvedge denim. Word in beautifully over the years, but still in greate condition. Rare find!'
)

Photo.create(
    url: 'https://imgur.com/N9kRJjV',
    listing_id: l6.id
)

Photo.create(
    url: 'https://imgur.com/CeVoOwL',
    listing_id: l6.id
)

l7 = Listing.create(
    name: 'Brand New APC Jeans',
    user_id: shane.id,
    brand_id: apc.id,
    category_id: pants.id,
    condition_id: neverworn.id,
    wash_id: dark.id,
    mill_id: candiani.id,
    waist: 30,
    length: 32,
    weight: 12,
    price: 80,
    description: 'New, never word APC Petit New Standards. These are great italian selvedge jeans in a modern slim fit. Great deal!'
)

Photo.create(
    url: 'https://imgur.com/uM1jYjK',
    listing_id: l7.id
)

Photo.create(
    url: 'https://imgur.com/yL7rvab',
    listing_id: l7.id
)

l8 = Listing.create(
    name: 'Gently Used Acne Jeans',
    user_id: sukrit.id,
    brand_id: acne.id,
    category_id: pants.id,
    condition_id: gently.id,
    wash_id: black.id,
    mill_id: collect.id,
    waist: 30,
    length: 34,
    weight: 11,
    price: 100,
    description: 'Gently used grey/washed black Acne jeans. These are a great pair of staple denim, I just got them in the wrong size by mistake. My loss is your gain!'
)

Photo.create(
    url: 'https://imgur.com/uM1jYjK',
    listing_id: l8.id
)

Photo.create(
    url: 'https://imgur.com/JlgejMA',
    listing_id: l8.id
)

l9 = Listing.create(
    name: 'Sick Railcar Heavy Jeans',
    user_id: matt.id,
    brand_id: railcar.id,
    category_id: pants.id,
    condition_id: gently.id,
    wash_id: dark.id,
    mill_id: kuroki.id,
    waist: 31,
    length: 32,
    weight: 20,
    price: 200,
    description: 'Insane 20oz selvege denim from the #1 denim mill in the world, Kuroki Mills. These jeans will literally last forever, and only look better with age. These are made to order by Railcar, so they are very rare to find.'
)

Photo.create(
    url: 'https://imgur.com/wcb3gGH',
    listing_id: l9.id
)

Photo.create(
    url: 'https://imgur.com/7h6TLBp',
    listing_id: l9.id
)

l10 = Listing.create(
    name: 'Used Nudie Jeans',
    user_id: shane.id,
    brand_id: nudie.id,
    category_id: pants.id,
    condition_id: used.id,
    wash_id: light.id,
    mill_id: amhot.id,
    waist: 30,
    length: 32,
    weight: 11,
    price: 50,
    description: 'Well-loved Nudie Jeans. These are super comfortable, everday-wear jeans. Still plenty of life left in them!'
)

Photo.create(
    url: 'https://imgur.com/ixnsvzJ',
    listing_id: l10.id
)

Photo.create(
    url: 'https://imgur.com/ixnsvzJ',
    listing_id: l10.id
)


puts "👖 👖 👖 👖 👖 👖 👖 👖 👖"





