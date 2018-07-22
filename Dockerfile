FROM ubuntu

RUN apt-get update -y && apt-get install git python python-pip -y
RUN cd /tmp \
    && git clone https://github.com/KleinerStiches/backend-smoking-eval.git  smoking_eval\
    && git clone https://github.com/KleinerStiches/frontend-smoking-eval.git tornado_smoking_eval\
    && cd tornado_smoking_eval \
    && pip install tornado

EXPOSE 8888

CMD ["python", "/tmp/tornado_smoking_eval/smoking_eval.py"]
