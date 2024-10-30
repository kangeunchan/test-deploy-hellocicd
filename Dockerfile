# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory
WORKDIR /

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Expose the port
EXPOSE 3000

# Run the application
CMD ["npm", "start"]
