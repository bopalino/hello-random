# Use Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install --only=production

# Copy compiled code
COPY dist ./dist

# Expose the app port and run it
EXPOSE 3000
CMD ["node", "dist/index.js"]
