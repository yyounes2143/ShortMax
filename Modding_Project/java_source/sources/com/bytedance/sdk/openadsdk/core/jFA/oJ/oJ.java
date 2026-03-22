package com.bytedance.sdk.openadsdk.core.jFA.oJ;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* loaded from: classes3.dex */
public class oJ implements Application.ActivityLifecycleCallbacks {
    private static volatile oJ oJ;
    private final ZYk ZYk;

    private oJ(Application application) {
        this.ZYk = ZYk.oJ(application);
    }

    public static oJ oJ(Application application) {
        if (oJ == null) {
            synchronized (oJ.class) {
                try {
                    if (oJ == null) {
                        oJ = new oJ(application);
                        application.registerActivityLifecycleCallbacks(oJ);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        ZYk zYk = this.ZYk;
        if (zYk != null) {
            zYk.oJ(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        ZYk zYk = this.ZYk;
        if (zYk != null) {
            zYk.ZYk(activity);
        }
    }

    public String oJ(String str, long j10, int i10) {
        ZYk zYk = this.ZYk;
        if (zYk != null) {
            return zYk.oJ(str, j10, i10);
        }
        return "null";
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
