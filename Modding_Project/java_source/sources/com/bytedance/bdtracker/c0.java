package com.bytedance.bdtracker;

import com.bytedance.applog.log.IAppLogLogger;
/* loaded from: classes3.dex */
public abstract class c0 {

    /* renamed from: a  reason: collision with root package name */
    public int f11884a;

    /* renamed from: b  reason: collision with root package name */
    public volatile boolean f11885b;

    /* renamed from: c  reason: collision with root package name */
    public long f11886c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f11887d;

    /* renamed from: e  reason: collision with root package name */
    public final e0 f11888e;

    /* renamed from: f  reason: collision with root package name */
    public final d f11889f;

    public c0(e0 e0Var) {
        this.f11888e = e0Var;
        this.f11889f = e0Var.f11955d;
    }

    public final long a() {
        String str = "failed";
        long b10 = b();
        if (b10 <= System.currentTimeMillis()) {
            this.f11888e.f11955d.D.debug("The worker:{} start to work...", d());
            int i10 = 0;
            try {
                boolean c10 = c();
                this.f11886c = System.currentTimeMillis();
                if (!c10) {
                    i10 = this.f11884a + 1;
                }
                this.f11884a = i10;
                IAppLogLogger iAppLogLogger = this.f11888e.f11955d.D;
                String d10 = d();
                if (c10) {
                    str = "success";
                }
                iAppLogLogger.debug("The worker:{} worked:{}.", d10, str);
            } catch (Throwable th2) {
                try {
                    this.f11888e.f11955d.D.error("Work do failed.", th2, new Object[0]);
                } finally {
                    this.f11886c = System.currentTimeMillis();
                    this.f11884a++;
                    this.f11888e.f11955d.D.debug("The worker:{} worked:{}.", d(), "failed");
                }
            }
            return b();
        }
        return b10;
    }

    public final long b() {
        long g10;
        long j10;
        if (f() && !t4.b(this.f11888e.b(), this.f11888e.f11965n.c()).a()) {
            this.f11888e.f11955d.D.debug("Check work time is not net available.", new Object[0]);
            j10 = System.currentTimeMillis();
            g10 = 5000;
        } else {
            if (this.f11885b) {
                g10 = 0;
                this.f11886c = 0L;
                this.f11885b = false;
            } else {
                int i10 = this.f11884a;
                if (i10 > 0) {
                    long[] e10 = e();
                    g10 = e10[(i10 - 1) % e10.length];
                } else {
                    g10 = g();
                }
            }
            j10 = this.f11886c;
        }
        return j10 + g10;
    }

    public abstract boolean c();

    public abstract String d();

    public abstract long[] e();

    public abstract boolean f();

    public abstract long g();

    public c0(e0 e0Var, long j10) {
        this.f11888e = e0Var;
        this.f11889f = e0Var.f11955d;
        this.f11886c = j10;
    }
}
