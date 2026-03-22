package com.google.android.exoplayer2;

import android.content.Context;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import p5.n1;
/* compiled from: ExoPlayer.java */
/* loaded from: classes4.dex */
public interface k extends l1 {

    /* compiled from: ExoPlayer.java */
    /* loaded from: classes4.dex */
    public static final class b {
        boolean A;
        boolean B;

        /* renamed from: a  reason: collision with root package name */
        final Context f17792a;

        /* renamed from: b  reason: collision with root package name */
        b7.d f17793b;

        /* renamed from: c  reason: collision with root package name */
        long f17794c;

        /* renamed from: d  reason: collision with root package name */
        h7.n<o5.q0> f17795d;

        /* renamed from: e  reason: collision with root package name */
        h7.n<o.a> f17796e;

        /* renamed from: f  reason: collision with root package name */
        h7.n<z6.h0> f17797f;

        /* renamed from: g  reason: collision with root package name */
        h7.n<o5.d0> f17798g;

        /* renamed from: h  reason: collision with root package name */
        h7.n<a7.d> f17799h;

        /* renamed from: i  reason: collision with root package name */
        h7.e<b7.d, p5.a> f17800i;

        /* renamed from: j  reason: collision with root package name */
        Looper f17801j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        PriorityTaskManager f17802k;

        /* renamed from: l  reason: collision with root package name */
        com.google.android.exoplayer2.audio.a f17803l;

        /* renamed from: m  reason: collision with root package name */
        boolean f17804m;

        /* renamed from: n  reason: collision with root package name */
        int f17805n;

        /* renamed from: o  reason: collision with root package name */
        boolean f17806o;

        /* renamed from: p  reason: collision with root package name */
        boolean f17807p;

        /* renamed from: q  reason: collision with root package name */
        int f17808q;

        /* renamed from: r  reason: collision with root package name */
        int f17809r;

        /* renamed from: s  reason: collision with root package name */
        boolean f17810s;

        /* renamed from: t  reason: collision with root package name */
        o5.r0 f17811t;

        /* renamed from: u  reason: collision with root package name */
        long f17812u;

        /* renamed from: v  reason: collision with root package name */
        long f17813v;

        /* renamed from: w  reason: collision with root package name */
        x0 f17814w;

        /* renamed from: x  reason: collision with root package name */
        long f17815x;

        /* renamed from: y  reason: collision with root package name */
        long f17816y;

        /* renamed from: z  reason: collision with root package name */
        boolean f17817z;

        public b(final Context context) {
            this(context, new h7.n() { // from class: o5.q
                @Override // h7.n
                public final Object get() {
                    q0 f10;
                    f10 = k.b.f(context);
                    return f10;
                }
            }, new h7.n() { // from class: o5.r
                @Override // h7.n
                public final Object get() {
                    o.a g10;
                    g10 = k.b.g(context);
                    return g10;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ o5.q0 f(Context context) {
            return new o5.n(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ o.a g(Context context) {
            return new com.google.android.exoplayer2.source.i(context, new t5.h());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ z6.h0 h(Context context) {
            return new z6.m(context);
        }

        public k e() {
            b7.a.g(!this.B);
            this.B = true;
            return new j0(this, null);
        }

        public b j(Looper looper) {
            b7.a.g(!this.B);
            b7.a.e(looper);
            this.f17801j = looper;
            return this;
        }

        public b k(boolean z10) {
            b7.a.g(!this.B);
            this.f17817z = z10;
            return this;
        }

        private b(final Context context, h7.n<o5.q0> nVar, h7.n<o.a> nVar2) {
            this(context, nVar, nVar2, new h7.n() { // from class: o5.s
                @Override // h7.n
                public final Object get() {
                    z6.h0 h10;
                    h10 = k.b.h(context);
                    return h10;
                }
            }, new h7.n() { // from class: o5.t
                @Override // h7.n
                public final Object get() {
                    return new m();
                }
            }, new h7.n() { // from class: o5.u
                @Override // h7.n
                public final Object get() {
                    a7.d l10;
                    l10 = a7.n.l(context);
                    return l10;
                }
            }, new h7.e() { // from class: o5.v
                @Override // h7.e
                public final Object apply(Object obj) {
                    return new n1((b7.d) obj);
                }
            });
        }

        private b(Context context, h7.n<o5.q0> nVar, h7.n<o.a> nVar2, h7.n<z6.h0> nVar3, h7.n<o5.d0> nVar4, h7.n<a7.d> nVar5, h7.e<b7.d, p5.a> eVar) {
            this.f17792a = (Context) b7.a.e(context);
            this.f17795d = nVar;
            this.f17796e = nVar2;
            this.f17797f = nVar3;
            this.f17798g = nVar4;
            this.f17799h = nVar5;
            this.f17800i = eVar;
            this.f17801j = b7.s0.K();
            this.f17803l = com.google.android.exoplayer2.audio.a.f17292g;
            this.f17805n = 0;
            this.f17808q = 1;
            this.f17809r = 0;
            this.f17810s = true;
            this.f17811t = o5.r0.f63129g;
            this.f17812u = 5000L;
            this.f17813v = 15000L;
            this.f17814w = new h.b().a();
            this.f17793b = b7.d.f2436a;
            this.f17815x = 500L;
            this.f17816y = 2000L;
            this.A = true;
        }
    }

    void B(com.google.android.exoplayer2.source.o oVar);

    /* compiled from: ExoPlayer.java */
    /* loaded from: classes4.dex */
    public interface a {
        default void A(boolean z10) {
        }

        default void y(boolean z10) {
        }
    }
}
