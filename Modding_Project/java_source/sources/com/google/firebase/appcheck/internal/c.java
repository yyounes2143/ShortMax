package com.google.firebase.appcheck.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.OnFailureListener;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import q7.i;
/* compiled from: DefaultTokenRefresher.java */
/* loaded from: classes5.dex */
public class c {

    /* renamed from: a */
    private final b f20371a;

    /* renamed from: b */
    private final Executor f20372b;

    /* renamed from: c */
    private final ScheduledExecutorService f20373c;

    /* renamed from: d */
    private volatile ScheduledFuture<?> f20374d;

    /* renamed from: e */
    private volatile long f20375e = -1;

    public c(@NonNull b bVar, @o7.c Executor executor, @o7.b ScheduledExecutorService scheduledExecutorService) {
        this.f20371a = (b) Preconditions.checkNotNull(bVar);
        this.f20372b = executor;
        this.f20373c = scheduledExecutorService;
    }

    private long d() {
        if (this.f20375e == -1) {
            return 30L;
        }
        if (this.f20375e * 2 >= 960) {
            return 960L;
        }
        return this.f20375e * 2;
    }

    public /* synthetic */ void e(Exception exc) {
        h();
    }

    public void f() {
        this.f20371a.l().addOnFailureListener(this.f20372b, new OnFailureListener() { // from class: q7.j
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                com.google.firebase.appcheck.internal.c.this.e(exc);
            }
        });
    }

    private void h() {
        c();
        this.f20375e = d();
        this.f20374d = this.f20373c.schedule(new i(this), this.f20375e, TimeUnit.SECONDS);
    }

    public void c() {
        if (this.f20374d != null && !this.f20374d.isDone()) {
            this.f20374d.cancel(false);
        }
    }

    public void g(long j10) {
        c();
        this.f20375e = -1L;
        this.f20374d = this.f20373c.schedule(new i(this), Math.max(0L, j10), TimeUnit.MILLISECONDS);
    }
}
