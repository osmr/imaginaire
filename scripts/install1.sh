#!/bin/sh

CURRENT=$(pwd)

for p in correlation channelnorm resample2d bias_act upfirdn2d; do
  cd imaginaire/third_party/${p};
  rm -rf build dist *info;
  python setup.py install;
  cd ${CURRENT};
done

for p in gancraft/voxlib; do
  cd imaginaire/model_utils/${p};
  make all
  cd ${CURRENT};
done