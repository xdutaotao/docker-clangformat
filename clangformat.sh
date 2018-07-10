#!/bin/sh
cpp_files=$(find . \( -name *.h -o -name *.c -o -name *.cpp -o -name *.hpp \) -exec echo /root/src/{} \;)
echo "file list:"
echo "${cpp_files#*/./}"
docker run \
--rm \
--privileged=true \
--volume ${PWD}:/root/src \
jsdoitao/docker-clangformat -i ${cpp_files} -style=file
echo "clang-foramt done."
