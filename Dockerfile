FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 5000

CMD [ "node", "app.js" ]



# docker build . -t test
# docker run -d --name cont_name -p 5000:5000 test
# docker stop --time=30 cont_name