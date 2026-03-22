package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.stats.WakeLock;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WakeLockHolder.java */
/* loaded from: classes5.dex */
public final class e1 {

    /* renamed from: a  reason: collision with root package name */
    static final long f21185a = TimeUnit.MINUTES.toMillis(1);

    /* renamed from: b  reason: collision with root package name */
    private static final Object f21186b = new Object();
    @GuardedBy("WakeLockHolder.syncObject")

    /* renamed from: c  reason: collision with root package name */
    private static WakeLock f21187c;

    @GuardedBy("WakeLockHolder.syncObject")
    private static void b(Context context) {
        if (f21187c == null) {
            WakeLock wakeLock = new WakeLock(context, 1, "wake:com.google.firebase.iid.WakeLockHolder");
            f21187c = wakeLock;
            wakeLock.setReferenceCounted(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(@NonNull Intent intent) {
        synchronized (f21186b) {
            try {
                if (f21187c != null && d(intent)) {
                    g(intent, false);
                    f21187c.release();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @VisibleForTesting
    static boolean d(@NonNull Intent intent) {
        return intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"TaskMainThread"})
    public static void f(Context context, j1 j1Var, final Intent intent) {
        synchronized (f21186b) {
            try {
                b(context);
                boolean d10 = d(intent);
                g(intent, true);
                if (!d10) {
                    f21187c.acquire(f21185a);
                }
                j1Var.d(intent).addOnCompleteListener(new OnCompleteListener() { // from class: com.google.firebase.messaging.d1
                    @Override // com.google.android.gms.tasks.OnCompleteListener
                    public final void onComplete(Task task) {
                        e1.c(intent);
                    }
                });
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static void g(@NonNull Intent intent, boolean z10) {
        intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ComponentName h(@NonNull Context context, @NonNull Intent intent) {
        synchronized (f21186b) {
            try {
                b(context);
                boolean d10 = d(intent);
                g(intent, true);
                ComponentName startService = context.startService(intent);
                if (startService == null) {
                    return null;
                }
                if (!d10) {
                    f21187c.acquire(f21185a);
                }
                return startService;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
