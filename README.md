#jazz-hands
Crowdfunding to help homeless people. ("Codenames need to be ridiculous so you think of a real name." -E.D.)


##TLDR; / I've done this before
It's a Rails App w/ a Postgres backend.


##Get Started
###Set up Postgres
```bash
  brew update
  brew doctor
  brew install postgresql

  # Create a new db if this is your first time installing pg w/ homebrew
  initdb /usr/local/var/postgres -E utf8
```

Start postgres
```bash
  launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
```

OR, if you don't like that, install [lunchy](https://github.com/eddiezane/lunchy), then run

```bash
  lunchy start postgres
```

###To Run

```bash
  bundle install
  rake db:create
  rake db:setup
  rails s
```

###To Test
```bash
  rspec spec
```


##CONTRIBUTE!

* Fork the repo
* run `git remote add upstream https://github.com/codeforboston/jazz-hands`
* To keep up to date, run `git fetch upstream` and rebase your branch


##License
Jazz Hands is provided under the MIT License

