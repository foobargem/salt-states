backports-repo:
  pkgrepo.managed:
    - humanname: Debian wheezy backports
    - name: deb http://http.debian.net/debian wheezy-backports main
    - disk: wheezy
    - file: /etc/apt/sources.list

linux-image-amd64:
  pkg.installed:
    - require:
      - pkgrepo: backports-repo
    - fromrepo: wheezy-backports
    - version: "3.16+62~bpo70+1"

