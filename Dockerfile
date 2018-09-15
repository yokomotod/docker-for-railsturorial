FROM ruby:2.5.1

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
  && apt-get install -y --no-install-recommends nodejs \
  && rm -rf /var/lib/apt/lists/*

RUN curl https://cli-assets.heroku.com/install.sh | sh

RUN apt-get update \
  && apt-get install -y --no-install-recommends sqlite3 \
  && rm -rf /var/lib/apt/lists/*

RUN groupadd --gid 1000 ruby \
  && useradd --uid 1000 --gid ruby --shell /bin/bash --create-home ruby

RUN rm -r /usr/local/bundle /usr/local/etc/gemrc

USER ruby

ENV GEM_HOME /home/ruby/.gem
ENV BUNDLE_PATH="$GEM_HOME" \
  BUNDLE_SILENCE_ROOT_WARNING=0 \
  BUNDLE_APP_CONFIG=.bundle
ENV PATH $GEM_HOME/bin:$PATH

ENV RUBYOPT -EUTF-8
