# syntax=docker/dockerfile:1
# model_app pins Ruby 2.7.0, and its webpacker needs Node and Yarn, which the
# ruby image does not carry. Node 14 comes from its own image; webpack 4 predates
# the OpenSSL 3 change that breaks it on Node 17 and later.
FROM node:14-buster-slim AS node

FROM ruby:2.7.0 AS dev
COPY --from=node /usr/local/bin/node /usr/local/bin/node
COPY --from=node /usr/local/lib/node_modules /usr/local/lib/node_modules
COPY --from=node /opt/yarn-v1.22.19 /opt/yarn
RUN ln -s /usr/local/lib/node_modules/npm/bin/npm-cli.js /usr/local/bin/npm \
 && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn
WORKDIR /app
RUN gem install bundler -v 2.2.16
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile
COPY . .
EXPOSE 3000
CMD ["bin/rails", "server", "-b", "0.0.0.0"]
