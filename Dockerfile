FROM node
RUN mkdir -p /home/Service
WORKDIR /home/Service    # Bundle app source
COPY . /home/Service
RUN npm install
EXPOSE 3000
CMD npm run build && npm start   
 ## 如果想运行多条指令可以这样：
## CMD git pull && npm install && npm start