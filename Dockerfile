FROM amazon/aws-cli

COPY entrypoint.sh /entrypoint.sh

ENV AWS_ACCESS_KEY_ID ""
ENV AWS_SECRET_ACCESS_KEY ""
ENV AWS_REGION ""

ENTRYPOINT [ "/entrypoint.sh" ]