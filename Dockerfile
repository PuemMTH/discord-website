# Use the official LTS Node.js image as a base
FROM node:lts

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json for installing dependencies
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy the rest of the application code
COPY . .

# Expose the port Vite will run on
EXPOSE 3000

# Start the Vite development server
CMD ["npm", "run", "dev"]
