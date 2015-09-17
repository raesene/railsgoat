FROM rails:latest

RUN mkdir -p /usr/src
WORKDIR /usr/src/

RUN git clone https://github.com/OWASP/railsgoat.git \
	&& mv railsgoat app \
	&& cd app \
	&& sed -i 's/2.2.2/2.2.3/' /usr/src/app/Gemfile \
	&& bundle install \
	&& rake db:setup 

WORKDIR /usr/src/app

CMD ["rails", "server", "-b", "0.0.0.0"]
