package com.google.android.exoplayer2;

import android.os.Looper;
import androidx.annotation.Nullable;
import java.util.concurrent.TimeoutException;
/* compiled from: PlayerMessage.java */
/* loaded from: classes4.dex */
public final class m1 {

    /* renamed from: a  reason: collision with root package name */
    private final b f17846a;

    /* renamed from: b  reason: collision with root package name */
    private final a f17847b;

    /* renamed from: c  reason: collision with root package name */
    private final b7.d f17848c;

    /* renamed from: d  reason: collision with root package name */
    private final u1 f17849d;

    /* renamed from: e  reason: collision with root package name */
    private int f17850e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Object f17851f;

    /* renamed from: g  reason: collision with root package name */
    private Looper f17852g;

    /* renamed from: h  reason: collision with root package name */
    private int f17853h;

    /* renamed from: i  reason: collision with root package name */
    private long f17854i = -9223372036854775807L;

    /* renamed from: j  reason: collision with root package name */
    private boolean f17855j = true;

    /* renamed from: k  reason: collision with root package name */
    private boolean f17856k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f17857l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f17858m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f17859n;

    /* compiled from: PlayerMessage.java */
    /* loaded from: classes4.dex */
    public interface a {
        void c(m1 m1Var);
    }

    /* compiled from: PlayerMessage.java */
    /* loaded from: classes4.dex */
    public interface b {
        void handleMessage(int i10, @Nullable Object obj) throws ExoPlaybackException;
    }

    public m1(a aVar, b bVar, u1 u1Var, int i10, b7.d dVar, Looper looper) {
        this.f17847b = aVar;
        this.f17846a = bVar;
        this.f17849d = u1Var;
        this.f17852g = looper;
        this.f17848c = dVar;
        this.f17853h = i10;
    }

    public synchronized boolean a(long j10) throws InterruptedException, TimeoutException {
        boolean z10;
        boolean z11;
        try {
            b7.a.g(this.f17856k);
            if (this.f17852g.getThread() != Thread.currentThread()) {
                z10 = true;
            } else {
                z10 = false;
            }
            b7.a.g(z10);
            long elapsedRealtime = this.f17848c.elapsedRealtime() + j10;
            while (true) {
                z11 = this.f17858m;
                if (z11 || j10 <= 0) {
                    break;
                }
                this.f17848c.a();
                wait(j10);
                j10 = elapsedRealtime - this.f17848c.elapsedRealtime();
            }
            if (z11) {
            } else {
                throw new TimeoutException("Message delivery timed out.");
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f17857l;
    }

    public boolean b() {
        return this.f17855j;
    }

    public Looper c() {
        return this.f17852g;
    }

    public int d() {
        return this.f17853h;
    }

    @Nullable
    public Object e() {
        return this.f17851f;
    }

    public long f() {
        return this.f17854i;
    }

    public b g() {
        return this.f17846a;
    }

    public u1 h() {
        return this.f17849d;
    }

    public int i() {
        return this.f17850e;
    }

    public synchronized boolean j() {
        return this.f17859n;
    }

    public synchronized void k(boolean z10) {
        this.f17857l = z10 | this.f17857l;
        this.f17858m = true;
        notifyAll();
    }

    public m1 l() {
        b7.a.g(!this.f17856k);
        if (this.f17854i == -9223372036854775807L) {
            b7.a.a(this.f17855j);
        }
        this.f17856k = true;
        this.f17847b.c(this);
        return this;
    }

    public m1 m(@Nullable Object obj) {
        b7.a.g(!this.f17856k);
        this.f17851f = obj;
        return this;
    }

    public m1 n(int i10) {
        b7.a.g(!this.f17856k);
        this.f17850e = i10;
        return this;
    }
}
