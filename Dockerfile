# Use Node.js 20.11.0 as the base image
FROM node:20.11.0

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose port 3001
EXPOSE 3001

# Start the application
CMD ["npm", "run", "dev"]
