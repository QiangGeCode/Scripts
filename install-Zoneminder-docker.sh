docker run -d --name="Zoneminder" \
--net="bridge" \
--privileged="false" \
--shm-size="8G" \
-p 8443:443/tcp \
-p 9001:9000/tcp \
-e TZ="Asia/Shanghai" \
-e PUID="99" \
-e PGID="100" \
-e INSTALL_HOOK="0" \
-e INSTALL_FACE="0" \
-e INSTALL_TINY_YOLOV3="0" \
-e INSTALL_YOLOV3="0" \
-e INSTALL_TINY_YOLOV4="0" \
-e INSTALL_YOLOV4="0" \
-e MULTI_PORT_START="0" \
-e MULTI_PORT_END="0" \
-v "/zoneminder":"/config":rw \
-v "/zoneminder/data":"/var/cache/zoneminder":rw \
dlandon/zoneminder
