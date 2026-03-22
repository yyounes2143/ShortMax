package com.apm.insight.j;

import android.os.Handler;
/* compiled from: BaseTask.java */
/* loaded from: classes2.dex */
public abstract class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private Handler f6960a;

    /* renamed from: b  reason: collision with root package name */
    private final long f6961b = 0;

    /* renamed from: c  reason: collision with root package name */
    private final long f6962c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Handler handler, long j10) {
        this.f6960a = handler;
        this.f6962c = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f6960a.post(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long b() {
        return this.f6962c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j10) {
        if (j10 > 0) {
            this.f6960a.postDelayed(this, j10);
        } else {
            this.f6960a.post(this);
        }
    }
}
