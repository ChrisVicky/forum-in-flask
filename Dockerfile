FROM python:3.10
COPY . .
RUN 	pip install -r ./requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple && \
	mkdir cached_posts cached_search
EXPOSE 8087
CMD ["python3","./forum-in-flask/app.py"]
