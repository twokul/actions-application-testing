FROM circleci/node:8-browsers

WORKDIR /src

# set container bash prompt color to blue in order to
# differentiate container terminal sessions from host
# terminal sessions
RUN \
  echo 'PS1="\[\\e[0;94m\]${debian_chroot:+($debian_chroot)}\\u@\\h:\\w\\\\$\[\\e[m\] "' >> ~/.bashrc

LABEL version="1.0.0"

LABEL com.github.actions.name="GitHub Action for Testing"
LABEL com.github.actions.description="Provides an environment for running tests"
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="orange"

COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
