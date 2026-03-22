package com.bytedance.applog;

import androidx.annotation.Nullable;
import com.bytedance.bdtracker.b;
import com.bytedance.bdtracker.l0;
/* loaded from: classes3.dex */
public final class AppLogManager {
    @Nullable
    public static IAppLogInstance getInstance(String str) {
        if (l0.b.c(str)) {
            return null;
        }
        return b.a(str);
    }
}
