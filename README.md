# action-docker-publish
<p align="center">
  <!-- <a href="https://github.com/outoforbitdev/action-docker-publish/discussions">
    <img alt="Join the community on GitHub Discussions" src="https://img.shields.io/badge/Join%20the%20community-on%20GitHub%20Discussions-blue">
  </a> -->
  <a href="https://github.com/outoforbitdev/action-docker-publish/actions/workflows/test.yml">
    <img alt="Test states" src="https://img.shields.io/github/actions/workflow/status/outoforbitdev/action-docker-publish/test.yml?label=Tests">
  </a>
  <a href="https://github.com/outoforbitdev/action-docker-publish/actions/workflows/release.yml">
    <img alt="Release states" src="https://img.shields.io/github/actions/workflow/status/outoforbitdev/action-docker-publish/release.yml?label=Release">
  </a>
  <a href="https://securityscorecards.dev/viewer/?uri=github.com/outoforbitdev/action-docker-publish">
    <img alt="OpenSSF Scorecard" src="https://api.securityscorecards.dev/projects/github.com/outoforbitdev/action-docker-publish/badge">
  </a>
  <a href="https://github.com/outoforbitdev/action-docker-publish/releases/latest">
    <img alt="Latest release" src="https://img.shields.io/github/v/release/outoforbitdev/action-docker-publish?logo=github">
  </a>
  <a href="https://github.com/outoforbitdev/action-docker-publish/issues">
    <img alt="Open issues" src="https://img.shields.io/github/issues/outoforbitdev/action-docker-publish?logo=github">
  </a>
</p>

GitHub Action for publishing a Docker image.

## Usage

### Inputs

* `docker-username`: Required. The username for the docker account used to publish
* `docker-token`: Required. The token for the docker account used to publish
* `image-name`: Required. The name (repository) of the image being published
* `image-tag`: Required. The tag of the image being published
* `dry-run`: Optional. Flag for whether to actually publish the image. Defaults to `false`
* `publish-latest`: Optional. Flag for whether to publish the image with the `latest` flag. Defaults to `false`
* `build-command`: Optional. Full command to build the image. Defaults to `docker build`
* `dockerfile-path`: Optional. Path to the directory with the Dockerfile. Defaults to `.`

### Example
```yml
docker-test:
    runs-on: ubuntu-latest
    name: Publish Image
    steps:
      - name: Checkout
        uses: actions/checkout@v4
      - name: Publish Image
        uses: outoforbitdev/action-docker-publish@v1.2.0
        id: dockerpublish
        with:
          docker-username: ${{ secrets.DOCKER_USERNAME }}
          docker-token: ${{ secrets.DOCKER_TOKEN }}
          image-name: ${{ vars.IMAGE_NAME }}
          image-tag: example-tag
          publish-latest: true
          build-command: docker build --build-arg EXAMPLE_ARG="example"
          dockerfile-path: ./path/to/dockerfile
```
