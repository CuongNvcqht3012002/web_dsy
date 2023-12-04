# Use an official Node runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install any needed packages specified in package.json
RUN npm install

# Bundle app source
COPY . .

# Make port 5002 available to the world outside this container
EXPOSE 5002

# Define environment variable
ENV PORT 5002

# Run app when the container launches
CMD ["node", "src/server.js"]
