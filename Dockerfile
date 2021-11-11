FROM centos:centos7

RUN yum install -y rpmdevtools yum-utils tar unzip rpmlint && yum clean all

RUN rpmdev-setuptree

COPY list_repos.spec /root/rpmbuild/SPECS/list_repos.spec

COPY list_repos.tar.gz /root/rpmbuild/SOURCES/list_repos.tar.gz


