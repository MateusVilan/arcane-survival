FROM python:3.13-alpine
WORKDIR /app
COPY index.html ./index.html
EXPOSE 10000
CMD ["sh", "-c", "python -m http.server ${PORT:-10000} --bind 0.0.0.0"]
