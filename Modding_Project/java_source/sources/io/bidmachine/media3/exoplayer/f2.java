package io.bidmachine.media3.exoplayer;

import android.os.Looper;
import androidx.annotation.Nullable;
/* compiled from: PlayerMessage.java */
/* loaded from: classes8.dex */
public final class f2 {

    /* renamed from: a  reason: collision with root package name */
    private final b f55914a;

    /* renamed from: b  reason: collision with root package name */
    private final a f55915b;

    /* renamed from: c  reason: collision with root package name */
    private final cn.h f55916c;

    /* renamed from: d  reason: collision with root package name */
    private final zm.a0 f55917d;

    /* renamed from: e  reason: collision with root package name */
    private int f55918e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Object f55919f;

    /* renamed from: g  reason: collision with root package name */
    private Looper f55920g;

    /* renamed from: h  reason: collision with root package name */
    private int f55921h;

    /* renamed from: i  reason: collision with root package name */
    private long f55922i = -9223372036854775807L;

    /* renamed from: j  reason: collision with root package name */
    private boolean f55923j = true;

    /* renamed from: k  reason: collision with root package name */
    private boolean f55924k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f55925l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f55926m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f55927n;

    /* compiled from: PlayerMessage.java */
    /* loaded from: classes8.dex */
    public interface a {
        void c(f2 f2Var);
    }

    /* compiled from: PlayerMessage.java */
    /* loaded from: classes8.dex */
    public interface b {
        void handleMessage(int i10, @Nullable Object obj) throws ExoPlaybackException;
    }

    public f2(a aVar, b bVar, zm.a0 a0Var, int i10, cn.h hVar, Looper looper) {
        this.f55915b = aVar;
        this.f55914a = bVar;
        this.f55917d = a0Var;
        this.f55920g = looper;
        this.f55916c = hVar;
        this.f55921h = i10;
    }

    public boolean a() {
        return this.f55923j;
    }

    public Looper b() {
        return this.f55920g;
    }

    public int c() {
        return this.f55921h;
    }

    @Nullable
    public Object d() {
        return this.f55919f;
    }

    public long e() {
        return this.f55922i;
    }

    public b f() {
        return this.f55914a;
    }

    public zm.a0 g() {
        return this.f55917d;
    }

    public int h() {
        return this.f55918e;
    }

    public synchronized boolean i() {
        return this.f55927n;
    }

    public synchronized void j(boolean z10) {
        this.f55925l = z10 | this.f55925l;
        this.f55926m = true;
        notifyAll();
    }

    public f2 k() {
        cn.a.g(!this.f55924k);
        if (this.f55922i == -9223372036854775807L) {
            cn.a.a(this.f55923j);
        }
        this.f55924k = true;
        this.f55915b.c(this);
        return this;
    }

    public f2 l(@Nullable Object obj) {
        cn.a.g(!this.f55924k);
        this.f55919f = obj;
        return this;
    }

    public f2 m(int i10) {
        cn.a.g(!this.f55924k);
        this.f55918e = i10;
        return this;
    }
}
