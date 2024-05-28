FROM node:18
RUN npm install -g pnpm
RUN git clone https://github.com/coinchimp/photonic-wallet
WORKDIR /photonic-wallet
RUN pnpm install
RUN pnpm build
RUN npm install -g http-server
EXPOSE 8080
CMD ["http-server", "/photonic-wallet/packages/app/dist", "-p", "8080"]
