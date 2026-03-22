package io.bidmachine.media3.exoplayer;

import android.content.Context;
import android.os.Looper;
import androidx.annotation.Nullable;
import hn.r1;
import io.bidmachine.media3.common.PriorityTaskManager;
import io.bidmachine.media3.exoplayer.ExoPlayer;
import io.bidmachine.media3.exoplayer.i;
import io.bidmachine.media3.exoplayer.image.ImageOutput;
import io.bidmachine.media3.exoplayer.source.r;
/* loaded from: classes8.dex */
public interface ExoPlayer extends zm.w {

    /* loaded from: classes8.dex */
    public static final class b {
        long A;
        long B;
        boolean C;
        boolean D;
        @Nullable
        gn.f0 E;
        boolean F;
        boolean G;
        String H;
        boolean I;
        q2 J;

        /* renamed from: a  reason: collision with root package name */
        final Context f55360a;

        /* renamed from: b  reason: collision with root package name */
        cn.h f55361b;

        /* renamed from: c  reason: collision with root package name */
        long f55362c;

        /* renamed from: d  reason: collision with root package name */
        h7.n<gn.h0> f55363d;

        /* renamed from: e  reason: collision with root package name */
        h7.n<r.a> f55364e;

        /* renamed from: f  reason: collision with root package name */
        h7.n<vn.v> f55365f;

        /* renamed from: g  reason: collision with root package name */
        h7.n<j1> f55366g;

        /* renamed from: h  reason: collision with root package name */
        h7.n<wn.d> f55367h;

        /* renamed from: i  reason: collision with root package name */
        h7.e<cn.h, hn.a> f55368i;

        /* renamed from: j  reason: collision with root package name */
        Looper f55369j;

        /* renamed from: k  reason: collision with root package name */
        int f55370k;
        @Nullable

        /* renamed from: l  reason: collision with root package name */
        PriorityTaskManager f55371l;

        /* renamed from: m  reason: collision with root package name */
        zm.c f55372m;

        /* renamed from: n  reason: collision with root package name */
        boolean f55373n;

        /* renamed from: o  reason: collision with root package name */
        int f55374o;

        /* renamed from: p  reason: collision with root package name */
        boolean f55375p;

        /* renamed from: q  reason: collision with root package name */
        boolean f55376q;

        /* renamed from: r  reason: collision with root package name */
        boolean f55377r;

        /* renamed from: s  reason: collision with root package name */
        int f55378s;

        /* renamed from: t  reason: collision with root package name */
        int f55379t;

        /* renamed from: u  reason: collision with root package name */
        boolean f55380u;

        /* renamed from: v  reason: collision with root package name */
        gn.i0 f55381v;

        /* renamed from: w  reason: collision with root package name */
        long f55382w;

        /* renamed from: x  reason: collision with root package name */
        long f55383x;

        /* renamed from: y  reason: collision with root package name */
        long f55384y;

        /* renamed from: z  reason: collision with root package name */
        gn.d0 f55385z;

        public b(final Context context) {
            this(context, new h7.n() { // from class: gn.u
                @Override // h7.n
                public final Object get() {
                    h0 f10;
                    f10 = ExoPlayer.b.f(context);
                    return f10;
                }
            }, new h7.n() { // from class: gn.v
                @Override // h7.n
                public final Object get() {
                    r.a g10;
                    g10 = ExoPlayer.b.g(context);
                    return g10;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ gn.h0 f(Context context) {
            return new gn.d(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ r.a g(Context context) {
            return new io.bidmachine.media3.exoplayer.source.i(context, new ao.l());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ vn.v h(Context context) {
            return new vn.n(context);
        }

        public ExoPlayer e() {
            cn.a.g(!this.F);
            this.F = true;
            return new u0(this, null);
        }

        private b(final Context context, h7.n<gn.h0> nVar, h7.n<r.a> nVar2) {
            this(context, nVar, nVar2, new h7.n() { // from class: gn.w
                @Override // h7.n
                public final Object get() {
                    vn.v h10;
                    h10 = ExoPlayer.b.h(context);
                    return h10;
                }
            }, new h7.n() { // from class: gn.x
                @Override // h7.n
                public final Object get() {
                    return new io.bidmachine.media3.exoplayer.j();
                }
            }, new h7.n() { // from class: gn.y
                @Override // h7.n
                public final Object get() {
                    wn.d m10;
                    m10 = wn.i.m(context);
                    return m10;
                }
            }, new h7.e() { // from class: gn.z
                @Override // h7.e
                public final Object apply(Object obj) {
                    return new r1((cn.h) obj);
                }
            });
        }

        private b(Context context, h7.n<gn.h0> nVar, h7.n<r.a> nVar2, h7.n<vn.v> nVar3, h7.n<j1> nVar4, h7.n<wn.d> nVar5, h7.e<cn.h, hn.a> eVar) {
            this.f55360a = (Context) cn.a.e(context);
            this.f55363d = nVar;
            this.f55364e = nVar2;
            this.f55365f = nVar3;
            this.f55366g = nVar4;
            this.f55367h = nVar5;
            this.f55368i = eVar;
            this.f55369j = cn.m0.X();
            this.f55372m = zm.c.f71814g;
            this.f55374o = 0;
            this.f55378s = 1;
            this.f55379t = 0;
            this.f55380u = true;
            this.f55381v = gn.i0.f52463g;
            this.f55382w = 5000L;
            this.f55383x = 15000L;
            this.f55384y = 3000L;
            this.f55385z = new i.b().a();
            this.f55361b = cn.h.f3594a;
            this.A = 500L;
            this.B = 2000L;
            this.D = true;
            this.H = "";
            this.f55370k = -1000;
            this.J = new l();
        }
    }

    /* loaded from: classes8.dex */
    public static class c {

        /* renamed from: b  reason: collision with root package name */
        public static final c f55386b = new c(-9223372036854775807L);

        /* renamed from: a  reason: collision with root package name */
        public final long f55387a;

        public c(long j10) {
            this.f55387a = j10;
        }
    }

    void release();

    void setImageOutput(@Nullable ImageOutput imageOutput);

    /* loaded from: classes8.dex */
    public interface a {
        default void y(boolean z10) {
        }

        default void z(boolean z10) {
        }
    }
}
