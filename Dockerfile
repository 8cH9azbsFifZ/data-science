FROM debian:latest

RUN apt-get update
RUN apt-get install -y jq 

RUN apt-get -y install gnuplot
RUN apt-get -y install git
RUN apt-get -y install build-essential
RUN apt-get -y install python3-pip

# ST tool
#WORKDIR /app
#RUN git clone https://github.com/nferraz/st.git
#RUN cd st; perl Makefile.PL; make ; make install


RUN mkdir /output /input /workdir
WORKDIR /workdir

# References: https://www.freecodecamp.org/news/building-python-data-science-container-using-docker/
ENV PYTHON_PACKAGES="\
    numpy \
    matplotlib \
    scipy \
    scikit-learn \
    pandas \
    nltk \
" 
RUN pip3 install --no-cache-dir $PYTHON_PACKAGES
