# Use the official Node.js image from Docker Hub
FROM node:22

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and index.js files to the container
COPY package*.json ./
COPY index.js ./

# Install Node.js dependencies (none for this simple app)
RUN npm install

# Expose port 3000
EXPOSE 3000

# Start the application
CMD ["node", "index.js"]
