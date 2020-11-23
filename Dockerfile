FROM debian:latest

RUN apt-get update
RUN apt-get install -y jq 

RUN apt-get -y install gnuplot
RUN apt-get -y install git
RUN apt-get -y install build-essential

# ST tool
#WORKDIR /app
#RUN git clone https://github.com/nferraz/st.git
#RUN cd st; perl Makefile.PL; make ; make install

# References: https://www.freecodecamp.org/news/building-python-data-science-container-using-docker/

ENV PYTHON_PACKAGES="\
    numpy \
    matplotlib \
    scipy \
    scikit-learn \
    pandas \
    nltk \
" 

#  && pip install --upgrade pip \
 #   && pip install --no-cache-dir $PYTHON_PACKAGES \

#RUN apk add --no-cache --virtual build-dependencies python --update py-pip \
#    && apk add --virtual build-runtime \
#    build-base python-dev openblas-dev freetype-dev pkgconfig gfortran \
#    && ln -s /usr/include/locale.h /usr/include/xlocale.h \
#    && pip install --upgrade pip \
#    && pip install --no-cache-dir $PYTHON_PACKAGES \
#    && apk del build-runtime \
#    && apk add --no-cache --virtual build-dependencies $PACKAGES \
#    && rm -rf /var/cache/apk/*