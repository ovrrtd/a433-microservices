# using oode:14-alpine as the base image
FROM node:14-alpine

# create and move to directory /app as an starting directory
WORKDIR /app

# copy all code to /app directory
COPY . .

# setup env variable for NODE_ENV n DB_HOST
ENV NODE_ENV=production 
ENV DB_HOST=item-db

# install all dependency for production and build the code
RUN npm install --production --unsafe-perm && npm run build

# set command every time the image being launch/run
CMD ["npm", "start"]

# Expose port used for production
EXPOSE 8080