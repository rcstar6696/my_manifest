#repo sync -f --force-sync
cd /android/los/frameworks/base
git fetch "https://github.com/LineageOS/android_frameworks_base" refs/changes/84/240084/1 && git cherry-pick FETCH_HEAD

cd /android/los/packages/apps/Settings
git fetch "https://github.com/LineageOS/android_packages_apps_Settings" refs/changes/70/225970/4 && git cherry-pick FETCH_HEAD

cd /android/los/hardware/qcom/bootctrl
git fetch "https://github.com/LineageOS/android_hardware_qcom_bootctrl" refs/changes/39/223439/1 && git cherry-pick FETCH_HEAD

cd /android/los/kernel/xiaomi/sdm660
git revert  4304bdc64851153f4985055347a30ca43860d4dd ce0f74ca53537fe9b941afd1d64f3f7e991de989

cd /android/los/frameworks/opt/telephony
git fetch https://github.com/WhyProject/android_frameworks_opt_telephony.git lineage-17.0 && git cherry-pick 017835e3bef3888c9d700d21011539eb95d70929

cd /android/los/frameworks/av
git fetch https://github.com/WhyProject/android_frameworks_av lineage-17.0 && git cherry-pick 2f7e6af36a8078b83e2e13fa0adac7184959bc44 && git cherry-pick 654a43492a3f90b8c6c245980da28bd42836649c

cd /android/los/frameworks/opt/net/wifi
git fetch https://github.com/WhyProject/android_frameworks_opt_net_wifi.git lineage-17.0 && git cherry-pick 4f59e9d28bcb3a9fd1e136ee7c88e79fd8c0d2a2

cd /android/los
