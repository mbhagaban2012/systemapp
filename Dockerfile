FROM python:3.14-slim
RUN pip install streamlit
RUN mkdir /var
WORKDIR /var
COPY etl.py .
EXPOSE 8501
CMD ["streamlit", "run", "etl.py"]
