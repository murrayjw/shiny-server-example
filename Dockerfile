ARG AWS_ACCOUNT_ID
ARG REGION
FROM ${AWS_ACCOUNT_ID}.dkr.ecr.${REGION}.amazonaws.com/rshiny-base
USER shiny
COPY apps /srv/shiny-server
EXPOSE 3838
CMD ["/usr/bin/shiny-server"]
