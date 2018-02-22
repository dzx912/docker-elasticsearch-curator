# docker-elasticsearch-curator
Lean Elasticsearch Curator container image, based on Alpine Linux 3.7 and Python 3.
Run elasticsearch-curator every N seconds.

[Docker Hub](https://hub.docker.com/r/dzx912/docker-elasticsearch-curator/)

## Current software

* Python 3
* Curator 5.4.1

## Usage

### Pull image

```
docker pull dzx912/elasticsearch-curator:5.4.1
```

### Run Elasticsearch

```
docker container run --name=elasticsearch --rm docker.elastic.co/elasticsearch/elasticsearch:6.2.2
```

### Setup Curator configuration
```
vim example-config/curator.yml
vim example-config/action.yml
```

### Run Curator

```
docker container run --link elasticsearch:elasticsearch --env DELAY_SECOND=60 --volume example-config:/etc/curator/ dzx912/elasticsearch-curator:5.4.1
```

* **DELAY\_SECOND**: Duration between running Elasticsearch Curator