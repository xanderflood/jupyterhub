ARG JUPYTERHUB_VERSION
FROM jupyterhub/jupyterhub:$JUPYTERHUB_VERSION

COPY ./jupyterhub_config.py /srv/jupyterhub/jupyterhub_config.py
