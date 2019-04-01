# The base image
FROM ruby:2.3.1-alpine

# System package dependencies
RUN apk add --no-cache git postgresql-dev make gcc g++ linux-headers nodejs

# Cache friendly build order:

# Working Directory
WORKDIR /app

# Copy Gemfile
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install --without development:test

# Copy App code
COPY . ./

# Entrypoint
CMD ["rails", "server", "-b", "0.0.0.0"]
