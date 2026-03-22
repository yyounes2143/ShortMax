package com.bytedance.sdk.component.adexpress.ex;

import android.content.Context;
import android.text.TextUtils;
/* loaded from: classes3.dex */
public class ZYk {
    public static boolean oJ(Context context) {
        if (context == null || TextUtils.getLayoutDirectionFromLocale(context.getResources().getConfiguration().locale) != 1 || (context.getApplicationInfo().flags & 4194304) != 4194304) {
            return false;
        }
        return true;
    }
}
