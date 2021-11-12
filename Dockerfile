FROM centos:centos7

RUN yum install -y rpmdevtools yum-utils tar unzip rpmlint && yum clean all

RUN rpmdev-setuptree

COPY list_repos.spec /root/rpmbuild/SPECS/list_repos.spec

COPY list_repos.tar.gz /root/rpmbuild/SOURCES/list_repos.tar.gz

RUN rpmbuild -bb root/rpmbuild/SPECS/list_repos.spec

# I am not sure wether this is supposed to be done since the requierment is to
# build the package but at least that way you can test that it works, feel free
# to comment it if it is unnecessary
RUN rpm -i root/rpmbuild/RPMS/noarch/list_repos-*.noarch.rpm

CMD ["list_repos"]