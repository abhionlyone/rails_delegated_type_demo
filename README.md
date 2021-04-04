
```ruby
affiliate = Affiliate.create(email: "a@example.com")
Product.create!(name: "iga", affiliate: affiliate, purchasable: HealthInsurance.new(favorite_language: "Ruby"))
affiliate.product #=> #<Product id: 1, affiliate_id: 1 ...>
affiliate.product.health_insurance? #=> true
affiliate.product.health_insurance #=> #<HealthInsurance id: 1, ...>
affiliate.product.travel_insurance? #=> false
affiliate.product.travel_insurance #=> nil
...
affiliate = Affiliate.create(email: "b@example.com")
Product.create!(name: "foo", affiliate: affiliate, purchasable: TravelInsurance.new())
affiliate.product #=> #<Product id: 2, affiliate_id: 3, name: "foo", purchasable_type: "TravelInsurance", purchasable_id: 1, ...>
affiliate.product.health_insurance? #=> false
irb(main):025:0> affiliate.product.travel_insurance? #=> true
```

