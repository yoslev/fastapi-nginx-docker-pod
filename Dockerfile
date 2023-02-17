FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

WORKDIR /build

# COPY requirements.txt .

RUN mkdir build
COPY . .


RUN pip3 install -r ./requirements.txt

## COPY . .

# CMD ["cd", "app", "uvicorn", "main:my_fastapi_app", "--host", "0.0.0.0", "--port", "8000"]
CMD cd app; uvicorn main:my_fastapi_app --host 0.0.0.0 --port 8000
