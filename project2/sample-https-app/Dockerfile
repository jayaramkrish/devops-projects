# Use Node.js LTS as the base image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package files (if any)
COPY package*.json ./

# Copy application files
COPY . .

# Expose HTTPS port
EXPOSE 443

# Start the HTTPS server
CMD ["node", "server.js"]

