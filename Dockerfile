FROM jupyterhub/jupyterhub:1.2

COPY ./jupyterhub_config.py /srv/jupyterhub/jupyterhub_config.py
