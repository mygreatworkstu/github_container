# 使用官方Node.js运行时作为基础镜像
FROM node:18-alpine
# 设置容器内的工作目录
WORKDIR /app
# 复制依赖定义文件
COPY package*.json ./
# 安装项目依赖
RUN npm ci --only=production
# 将项目源代码复制到工作目录
COPY . .
# 声明应用运行的端口
EXPOSE 3000
# 启动应用的命令
CMD [ "node", "server.js" ]