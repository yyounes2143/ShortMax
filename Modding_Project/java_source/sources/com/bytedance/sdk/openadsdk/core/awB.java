package com.bytedance.sdk.openadsdk.core;

import android.app.Application;
import android.content.Context;
import com.bytedance.sdk.openadsdk.ApmHelper;
/* loaded from: classes3.dex */
public class awB {
    private boolean ZYk;
    private final com.bytedance.sdk.openadsdk.utils.oJ oJ = new com.bytedance.sdk.openadsdk.utils.oJ();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class oJ {
        private static final awB oJ = new awB();
    }

    public static awB oJ() {
        return oJ.oJ;
    }

    public com.bytedance.sdk.openadsdk.utils.oJ Pfn() {
        return this.oJ;
    }

    public void ZYk() {
        try {
            Context oJ2 = si.oJ();
            if (oJ2 instanceof Application) {
                ((Application) oJ2).registerActivityLifecycleCallbacks(this.oJ);
                this.ZYk = true;
            } else if (oJ2 != null && oJ2.getApplicationContext() != null) {
                ((Application) oJ2.getApplicationContext()).registerActivityLifecycleCallbacks(this.oJ);
                this.ZYk = true;
            }
        } catch (Throwable th2) {
            ApmHelper.reportCustomError("registerActivityLifecycleError", "registerActivityLifecycle", th2);
        }
    }

    public boolean ex() {
        return this.oJ.oJ();
    }

    public boolean tB() {
        return this.ZYk;
    }

    public boolean oJ(boolean z10) {
        return this.oJ.oJ(z10);
    }
}
