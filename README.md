# ams-builder-workshop

## Setup
There are two ways one can setup this repo:
- Using docker
- Using poetry and python

### Using Docker
- Dockerfile has been provided, it is a basic version. You can extend it as you like.
- Here's the docker image:
  - Pull using this command: `docker pull pratos/langflow-ams-builder:v1`
  - Above can be run using: `docker run --rm -ti -p 8000:8000 langflow-ams-builder:v1`

### Peotry and Python
- We have set the python version to `>=3.10.0`. `.tool-versions` sets `python==3.10.1` and `poetry==1.5.0`. If you want to run with any other version, change the tools here.
- We advise to use [`asdf`](https://asdf-vm.com/guide/getting-started.html) to manage python versions locally and `poetry` for package management.
- Run: `bin/poetry-setup.sh`, this will create virtual env locally. You can read more about poetry: [here](https://python-poetry.org/docs/)
- To start `langflow`, run: `bin/run.sh`
