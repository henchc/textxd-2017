## To build this container run:
##    docker build --rm -t henchc/textxd2017 .

FROM aculich/rockyter

MAINTAINER Chris Hench <chench@berkeley.edu>

# conda python packages
RUN conda install --yes \
      gensim \
      geopy \
      spacy \
      pandas \
      matplotlib \
      numpy \
      scipy \
      scikit-learn

# pip packages
RUN pip install --no-cache-dir pyldavis \
      msgpack-numpy \
      tqdm \
      nltk \
      folium

# install spacy english model
RUN python -m spacy download en

# upgrade jupyterhub
RUN pip install -U jupyterhub==0.8.0.rc1
