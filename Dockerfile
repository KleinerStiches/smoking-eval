FROM ubuntu

RUN apt-get update -y && apt-get install git python3 python3-pip -y
RUN cd /tmp \
    && git clone https://github.com/KleinerStiches/backend-smoking-eval.git tornado_smoking_eval \
    && git clone https://github.com/KleinerStiches/frontend-smoking-eval.git smoking_eval \
    && cd tornado_smoking_eval \
    && pip3 install tornado
RUN chmod 777 /tmp/smoking_eval/store/questionaries.json

EXPOSE 8888

CMD ["python3", "/tmp/tornado_smoking_eval/smoking_eval.py"]
