# Base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy source code
COPY . .

# Install dependencies
RUN npm install

# Start app
CMD ["npm", "start"]
