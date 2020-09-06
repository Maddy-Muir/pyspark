FROM jupyter/all-spark-notebook:latest

RUN pip install --quiet --no-cache-dir \
 black isort jupyterlab_code_formatter tensorflow==2.2.0 && \
 jupyter labextension install @ryantam626/jupyterlab_code_formatter && \
 jupyter serverextension enable --py jupyterlab_code_formatter && \
 jupyter labextension install @jupyterlab/toc && \
 fix-permissions "${CONDA_DIR}" && \
 fix-permissions "/home/${NB_USER}"
