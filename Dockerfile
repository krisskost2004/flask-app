FROM continuumio/anaconda3:2024.10-1

RUN groupadd -g 10001 appuser && \
    useradd -m -u 10001 -g appuser appuser

WORKDIR /app

COPY environment.yml app.py ./

RUN conda env create -f environment.yml && \
    conda clean -afy && \
    rm environment.yml && \
    chown -R appuser:appuser /app

USER appuser

EXPOSE 5000

CMD ["conda", "run", "--no-capture-output", "-n", "webapp_env", "python", "app.py"]
