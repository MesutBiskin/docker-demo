FROM node:18-alpine3.18

# Create ap directory 
WORKDIR /src/

# Copy app to the workdir 
COPY . .

#  INSTALL APP DEPENDENCIES
RUN nmp install 

# Express port 3000
EXPOSE 3000


# Set environment variables
ENV PORT=3000

# Finally, we tell the container to run the app
CMD [ "npm", "start"]
# CMD [ "npm","run", "dev "]
