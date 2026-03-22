package com.google.firebase.installations.remote;

import androidx.annotation.GuardedBy;
import com.google.firebase.installations.h;
import java.util.concurrent.TimeUnit;
/* compiled from: RequestLimiter.java */
/* loaded from: classes5.dex */
class d {

    /* renamed from: d  reason: collision with root package name */
    private static final long f21083d = TimeUnit.HOURS.toMillis(24);

    /* renamed from: e  reason: collision with root package name */
    private static final long f21084e = TimeUnit.MINUTES.toMillis(30);

    /* renamed from: a  reason: collision with root package name */
    private final h f21085a = h.c();
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    private long f21086b;
    @GuardedBy("this")

    /* renamed from: c  reason: collision with root package name */
    private int f21087c;

    private synchronized long a(int i10) {
        if (!c(i10)) {
            return f21083d;
        }
        return (long) Math.min(Math.pow(2.0d, this.f21087c) + this.f21085a.e(), f21084e);
    }

    private static boolean c(int i10) {
        if (i10 != 429 && (i10 < 500 || i10 >= 600)) {
            return false;
        }
        return true;
    }

    private static boolean d(int i10) {
        if ((i10 < 200 || i10 >= 300) && i10 != 401 && i10 != 404) {
            return false;
        }
        return true;
    }

    private synchronized void e() {
        this.f21087c = 0;
    }

    public synchronized boolean b() {
        boolean z10;
        if (this.f21087c != 0) {
            if (this.f21085a.a() <= this.f21086b) {
                z10 = false;
            }
        }
        z10 = true;
        return z10;
    }

    public synchronized void f(int i10) {
        if (d(i10)) {
            e();
            return;
        }
        this.f21087c++;
        this.f21086b = this.f21085a.a() + a(i10);
    }
}
