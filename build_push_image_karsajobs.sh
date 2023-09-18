echo "#building image from dockerfile in same directory with custom image name n tag" \
&& docker build -t ghcr.io/ovrrtd/karsajobs:latest . \
&& echo "# login into github packages" \
&& echo $PAT | docker login ghcr.io --username ovrrtd --password-stdin \
&& echo "#push the image to github package" \
&& docker push ghcr.io/ovrrtd/karsajobs:latest