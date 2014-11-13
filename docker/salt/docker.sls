docker-deps:
  pkg.installed:
    - pkgs:
      - curl

install:
  cmd.run:
    - name: curl -sSL https://get.docker.com/ | sh
    - require:
      - pkg: docker-deps

creategroup:
  group.present:
    - name: docker
  
