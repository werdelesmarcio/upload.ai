# Use the official Node.js image as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy the application files into the working directory
COPY . /app

# Install the application dependencies
RUN npm install

# Build the React application
RUN npm run build

# Expose port 5173
EXPOSE 5173

# Define the entry point for the container
CMD ["npm", "start"]

# Run the development server
RUN npm run dev
