package com.bytedance.sdk.component.adexpress.ex;

import android.text.TextUtils;
/* loaded from: classes3.dex */
public class ba {
    public static boolean ZYk(String str) {
        if (com.bytedance.sdk.component.adexpress.ex.ZYk() && oJ(str)) {
            return true;
        }
        return false;
    }

    public static boolean oJ(String str) {
        if (!TextUtils.equals(str, "fullscreen_interstitial_ad") && !TextUtils.equals(str, "rewarded_video")) {
            return false;
        }
        return true;
    }
}
