FROM node:20
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . . 
ENV PORT=6942
ENV HOST=0.0.0.0
ENV MODEL_URL="https://storage.googleapis.com/model_recyclopedia/model-recyclepedia/model.json"
ENV FIREBASE_API_KEY=
ENV FIREBASE_AUTH_DOMAIN=
ENV FIREBASE_PROJECT_ID=
ENV FIREBASE_STORAGE_BUCKET=
ENV FIREBASE_MESSAGING_SENDER_ID=
ENV FIREBASE_APP_ID=
ENV FIREBASE_MEASUREMENT_ID=
CMD [ "npm", "run", "start" ]
