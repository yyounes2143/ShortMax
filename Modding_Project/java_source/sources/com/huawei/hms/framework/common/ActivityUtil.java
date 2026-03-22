package com.huawei.hms.framework.common;

import android.app.Activity;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class ActivityUtil {

    /* renamed from: d  reason: collision with root package name */
    private static volatile ActivityUtil f22118d;

    /* renamed from: b  reason: collision with root package name */
    private boolean f22120b;

    /* renamed from: a  reason: collision with root package name */
    private List<OnAppStatusListener> f22119a = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private Application.ActivityLifecycleCallbacks f22121c = new Application.ActivityLifecycleCallbacks() { // from class: com.huawei.hms.framework.common.ActivityUtil.1

        /* renamed from: a  reason: collision with root package name */
        private int f22122a = 0;

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            int i10 = this.f22122a + 1;
            this.f22122a = i10;
            if (i10 == 1) {
                ActivityUtil.this.f22120b = true;
                Logger.d("ActivityUtil", "onActivityStarted");
                for (int i11 = 0; i11 < ActivityUtil.this.f22119a.size(); i11++) {
                    ((OnAppStatusListener) ActivityUtil.this.f22119a.get(i11)).onFront();
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            int i10 = this.f22122a - 1;
            this.f22122a = i10;
            if (i10 == 0) {
                Logger.d("ActivityUtil", "onActivityStopped");
                ActivityUtil.this.f22120b = false;
                for (int i11 = 0; i11 < ActivityUtil.this.f22119a.size(); i11++) {
                    ((OnAppStatusListener) ActivityUtil.this.f22119a.get(i11)).onBack();
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
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
    };

    /* loaded from: classes5.dex */
    public interface OnAppStatusListener {
        void onBack();

        void onFront();
    }

    private ActivityUtil() {
    }

    public static PendingIntent getActivities(Context context, int i10, Intent[] intentArr, int i11) {
        if (context == null) {
            Logger.w("ActivityUtil", "context is null");
            return null;
        }
        try {
            return PendingIntent.getActivities(context, i10, intentArr, i11);
        } catch (RuntimeException e10) {
            Logger.e("ActivityUtil", "dealType rethrowFromSystemServer:", e10);
            return null;
        }
    }

    public static ActivityUtil getInstance() {
        if (f22118d == null) {
            synchronized (ActivityUtil.class) {
                try {
                    if (f22118d == null) {
                        f22118d = new ActivityUtil();
                    }
                } finally {
                }
            }
        }
        return f22118d;
    }

    @Deprecated
    public static boolean isForeground(Context context) {
        return getInstance().isForeground();
    }

    public void register() {
        Context appContext = ContextHolder.getAppContext();
        if (appContext instanceof Application) {
            ((Application) appContext).registerActivityLifecycleCallbacks(this.f22121c);
        } else {
            Logger.w("ActivityUtil", "context is not application, register background fail");
        }
    }

    public void setOnAppStatusListener(OnAppStatusListener onAppStatusListener) {
        if (onAppStatusListener == null) {
            Logger.w("ActivityUtil", "onAppStatusListener is null");
        } else if (this.f22119a.size() >= 20) {
            Logger.w("ActivityUtil", "onAppStatusListener of count is max");
        } else {
            this.f22119a.add(onAppStatusListener);
        }
    }

    public void unRegister() {
        Context appContext = ContextHolder.getAppContext();
        if (appContext instanceof Application) {
            ((Application) appContext).unregisterActivityLifecycleCallbacks(this.f22121c);
        } else {
            Logger.w("ActivityUtil", "context is not application, unRegister background fail");
        }
    }

    public boolean isForeground() {
        return this.f22120b;
    }
}
