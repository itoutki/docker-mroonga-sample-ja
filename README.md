# README

```
docker build ./ -t mroonga-sample-ja
docker run -d --rm --name mroonga-sample-ja-1 -v $(pwd)/initdb.d/:/docker-entrypoint-initdb.d -p 3306:3306 mroonga-sample-ja
docker exec -it mroonga-sample-ja-1 /bin/bash
mysql -u root test
select * from diaries;
```


## reference

https://hub.docker.com/r/groonga/mroonga/
https://qiita.com/bohebohechan/items/d76ec07f83ba001630e4
https://www.slideshare.net/yoku0825/dockermroonga
https://qiita.com/muff1225/items/48e0753e7b745ec3ecbd
http://gsol.hatenablog.com/entry/2017/02/10/CentOS_Docker%E3%82%B3%E3%83%B3%E3%83%86%E3%83%8A%E3%81%AE%E6%97%A5%E6%9C%AC%E8%AA%9E%E3%83%AD%E3%82%B1%E3%83%BC%E3%83%AB%E8%A8%AD%E5%AE%9A%E6%96%B9%E6%B3%95
https://medium.com/@fkei/docker-rpmdb-checksum-is-invalid-dcdpt-pkg-checksums-xxxx-amzn1-u-%E5%AF%BE%E5%87%A6%E6%B3%95-289b8c58d4a3

