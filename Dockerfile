# Use the official Node.js image
FROM node:18

# Create and set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy all other app files
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
