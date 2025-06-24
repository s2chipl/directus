# Use official Node image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy dependencies
COPY package*.json ./
RUN npm install

# Copy source code
COPY . .

# Expose port Directus uses
EXPOSE 8055

# Start Directus
CMD ["npx", "directus", "start"]
