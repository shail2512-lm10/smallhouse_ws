#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/shail/smallhouse_ws/src/pr2_mechanism/pr2_controller_manager"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/shail/smallhouse_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/shail/smallhouse_ws/install/lib/python2.7/dist-packages:/home/shail/smallhouse_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/shail/smallhouse_ws/build" \
    "/usr/bin/python2" \
    "/home/shail/smallhouse_ws/src/pr2_mechanism/pr2_controller_manager/setup.py" \
     \
    build --build-base "/home/shail/smallhouse_ws/build/pr2_mechanism/pr2_controller_manager" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/shail/smallhouse_ws/install" --install-scripts="/home/shail/smallhouse_ws/install/bin"
