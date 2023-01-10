#!/bin/bash

# Set the base URL for the images
base_url="https://cdn.freecodecamp.org/curriculum/css-photo-gallery/"

# Use a loop to download the images
for i in {1..9}
do
  # Construct the full URL for the current image
  image_url="${base_url}${i}.jpg"

  # Download the image
  curl -O "$image_url"
done
