# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json from the backend folder
COPY backend/package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application files from the backend folder
COPY backend/ .

# Expose the port the app runs on
EXPOSE 8083

# Start the app
CMD [ "npm", "start" ]
