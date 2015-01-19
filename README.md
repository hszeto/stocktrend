A site that shows 10 trending stock. <br>
<br>
Stock trend from http://stocktwits.com/<br>
Stock prices from http://www.nasdaq.com/<br>
<br>
Used Nokogiri to scrap data from the above 2 sites.<br>
Used D3 to render the data in home page.<br>
<br>
rails _4.0.4_ new nokoapp --database=postgresqlor <br>
<br>
Heroku deployment: 	<br>
	/config/environments/production.rb :<br>
		config.serve_static_assets = true<br>
		config.assets.compile = true<br>
<br>
	Replace:<br>
		# config.assets.precompile += %w( search.js )<br>
	With<br>
		config.assets.precompile += %w[*.png *.jpg *.jpeg *.gif]<br>
<br>
	In terminal, run: <br>
		RAILS_ENV=production bundle exec rake assets:precompile<br>
<br>
Usage: <br>
- clone this repo
- $ bundle install
- $ rails s
- open a browswer
- goto localhost:3000