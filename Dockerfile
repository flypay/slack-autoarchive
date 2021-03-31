FROM python:3-alpine

WORKDIR /build

COPY . .

RUN pip install -r requirements.txt

ENV SLACK_TOKEN='SET_THIS'
ENV SLACK_BOT_TOKEN='SET_THIS'
ENV DRY_RUN=true

CMD SLACK_TOKEN=${SLACK_TOKEN} \
  SLACK_BOT_TOKEN=${SLACK_BOT_TOKEN} \
  DRY_RUN=${DRY_RUN} \
  python slack_autoarchive.py
