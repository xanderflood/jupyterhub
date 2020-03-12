
FROM jupyterhub/jupyterhub:1.2

# Install jupyterhub plugins for dockerspawner, oauth, postgres
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --no-cache-dir \
    psycopg2-binary==2.8.* \
    oauthenticator==0.8.* \
    dockerspawner==0.9.* \
    jupyterhub-traefik-proxy==0.1.*

COPY ./jupyterhub_config.py /srv/jupyterhub/jupyterhub_config.py

# TODO volume mount point for pip dependencies?

# TODO build this in my own drone server - it's much faster than docker hub
