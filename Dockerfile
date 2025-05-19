# Use an official Node.js runtime as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy only the HTML file (if you are running only index.html)
COPY index.html /app/index.html

# Expose port 8080
EXPOSE 8080

# Run a basic server using Node.js
CMD ["node", "-e", "require('http').createServer((req, res) => res.end(require('fs').readFileSync('/app/index.html'))).listen(8080)"]
