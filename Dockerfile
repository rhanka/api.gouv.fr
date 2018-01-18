FROM ruby:2.3
ARG proxy
RUN echo $proxy
RUN mkdir -p /opt/site
RUN gem install -p $proxy github-pages --no-ri --no-rdoc
RUN gem install -p $proxy mini_racer
RUN gem install -p $proxy html-proofer
WORKDIR /opt/site

VOLUME /opt/site

EXPOSE 4000

CMD jekyll build
