# RQ Dashboard FastAPI <span>&#x1F6E0;</span>

![Redis](https://img.shields.io/badge/redis-%23DD0031.svg?style=for-the-badge&logo=redis&logoColor=white)
![FastAPI](https://img.shields.io/badge/FastAPI-005571?style=for-the-badge&logo=fastapi)
![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)
<br />
<br />
`RQ Dashboard FastAPI` is a general purpose, lightweight FastAPI-based web frontend to monitor your RQ queues, jobs, and workers in real-time.

## Example Usage

```python
from fastapi import FastAPI
from rq_dashboard_fast import RedisQueueDashboard
import uvicorn

app = FastAPI()
dashboard = RedisQueueDashboard(“redis://redis:6379/”, "/rq")

app.mount(“/rq”, dashboard)

if __name__ == "__main__":
    uvicorn.run(app, host="127.0.0.1", port=8000)
```

Access the Dashboard at

```
http://127.0.0.1:8000/rq
```

## Installing from PyPi

```
$ pip install rq-dashboard-fast
```

## Next Features

- [ ] Docker Image
- [ ] Run Standalone (Terminal)

## Contributing

If you want to contribute, reach out or create a PR directly.
