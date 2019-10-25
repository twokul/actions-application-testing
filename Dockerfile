FROM danlynn/ember-cli:latest

LABEL version="1.0.0"

LABEL com.github.actions.name="GitHub Action for Testing"
LABEL com.github.actions.description="Provides an environment for running tests"
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="orange"

COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]

CMD ["test"]
