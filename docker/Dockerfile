FROM python:3.9-slim-bullseye

ENV TZ=Asia/Seoul
ENV NOTE_ROOT=/jupyter
ENV PYTHONPATH=$NOTE_ROOT
ENV PYTHONUNBUFFERED=1

RUN apt-get update && apt-get install -y --no-install-recommends \
    tzdata \
    && rm -rf /var/lib/apt/lists/*

RUN pip install jupyter
RUN pip install -U pip setuptools

RUN mkdir -p /root/.jupyter/lab/user-settings/@jupyterlab/apputils-extension/ && \
    echo '{ "theme": "JupyterLab Dark" }' > /root/.jupyter/lab/user-settings/@jupyterlab/apputils-extension/themes.jupyterlab-settings

RUN mkdir -p $NOTE_ROOT
WORKDIR $NOTE_ROOT

EXPOSE 9999

CMD ["jupyter", "notebook", \
     "--ip=0.0.0.0", \
     "--port=9999", \
     "--no-browser", \
     "--allow-root", \
     "--NotebookApp.token=''", \
     "--NotebookApp.password=''", \
     "--notebook-dir=/jupyter"]
