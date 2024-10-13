# Sử dụng hình ảnh Python 3.9-slim để tránh vấn đề với pip
FROM python:3.9-slim

# Thông tin bảo trì
MAINTAINER Tuan Thai "tuanthai@example.com"

# Cập nhật và cài đặt các công cụ cần thiết
RUN apt-get update -y && apt-get install -y python3-dev build-essential

# Thêm mã nguồn của bạn vào container
ADD . /flask_app
WORKDIR /flask_app

# Cài đặt các gói từ requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

# Thiết lập lệnh để chạy ứng dụng Flask
ENTRYPOINT ["python3"]
CMD ["flask_docker.py"]
