*** Settings ***
Variables        ../python/variables.py


*** Variables ***
${BULK_UPLOAD_SCREENSHOT_PATH}    screenshots/bulk-upload-screenshots
${NORMAL_SOURCING_SCREENSHOT_PATH}    screenshots/normal-sourcing-screenshots
${QUICK_SOURCE_SCREENSHOT_PATH}    screenshots/quick-source-screenshots
${LOGIN URL}      ${zycus_login_url}
${BROWSER}        Chrome
${USER1}          ${user1_email}
${USER1 PASS}     ${user1_password}
${USER2}          ${user2_email}
${USER2 PASS}     ${user2_password}
${USER3}          ${user3_email}
${USER3 PASS}     ${user3_password}
${VRD HEAD EMAIL}    ${vrd_head_email}
${VRD HEAD PASS}     ${vrd_head_password}
${FILENAME}       Historical Bulk Upload Template_143_AppX