FROM almalinux:8
LABEL maintainer="M Rohit Singha gusionfusion009@gmail.com"

# Install necessary packages
RUN yum install -y httpd zip unzip

# Copy the local ZIP file into the container's /var/www/html directory
COPY Photogenic\ Free\ Website\ Template\ -\ Free-CSS.com.zip /var/www/html/

# Change working directory
WORKDIR /var/www/html/

# Unzip the template into the directory
RUN unzip "Photogenic Free Website Template - Free-CSS.com.zip"

# Clean up unnecessary files
RUN rm -rf "Photogenic Free Website Template - Free-CSS.com.zip"

# Set the CMD to run Apache in the foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

# Expose necessary ports
EXPOSE 80 22 443
