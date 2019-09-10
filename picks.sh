
source build/envsetup.sh
croot

repopick -t q-selinux_permissive
repopick 255667
repopick 256184
cd bionic
git fetch "https://github.com/LineageOS/android_bionic" refs/changes/68/256168/1 && git cherry-pick FETCH_HEAD
cd ..

cd build/make
git fetch "https://github.com/LineageOS/android_build" refs/changes/61/255761/11 && git checkout FETCH_HEAD
cd ../soong
git fetch "https://github.com/LineageOS/android_build_soong" refs/changes/30/255730/7 && git checkout FETCH_HEAD
cd ../../vendor/lineage
git fetch "https://github.com/LineageOS/android_vendor_lineage" refs/changes/88/255888/7 && git checkout FETCH_HEAD
git fetch "https://github.com/LineageOS/android_vendor_lineage" refs/changes/67/255667/1 && git cherry-pick FETCH_HEAD
git revert -S 214dfb940218d1989fd7e57ccbd1a7e21147ebe4
cd ../../
