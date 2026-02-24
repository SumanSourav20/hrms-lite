FROM node:24-alpine AS builder

WORKDIR /app

# Copy package files first (for better layer caching)
COPY package.json package-lock.json* ./

# Install dependencies
RUN npm install

# Copy rest of the source code
COPY . .

# Build the frontend
RUN npm run build

CMD ["npm", "start"]