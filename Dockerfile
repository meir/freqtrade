FROM freqtradeorg/freqtrade:stable

COPY ./user_data/ /freqtrade/user_data/

CMD trade --logfile /freqtrade/user_data/logs/freqtrade.log --db-url sqlite:////freqtrade/user_data/tradesv3.sqlite --config /freqtrade/user_data/config.json --strategy ichiV1
