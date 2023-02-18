cd ..; cd posts; docker build -t mento/posts .
cd ..; cd comments; docker build -t mento/comments .
cd ..; cd moderation; docker build -t mento/moderation .
cd ..; cd event-bus; docker build -t mento/event-bus .
cd ..; cd client; docker build -t mento/client .
cd ..


