# Docker image for Goslinuly (Goslinuly, gosling)
FROM python:3.12-alpine

# All following commands run inside /app
WORKDIR /app

# Copy application code and student info into the image
COPY app/app.py .
COPY Goslinuly_info.txt .

# Check the code compiles and create an unprivileged user
RUN python -m py_compile app.py && adduser -D appuser

USER appuser
EXPOSE 5000

CMD ["python", "-u", "app.py"]
