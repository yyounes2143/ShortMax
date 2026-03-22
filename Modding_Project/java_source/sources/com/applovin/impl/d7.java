package com.applovin.impl;

import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes2.dex */
public class d7 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f7819a;

    /* renamed from: b  reason: collision with root package name */
    private Timer f7820b;

    /* renamed from: c  reason: collision with root package name */
    private long f7821c;

    /* renamed from: d  reason: collision with root package name */
    private long f7822d;

    /* renamed from: e  reason: collision with root package name */
    private long f7823e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f7824f;

    /* renamed from: g  reason: collision with root package name */
    private final Runnable f7825g;

    /* renamed from: h  reason: collision with root package name */
    private long f7826h;

    /* renamed from: i  reason: collision with root package name */
    private final Object f7827i = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                d7.this.f7825g.run();
                synchronized (d7.this.f7827i) {
                    try {
                        if (!d7.this.f7824f) {
                            d7.this.f7820b = null;
                        } else {
                            d7.this.f7821c = System.currentTimeMillis();
                            d7 d7Var = d7.this;
                            d7Var.f7822d = d7Var.f7823e;
                        }
                    } finally {
                    }
                }
            } catch (Throwable th2) {
                try {
                    if (d7.this.f7819a != null) {
                        d7.this.f7819a.O();
                        if (com.applovin.impl.sdk.o.a()) {
                            d7.this.f7819a.O().a("Timer", "Encountered error while executing timed task", th2);
                        }
                        d7.this.f7819a.E().a("Timer", "executingTimedTask", th2);
                    }
                    synchronized (d7.this.f7827i) {
                        try {
                            if (!d7.this.f7824f) {
                                d7.this.f7820b = null;
                            } else {
                                d7.this.f7821c = System.currentTimeMillis();
                                d7 d7Var2 = d7.this;
                                d7Var2.f7822d = d7Var2.f7823e;
                            }
                        } finally {
                        }
                    }
                } catch (Throwable th3) {
                    synchronized (d7.this.f7827i) {
                        try {
                            if (!d7.this.f7824f) {
                                d7.this.f7820b = null;
                            } else {
                                d7.this.f7821c = System.currentTimeMillis();
                                d7 d7Var3 = d7.this;
                                d7Var3.f7822d = d7Var3.f7823e;
                            }
                            throw th3;
                        } finally {
                        }
                    }
                }
            }
        }
    }

    private d7(com.applovin.impl.sdk.k kVar, Runnable runnable) {
        this.f7819a = kVar;
        this.f7825g = runnable;
    }

    public long c() {
        if (this.f7820b != null) {
            return this.f7822d - (System.currentTimeMillis() - this.f7821c);
        }
        return this.f7822d - this.f7826h;
    }

    public void d() {
        synchronized (this.f7827i) {
            Timer timer = this.f7820b;
            if (timer != null) {
                timer.cancel();
                this.f7826h = Math.max(1L, System.currentTimeMillis() - this.f7821c);
                this.f7820b = null;
            }
        }
    }

    public void e() {
        synchronized (this.f7827i) {
            long j10 = this.f7826h;
            if (j10 > 0) {
                long j11 = this.f7822d - j10;
                this.f7822d = j11;
                if (j11 < 0) {
                    this.f7822d = 0L;
                }
                this.f7820b = new Timer();
                a(b(), this.f7822d, this.f7824f, this.f7823e);
                this.f7821c = System.currentTimeMillis();
                this.f7826h = 0L;
            }
        }
    }

    private TimerTask b() {
        return new a();
    }

    public static d7 a(long j10, com.applovin.impl.sdk.k kVar, Runnable runnable) {
        return a(j10, false, kVar, runnable);
    }

    public static d7 a(long j10, boolean z10, com.applovin.impl.sdk.k kVar, Runnable runnable) {
        if (j10 < 0) {
            throw new IllegalArgumentException("Cannot create a scheduled timer. Invalid fire time passed in: " + j10 + ".");
        } else if (runnable != null) {
            d7 d7Var = new d7(kVar, runnable);
            d7Var.f7821c = System.currentTimeMillis();
            d7Var.f7822d = j10;
            d7Var.f7824f = z10;
            d7Var.f7823e = j10;
            try {
                d7Var.f7820b = new Timer();
                d7Var.a(d7Var.b(), j10, z10, d7Var.f7823e);
            } catch (OutOfMemoryError e10) {
                kVar.O();
                if (com.applovin.impl.sdk.o.a()) {
                    kVar.O().a("Timer", "Failed to create timer due to OOM error", e10);
                }
            }
            return d7Var;
        } else {
            throw new IllegalArgumentException("Cannot create a scheduled timer. Runnable is null.");
        }
    }

    public void a() {
        synchronized (this.f7827i) {
            Timer timer = this.f7820b;
            if (timer != null) {
                timer.cancel();
                this.f7820b = null;
                this.f7826h = 0L;
            }
        }
    }

    private void a(TimerTask timerTask, long j10, boolean z10, long j11) {
        if (z10) {
            this.f7820b.schedule(timerTask, j10, j11);
        } else {
            this.f7820b.schedule(timerTask, j10);
        }
    }
}
