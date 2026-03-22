package com.bytedance.sdk.openadsdk.core;

import android.annotation.SuppressLint;
import android.content.Context;
import com.bytedance.sdk.openadsdk.core.ba;
/* loaded from: classes3.dex */
public class Pfn extends ba {
    @SuppressLint({"StaticFieldLeak"})
    private static volatile Pfn oJ;

    private Pfn(Context context) {
        super(context);
    }

    @Override // com.bytedance.sdk.openadsdk.core.ba
    public /* bridge */ /* synthetic */ ba.tB oJ() {
        return super.oJ();
    }

    public static Pfn oJ(Context context) {
        if (oJ == null) {
            synchronized (Pfn.class) {
                try {
                    if (oJ == null) {
                        oJ = new Pfn(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }
}
