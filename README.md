A simple site showing the stock trend.

Stock symbols from http://stocktwits.com/
Stock prices from http://www.nasdaq.com/

Used Nokogiri to scrap data from the above 2 sites.
Used D3 to render the data in home page.

rails _4.0.4_ new nokoapp --database=postgresqlor 

Heroku deployment: 	
	/config/environments/production.rb :
		config.serve_static_assets = true
		config.assets.compile = true
		
	/config/initializers/assest.rb , replace line8 with:
		Rails.application.config.assets.precompile += %w[*.png *.jpg *.jpeg *.gif]

	In terminal, run:
		RAILS_ENV=production bundle exec rake assets:precompile