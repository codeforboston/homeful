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


  desc "Fill database with sample goals for clients"
  task sample_updates: :environment do
    updates = [
      {
        body: "I want to let everyone know that I successfully raised $50 for an insulated sleeping pad. Thank you so much!",
        title: "Sleeping Pad Goal",
        client_id: 1
      },
      {
        body: "Just wanted to say how appreciative my family and I are for all the progress we've made towards our goal thus far. We can't express enough gratitude.",
        title: "Gratitude",
        client_id: 2
      },
      {
        body: "I was able to raise money to get a check-up at the dentist (thank you all)! The doctor told me I have a cavity and I need to get it filled or I will lose the tooth.",
        title: "Dentist Visit",
        client_id: 3
      },
      {
        body: "I just created a new goal with the intent of getting my cavity filled.",
        title: "Update on Dental Work",
        client_id: 3
      },
      {
        body: "Hello everybody, I am very thankful for you supporting me. It is very difficult for me to find food I can eat right now without teeth, so I'm creating a goal to purchase dentures.",
        title: "Dentures",
        client_id: 6
      },
      {
        body: "WOW! THANK YOU SO MUCH! We successfully raised the money for me to attend a semester at community college. I am currently enrolled and am loving it! I am learning so much and am so grateful to be able to have this experience. I wish to further my education next semester, so if you could donate to my current goal it would be much appreciated. Thank you again!",
        title: "One Semester",
        client_id: 7
      }
    ]

    updates.each do |update|
      @u = Update.new
      @u.body   = update[:body]
      @u.title  = update[:title]
      @u.client = Client.all[ update[:client_id] ]

      @u.save
    end
  end



end
