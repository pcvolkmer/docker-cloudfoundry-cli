# cloudfoundry-cli

Docker image containing cloudfoundry-cli

## Usage within GitLab CI

To deploy your application to a cloudfoundry service, you can use this example to create your own deploy task.
It requires `$CF_API`, `$CF_USERNAME` and `$CF_PASSWORD` to be set in your projects CI/CD Pipeline settings.

    deploy:
    image: pcvolkmer/cloudfoundry-cli
    stage: deploy
    dependencies:
        - build
    script:
        - cf login -a $CF_API -u $CF_USERNAME -p $CF_PASSWORD
        - cf push -b https://github.com/cloudfoundry/java-buildpack.git
