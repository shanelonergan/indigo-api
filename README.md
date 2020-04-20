# Indigo

## Description

A clothing resale application created specifically for denim. It allows listing, sorting, and filtering based on denim specific attributes, creating a marketplace tailored to the needs of new and vintage high-quality denim garments.

## Motivation

Inspired by applications like Grailed and Poshmark, Indigo aims to cater exclusively to denim-lovers. Denim has seen a massive resurgence over the past 5 years, and consumers are now highly educated about the qualities of their denim garments. Close attention is paid to which mill the denim was sourced from, as well as the weight and wash of the denim. Vintage denim coming from prized mills is highly sought after, and many new companies have sprung up to create modern garments with the quality of the vintage heirlooms. Indigo aims to make finding specific and high-quality denim garments as simple and enjoyable as possible.

## Build Status

[![Netlify Status](https://api.netlify.com/api/v1/badges/398cc6de-3a0b-4275-9a76-2dba030a0d30/deploy-status)](https://app.netlify.com/sites/indigo-deployment/deploys) ![Heroku](https://heroku-badge.herokuapp.com/?app=indigo-api-deployment&root=/users)

## Demo

![Gif Demo](https://media.giphy.com/media/XAxhTIvKIEA987chtR/giphy.gif))

## Screenshots

![screenshot of Indigo's home page, part 1](./public/indigo-home-1.png 'home page 1')
![screenshot of Indigo's home page, part 1](./public/indigo-home-2.png 'home page 2')
![screenshot of Indigo's shopping page, showing many listings and filters for them](./public/indigo-listings.png 'listings')
![screenshot of Indigo's new listing form](./public/indigo-new-listing.png 'new listing')
![screenshot of Indigo's login modal](./public/indigo-login.png 'log in')
![screenshot of Indigo's sign up form](./public/indigo-signup.png 'sign up')

## Technologies

### Front-End

- Framework
  - [React](www.github.com/react)
- State Management
  - [Redux](link)
  - [React Hooks](link)
- Routing
  - [React Router](link)
- User Interface
  - [Grommet](www.github.com/grommet)

### Back-End

[Link to Back-End Repo](https://github.com/shanelonergan/indigo-api)

- API
  - [Ruby on Rails](link)
  - [Active Model Serializer](link)
- Database
  - [PostgreSQL](link)
- Authorization/Authentication
  - [JWT](link)
  - [BCrypt](link)

### Stripe API

Indigo utilizes the Stripe API to securely handle payment processing. It is integrated using [Stripe-Checkout-React](link). A walk-through of the relevant code can be found below:

```ruby
# indigo-api/app/controllers/charges_controller.rb

require 'stripe'
require 'dotenv'
Dotenv.load

class ChargesController < ApplicationController

    def create

      begin

        Stripe.api_key = ENV['STRIPE_SECRET_KEY']
        token = params[:charge][:token]
        price = params[:price]

        charge = Stripe::Charge.create({
          amount: price * 100,
          currency: 'usd',
          description: 'Example charge',
          source: token,
        })

        render json: charge

      rescue Stripe::CardError => e
        puts "Status is: #{e.http_status}"
        puts "Type is: #{e.error.type}"
        puts "Charge ID is: #{e.error.charge}"

      rescue Stripe::InvalidRequestError => e
        render json: e

      rescue Stripe::AuthenticationError => e
        render json: e

      rescue Stripe::APIConnectionError => e
        render json: e

      rescue Stripe::StripeError => e
        render json: e

      rescue => e
        render json: e

      end
    end
end
```

## Installation

Clone the repo and CD inside the directory

1. Clone repo and CD into the directory
2. run `bundle install` to install necessary dependencies
3. run `rails db:create` to create your PostgreSQL database
4. run `rails db:migrate` to bring up migrations
5. run `rails db:seed` to seed sample data
6. run `rails s` to start the server

**Note:** if you are running the front-end together with the API, it is recommended that you start the Rails server first, then the NPM server. This will prompt you as to whether you want to run the NPM server on port 3001, to which you should respond yes.

Make sure to visit the repo for the front-end and follow those instructions as well.

## Contributing

Pull requests are always welcome! Please make sure that your PR is [well-scoped](https://www.netlify.com/blog/2020/03/31/how-to-scope-down-prs/).

<table>
  <tr>
    <td align="center"><a href="http://shanelonergan.dev/"><img src="https://avatars2.githubusercontent.com/u/52255508?s=400&u=ca705fb2292c36027735a9b012b720a0ce869649&v=4" width="200px;" alt=""/><br /><sub><b>Shane Lonergan</b></sub></a><br /><a href="https://github.com/shanelonergan/indigo/commits?author=shanelonergan" title="Code">💻</a> <a href="#infra-sruti" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a> <a href="https://github.com/sruti/covid19-riskfactors-app/issues/created_by/sruti https://github.com/shanelonergan/indigo/issues/created_by/shanelonergan" title="Bug reports">🐛</a><a href="#ideas-sruti" title="Ideas, Planning, & Feedback">💡</a></td>
    </tr>
</table>

## License

[MIT](https://choosealicense.com/licenses/mit/) © [Shane Lonergan](https://github.com/shanelonergan/)
