package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.GuardedBy;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* compiled from: FcmBroadcastProcessor.java */
@KeepForSdk
/* loaded from: classes5.dex */
public class m {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f21220c = new Object();
    @GuardedBy("lock")

    /* renamed from: d  reason: collision with root package name */
    private static j1 f21221d;

    /* renamed from: a  reason: collision with root package name */
    private final Context f21222a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f21223b = new androidx.credentials.a();

    public m(Context context) {
        this.f21222a = context;
    }

    private static Task<Integer> e(Context context, Intent intent, boolean z10) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Binding to service");
        }
        j1 f10 = f(context, "com.google.firebase.MESSAGING_EVENT");
        if (z10) {
            if (t0.b().e(context)) {
                e1.f(context, f10, intent);
            } else {
                f10.d(intent);
            }
            return Tasks.forResult(-1);
        }
        return f10.d(intent).continueWith(new androidx.credentials.a(), new Continuation() { // from class: com.google.firebase.messaging.l
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                Integer g10;
                g10 = m.g(task);
                return g10;
            }
        });
    }

    private static j1 f(Context context, String str) {
        j1 j1Var;
        synchronized (f21220c) {
            try {
                if (f21221d == null) {
                    f21221d = new j1(context, str);
                }
                j1Var = f21221d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return j1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer g(Task task) throws Exception {
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer h(Context context, Intent intent) throws Exception {
        return Integer.valueOf(t0.b().g(context, intent));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer i(Task task) throws Exception {
        return 403;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task j(Context context, Intent intent, boolean z10, Task task) throws Exception {
        if (PlatformVersion.isAtLeastO() && ((Integer) task.getResult()).intValue() == 402) {
            return e(context, intent, z10).continueWith(new androidx.credentials.a(), new Continuation() { // from class: com.google.firebase.messaging.k
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task2) {
                    Integer i10;
                    i10 = m.i(task2);
                    return i10;
                }
            });
        }
        return task;
    }

    @KeepForSdk
    public Task<Integer> k(Intent intent) {
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        return l(this.f21222a, intent);
    }

    @SuppressLint({"InlinedApi"})
    public Task<Integer> l(final Context context, final Intent intent) {
        boolean z10;
        final boolean z11 = false;
        if (PlatformVersion.isAtLeastO() && context.getApplicationInfo().targetSdkVersion >= 26) {
            z10 = true;
        } else {
            z10 = false;
        }
        if ((intent.getFlags() & 268435456) != 0) {
            z11 = true;
        }
        if (z10 && !z11) {
            return e(context, intent, z11);
        }
        return Tasks.call(this.f21223b, new Callable() { // from class: com.google.firebase.messaging.i
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer h10;
                h10 = m.h(context, intent);
                return h10;
            }
        }).continueWithTask(this.f21223b, new Continuation() { // from class: com.google.firebase.messaging.j
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                Task j10;
                j10 = m.j(context, intent, z11, task);
                return j10;
            }
        });
    }
}
