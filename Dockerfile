FROM sentry:9.1.2

RUN  apt-get update && \
        apt-get install -y build-essential python3-dev python2.7-dev \
        libldap2-dev libsasl2-dev ldap-utils python-tox \
        lcov valgrind && \
        pip2 install sentry-ldap-auth

COPY . /etc/sentry/

CMD  ["run","web"]
