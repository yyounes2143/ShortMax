package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TopicsStore.java */
/* loaded from: classes5.dex */
public final class z0 {
    @GuardedBy("TopicsStore.class")

    /* renamed from: d  reason: collision with root package name */
    private static WeakReference<z0> f21308d;

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f21309a;

    /* renamed from: b  reason: collision with root package name */
    private v0 f21310b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f21311c;

    private z0(SharedPreferences sharedPreferences, Executor executor) {
        this.f21311c = executor;
        this.f21309a = sharedPreferences;
    }

    @WorkerThread
    public static synchronized z0 a(Context context, Executor executor) {
        z0 z0Var;
        synchronized (z0.class) {
            try {
                WeakReference<z0> weakReference = f21308d;
                if (weakReference != null) {
                    z0Var = weakReference.get();
                } else {
                    z0Var = null;
                }
                if (z0Var == null) {
                    z0Var = new z0(context.getSharedPreferences("com.google.android.gms.appid", 0), executor);
                    z0Var.c();
                    f21308d = new WeakReference<>(z0Var);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z0Var;
    }

    @WorkerThread
    private synchronized void c() {
        this.f21310b = v0.c(this.f21309a, "topic_operation_queue", ",", this.f21311c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public synchronized y0 b() {
        return y0.a(this.f21310b.e());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean d(y0 y0Var) {
        return this.f21310b.f(y0Var.e());
    }
}
