echo "#building image from dockerfile in same directory with custom image name n tag" \
&& docker build -t item-app:v1 . \
&& echo "#show list of all images in host" \
&& docker images -a \
&& echo "# create tag for item:v1 to adjust with github packages format image name" \
&& docker tag item-app:v1 ghcr.io/ovrrtd/item-app:v1 \
&& echo "# login into github packages" \
&& echo $PAT | docker login ghcr.io --username ovrrtd --password-stdin \
&& echo "#push the image to github package" \
&& docker push ghcr.io/ovrrtd/item-app:v1