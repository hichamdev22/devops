# --- Build stage ---
FROM node:18-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
# Build Next.js en mode production
RUN npm run build

# --- Runtime stage ---
FROM node:18-alpine
WORKDIR /app
ENV NODE_ENV=production
# Installer uniquement les dépendances nécessaires
COPY package*.json ./
RUN npm ci --omit=dev
COPY --from=builder /app/.next ./.next
COPY --from=builder /app/public ./public
# si tu as next.config.js, copie-le aussi si besoin
# COPY next.config.js ./
EXPOSE 3000
CMD ["npm", "start"]

