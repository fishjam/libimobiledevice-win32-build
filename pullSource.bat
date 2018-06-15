@setlocal
rem git submodule foreach 'checkout msvc-master'
rem git submodule foreach pull
rem git submodule update --remote  --recursive

set SUB_MODULE=ideviceinstaller libimobiledevice  libplist  libusbmuxd
set BRANCH=msvc-master

for %%m in ( %SUB_MODULE% ) do (
  cd "%%m"
  git checkout %BRANCH%
  git pull
  cd ..
)


pause