# ==> SEEDS <==

User.destroy_all
Transaction.destroy_all
Listing.destroy_all
Brand.destroy_all

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

3sixteen = Brand.create(
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






