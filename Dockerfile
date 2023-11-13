FROM python:3.10

WORKDIR /R-Peak-Dection-1D-SelfONN

COPY . /R-Peak-Dection-1D-SelfONN/

RUN apt-get update && \
    pip install -r requirements.txt

CMD [ "python3", "codes/prepare_data_augmentation.py", "&&", "python3", "run_selfONN.py" ]
