package com.bytedance.sdk.component.adexpress.ex;

import android.text.TextUtils;
/* loaded from: classes3.dex */
public class Pfn {
    public static boolean oJ(String str) {
        if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
            if (TextUtils.equals(str, "embeded_ad") || TextUtils.equals(str, "banner_ad")) {
                return true;
            }
            return false;
        }
        return false;
    }
}
