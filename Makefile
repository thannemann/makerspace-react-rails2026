build:
	bundle --version
	bin/setup
	gem build makerspace-react-rails2026.gemspec

clean:
	rm makerspace-react-rails2026*.gem

bundler:
	gem install --user-install bundler:1.17.3
