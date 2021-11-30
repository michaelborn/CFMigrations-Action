from ghcr.io/foundeo/cfml-ci-tools/cfml-ci-tools:1.0.4

COPY entrypoint.sh /app

RUN chmod +x /app/entrypoint.sh

RUN box install commandbox-migrations

# Hibernate extension for commandbox-migrations
ENV LUCEE_EXTENSIONS="$LUCEE_EXTENSIONS,FAD1E8CB-4F45-4184-86359145767C29DE"

ENTRYPOINT [ "/app/entrypoint.sh" ]