# Use a base Node.js image
FROM node:latest

# Set the working directory in the container
WORKDIR /server

# Copy package.json and package-lock.json (if present)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your app runs on
EXPOSE 5000

# Command to run your application
CMD ["npx", "nodemon", "server.js"]
