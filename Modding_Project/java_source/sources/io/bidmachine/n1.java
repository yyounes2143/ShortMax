package io.bidmachine;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.n1;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BidMachineActivityManager.java */
/* loaded from: classes7.dex */
public class n1 {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicBoolean f57943a = new AtomicBoolean(false);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static WeakReference<Activity> f57944b;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Activity a() {
        WeakReference<Activity> weakReference = f57944b;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(@NonNull Context context) {
        if (!f57943a.compareAndSet(false, true)) {
            return;
        }
        try {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext instanceof Application) {
                ((Application) applicationContext).registerActivityLifecycleCallbacks(new b());
            }
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
        }
    }

    static void c(@NonNull Activity activity) {
        f57944b = new WeakReference<>(activity);
    }

    /* compiled from: BidMachineActivityManager.java */
    /* loaded from: classes7.dex */
    private static class b implements Application.ActivityLifecycleCallbacks {
        private b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void c() {
            try {
                SessionManager.get().pause();
            } catch (Throwable unused) {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void d() {
            try {
                SessionManager.get().resume();
            } catch (Throwable unused) {
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(@NonNull Activity activity) {
            try {
                io.bidmachine.core.g.X(new Runnable() { // from class: io.bidmachine.p1
                    @Override // java.lang.Runnable
                    public final void run() {
                        n1.b.c();
                    }
                });
            } catch (Throwable unused) {
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(@NonNull Activity activity) {
            try {
                n1.c(activity);
                io.bidmachine.core.g.X(new Runnable() { // from class: io.bidmachine.o1
                    @Override // java.lang.Runnable
                    public final void run() {
                        n1.b.d();
                    }
                });
            } catch (Throwable unused) {
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(@NonNull Activity activity) {
            try {
                n1.c(activity);
            } catch (Throwable unused) {
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
        }
    }
}
