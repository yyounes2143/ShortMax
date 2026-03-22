package com.mbridge.msdk.mbsignalcommon.base;

import android.net.Uri;
import android.text.TextUtils;
import com.huawei.hms.support.api.entity.core.CommonCode;
/* compiled from: IntentFilter.java */
/* loaded from: classes4.dex */
public class c implements a {
    @Override // com.mbridge.msdk.mbsignalcommon.base.a
    public boolean a(String str) {
        if (!TextUtils.isEmpty(str)) {
            String scheme = Uri.parse(str).getScheme();
            if (!TextUtils.isEmpty(scheme) && scheme.equals(CommonCode.Resolution.HAS_RESOLUTION_FROM_APK)) {
                return com.mbridge.msdk.click.c.d(com.mbridge.msdk.foundation.controller.c.m().d(), str);
            }
            return false;
        }
        return false;
    }
}
