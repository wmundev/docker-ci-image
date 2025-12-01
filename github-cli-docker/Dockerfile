# To use gh cli, use `gh`
# To use aws cli, use `aws`
# To use git, use `git`
FROM amazon/aws-cli:2.32.7

RUN yum update -y
RUN yum install git -y

# Install github cli
ENV GH_VERSION=2.50.0
RUN curl -v -O https://github.com/cli/cli/releases/download/v${GH_VERSION}/gh_${GH_VERSION}_linux_amd64.rpm -L
RUN rpm -i gh_${GH_VERSION}_linux_amd64.rpm
RUN rm -rf gh_${GH_VERSION}_linux_amd64.rpm

# Install aws cli

RUN aws --version # Make sure aws cli is installed correctly
RUN gh --version # Make sure gh cli is installed correctly
RUN git --version # Make sure git is installed correctly

CMD ["/bin/sh"]
