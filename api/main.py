from fastapi import FastAPI
import uvicorn

app = FastAPI()

@app.get("/")
def read_root():
    return {"Hello": "pape"}

if __name__ == '__main__':
    uvicorn.run(app, host='8.0.0.0', port=80)