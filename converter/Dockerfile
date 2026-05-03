FROM python:3.14.4-slim
WORKDIR /app
COPY . /app
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
CMD ["streamlit", "run", "main.py"]