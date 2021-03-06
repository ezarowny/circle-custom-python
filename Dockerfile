FROM cimg/python:3.9.6

# Update packages
RUN sudo apt-get update

# Install dependencies for PostGIS
RUN sudo apt-get install -y binutils libproj-dev gdal-bin

# Install dependencies for WeasyPrint
RUN sudo apt-get install -y python3-cffi libcairo2 libpango-1.0-0 libpangocairo-1.0-0 libgdk-pixbuf2.0-0 libffi-dev shared-mime-info

# Add fonts
ADD fonts /usr/share/fonts/truetype/
