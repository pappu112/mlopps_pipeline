# lightweight python
FROM continuumio/anaconda3

RUN apt-get update

# Copy local code to the container image.
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

RUN ls -la $APP_HOME/

# Install dependencies
RUN pip install -r requirements.txt

# Run the streamlit on container startup
CMD [ "streamlit", "run","imgwebapp.py" ]

# FROM continuumio/anaconda3
# COPY . /usr/app/
# WORKDIR /usr/app/
# RUN pip install -r requirements.txt
# CMD ["runipy", "schedule.ipynb"]
# #CMD ["python", "model.py"]