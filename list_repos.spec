Name:           list_repos
Version:        1
Release:        1%{?dist}
Summary:        Displays the list of public repositories form the centreon organization

License:        MIT License
URL:            https://github.com/Comte-Zero/Centreon-devops-test/tree/main
source0:        https://github.com/Comte-Zero/Centreon-devops-test/blob/main/list_repos.tar.gz

Requires:       bash curl grep

BuildArch:      noarch

%description
Displays the list of public repositories form the centreon organization

%prep
%autosetup


%build


%install
mkdir -p %{buildroot}/%{_bindir}
install -m 0755 %{name} %{buildroot}/%{_bindir}/%{name}


%files
%license LICENSE
%{_bindir}/%{name}


%changelog
* Wed Nov 10 2021 Desfonds
- First list_repos package
