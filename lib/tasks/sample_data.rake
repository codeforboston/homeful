require 'csv'

namespace :db do

  desc "Fill database with all sample users"
  task populate: :environment do
    `rake db:sample_clients`
    `rake db:sample_donors`
    `rake db:sample_partners`
  end

  desc "Fill database with sample clients from CSVs"
  task sample_clients: :environment do

    CSV.foreach("#{Rails.root}/db/fixtures/clients.csv", headers: true) do |r|
      @c = Client.find_by(full_name: r['full_name']) || Client.new
      @c.full_name = r['full_name']
      @c.nickname  = r['nickname']
      @c.bio       = r['bio']
      @c.photo     = r['photo']
      @c.email     = r['email']
      @c.password  = r['password']

      @c.save
    end
  end



  desc "Fill database with sample donors from CSVs"
  task sample_donors: :environment do

    CSV.foreach("#{Rails.root}/db/fixtures/donors.csv", headers: true) do |r|
      @d = Donor.find_by(full_name: r['full_name']) || Donor.new
      @d.full_name = r['full_name']
      @d.nickname  = r['nickname']
      @d.photo     = r['photo']
      @d.email     = r['email']
      @d.password  = r['password']

      @d.save
    end
  end



  desc "Fill database with sample partners from CSVs"
  task sample_partners: :environment do

    CSV.foreach("#{Rails.root}/db/fixtures/partners.csv", headers: true) do |r|
      @p = Partner.find_by(full_name: r['full_name']) || Partner.new
      @p.full_name    = r['full_name']
      @p.description  = r['description']
      @p.photo        = r['photo']
      @p.homepage     = r['homepage']
      @p.email        = r['email']
      @p.password     = r['password']

      @p.save
    end
  end


  desc "Fill database with sample goals for clients"
  task sample_goals: :environment do
    

    goals = [ {
      title: 'Orthotics',
      amount: 200.00,
      description: "Raise $200 for custom orthotics so I can walk with less pain.",
      client_id: 1,
      status: 'active'
    },
    {
      title: "Security Deposit and Last Month's Rent",
      amount: 2000.00,
      description: "Raise $2000 dollars for an apartment security deposit and last month's rent for my family and I.",
      client_id: 2,
      status: 'active'
    },
    {
      title: 'Dentist Visit',
      amount: 150.00,
      description: "Raise $150 to go to the dentist for a painful cavity.",
      client_id: 3,
      status: 'active'
    },
    {
      title: 'Utility Bill',
      amount: 45.00,
      description: "Needs $45 for this month's utility bill.",
      client_id: 4,
      status: 'active'
    },
    {
      title: 'Essential Supplies',
      amount: 50.00,
      description: "Needs $50 for reading glasses and a raincoat.",
      client_id: 5,
      status: 'active'
    },
    {
      title: 'Dentures',
      amount: 500.00,
      description: "Raise $500 for dentures.",
      client_id: 6,
      status: 'active'
    },
    {
      title: 'Tuition',
      amount: 1337.00,
      description: "Raise $1337 for one semester at community college.",
      client_id: 7,
      status: 'active'
    } ]

    goals.each do |goal|
      @g             = Goal.new
      @g.title       = goal[:title]
      @g.amount      = goal[:amount]
      @g.description = goal[:description]
      @g.status      = goal[:status]
      @g.client      = Client.all[ goal[:client_id] ]
      @g.save
    end

  end


end
