
FROM jupyterhub/jupyterhub:1.2

COPY ./jupyterhub_config.py /srv/jupyterhub/jupyterhub_config.py

# Install jupyterhub plugins for dockerspawner, oauth, postgres
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --no-cache-dir \
    psycopg2-binary==2.8.* \
    oauthenticator==0.8.* \
    dockerspawner==0.9.* \
    jupyterhub-traefik-proxy=0.1.*

# TODO volume mount point for pip dependencies?
