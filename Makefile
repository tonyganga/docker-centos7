build:
	docker build -t centos7-ansible .

run:
	docker run --name test-centos7-ansible -d --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro centos7-ansible /usr/lib/systemd/systemd

verify:
	docker exec --tty test-centos7-ansible env TERM=xterm ansible --version

test: run verify

cleanup:
	docker stop test-centos7-ansible && docker rm test-centos7-ansible
