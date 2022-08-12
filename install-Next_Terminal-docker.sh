version: '3.3'
services:
  guacd:
    image: dushixiang/guacd:latest
    volumes:
      - ./data:/next-terminal/data
    restart:
          always
  next-terminal:
    image: dushixiang/next-terminal:latest
    environment:
      DB: sqlite
      GUACD_HOSTNAME: guacd
      GUACD_PORT: 4822
    ports:
      - "8088:8088"
    volumes:
      - /etc/localtime:/etc/localtime
      - ./data:/next-terminal/data
    restart:
      always
