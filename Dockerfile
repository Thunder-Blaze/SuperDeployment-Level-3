# Use official Node.js image
FROM node:slim

# Set working directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app files
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Start the app
CMD ["npm", "run", "start"]
