# Make sure RUBY_VERSION matches the Ruby version in .ruby-version
ARG RUBY_VERSION=3.3.0
FROM ruby:$RUBY_VERSION-slim as base

# Install base packages
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y curl libjemalloc2 libpq5 libpq-dev libvips42 postgresql-client build-essential libffi-dev tzdata nodejs npm && \
    npm install --global yarn && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /usr/share/doc /usr/share/man

RUN mkdir /Budget-App
# Rails app lives here
WORKDIR /Budget-App


# Update bundler to match Gemfile.lock version or use latest
RUN gem install bundler:2.3.6

# Set bundle config
#COPY Gemfile Gemfile.lock /Budget-App/
COPY Gemfile /Budget-App/Gemfile
COPY Gemfile.lock /Budget-App/Gemfile.lock
RUN bundle install

# Copy application code
COPY . /Budget-App

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]


EXPOSE 3000
# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
