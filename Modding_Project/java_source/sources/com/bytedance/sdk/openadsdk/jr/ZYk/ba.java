package com.bytedance.sdk.openadsdk.jr.ZYk;

import android.view.View;
import com.bytedance.sdk.openadsdk.core.mu;
/* loaded from: classes3.dex */
public class ba {
    public static boolean oJ(View view, int i10) {
        return oJ(view, false, i10);
    }

    public static boolean oJ(View view, boolean z10, int i10) {
        if (view == null) {
            return false;
        }
        return mu.oJ(view, z10 ? 30 : 50, i10, false);
    }
}
