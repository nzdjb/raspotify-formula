raspotify:
  pkg.installed:
    - require:
      - pkgrepo: raspotify
  service.running:
    - require:
      - pkg: raspotify
  pkgrepo.managed:
    - name: deb https://dtcooper.github.io/raspotify jessie main
    - key_url: https://dtcooper.github.io/raspotify/key.asc