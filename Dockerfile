# The base image
FROM ruby:2.3.1-alpine

# System package dependencies
RUN apk add --no-cache git postgresql-dev make gcc g++ linux-headers nodejs

# Entrypoint
CMD ["rails", "server", "-b", "0.0.0.0"]
