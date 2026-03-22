package com.pandora.common.applog;

import android.text.TextUtils;
import com.ss.ttvideoengine.AppInfo;
/* loaded from: classes6.dex */
public class AppLogParams {
    public static int getUriConfig(String str) {
        if (TextUtils.equals(str, AppInfo.APP_REGION_MYA)) {
            return 1;
        }
        return 0;
    }
}
