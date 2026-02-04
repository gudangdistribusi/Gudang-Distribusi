# Video overview thumbnail troubleshooting

This repository does not contain the Blade templates shown in the prompt.
The following checklist captures likely causes when a video overview image fails

1. **Thumbnail file not generated**: the UI is typically hard-coded to load
   `storage/thumbnails/<video-name>.jpg`. If the server never generates this
   file, the image tag resolves to 404 and no preview appears.
2. **Filename mismatch**: thumbnails are commonly generated from the *original*
   stored name (sometimes with random prefixes). If the UI derives the name from
   a different path (e.g., using the public URL or a different directory), it
   won’t match the generated thumbnail filename.
3. **Storage/public symlink missing**: if `public/storage` is not linked to
   `storage/app/public`, public URLs like `/storage/thumbnails/...` will not
   resolve.
4. **Incorrect thumbnail directory**: some pipelines save thumbnails next to
   the video (e.g., `storage/files/...`) rather than in `storage/thumbnails/`.

Use these checks to validate the actual storage path and ensure the generated
thumbnail naming matches what the front end expects.
