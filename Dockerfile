FROM nvcr.io/nvidia/pytorch:19.10-py3

#FROM nvcr.io/nvidia/pytorch:20.12-py3


RUN mkdir /app
WORKDIR /app

# copy req file first
COPY requirements.txt /app/requirements.txt

# install our dependencies
RUN pip install -r requirements.txt

# copy all other project code
COPY . /app

# expose the Jupyter port 8888
EXPOSE 8888

CMD ["jupyter", "notebook"]