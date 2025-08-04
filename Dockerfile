FROM python:3.12-slim

WORKDIR /code

COPY ./requirements.txt /code

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./api /code/api


# ...existing code...
CMD ["python", "-m", "uvicorn", "api.main:app", "--host", "0.0.0.0", "--port", "80"]
# ...existing code...