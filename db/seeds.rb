# ==> SEEDS <==

User.destroy_all
Transaction.destroy_all
Listing.destroy_all
Brand.destroy_all

# ==> Brands <==

levis = Brand.create(
    name: "Levi Strauss & Co"
    location: "USA"
    bio: "Bio here"
    year_founded: 1853
)

apc = Brand.create(
    name: "A.P.C"
    location: "France"
    bio: "Bio here"
    year_founded: 1987
)

3sixteen = Brand.create(
    name: "3sixteen"
    location: "USA"
    bio: "Bio here"
    year_founded: 2008
)

railcar = Brand.create(
    name: "Railcar Fine Goods"
    location: "USA"
    bio: "Bio here"
    # year_founded: 1853
)

# ==> Categories <==


