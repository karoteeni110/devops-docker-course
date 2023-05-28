I changed the environment variable of `Dockerfile.frontend`

from 

```
ENV REACT_APP_BACKEND_URL="http://localhost"
```

to

```
ENV REACT_APP_BACKEND_URL="http://localhost/api"
```

Such that the requests from the buttons before Nginx exercises change from `GET http://localhost/ping` to `GET http://localhost/api/ping`. Only the latter can be forwarded by the proxy. 
