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


end
