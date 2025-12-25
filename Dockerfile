FROM ruby:3.3-slim

RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends \
    build-essential \
    libxml2-dev \
    libxslt1-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY Gemfile* ./

RUN bundle install

COPY . .

RUN mkdir -p contacts/letters

EXPOSE 4567

CMD ["ruby", "app.rb", "-o", "0.0.0.0"]
