package c5;

import android.content.Context;
import c5.v;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import java.util.concurrent.Executor;
import k5.m0;
import k5.n0;
import k5.w0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DaggerTransportRuntimeComponent.java */
/* loaded from: classes4.dex */
public final class e {

    /* compiled from: DaggerTransportRuntimeComponent.java */
    /* loaded from: classes4.dex */
    private static final class b implements v.a {

        /* renamed from: a  reason: collision with root package name */
        private Context f3109a;

        private b() {
        }

        @Override // c5.v.a
        /* renamed from: b */
        public b a(Context context) {
            this.f3109a = (Context) e5.d.b(context);
            return this;
        }

        @Override // c5.v.a
        public v build() {
            e5.d.a(this.f3109a, Context.class);
            return new c(this.f3109a);
        }
    }

    /* compiled from: DaggerTransportRuntimeComponent.java */
    /* loaded from: classes4.dex */
    private static final class c extends v {

        /* renamed from: a  reason: collision with root package name */
        private final c f3110a;

        /* renamed from: b  reason: collision with root package name */
        private ls.a<Executor> f3111b;

        /* renamed from: c  reason: collision with root package name */
        private ls.a<Context> f3112c;

        /* renamed from: d  reason: collision with root package name */
        private ls.a f3113d;

        /* renamed from: e  reason: collision with root package name */
        private ls.a f3114e;

        /* renamed from: f  reason: collision with root package name */
        private ls.a f3115f;

        /* renamed from: g  reason: collision with root package name */
        private ls.a<String> f3116g;

        /* renamed from: h  reason: collision with root package name */
        private ls.a<m0> f3117h;

        /* renamed from: i  reason: collision with root package name */
        private ls.a<SchedulerConfig> f3118i;

        /* renamed from: j  reason: collision with root package name */
        private ls.a<j5.u> f3119j;

        /* renamed from: k  reason: collision with root package name */
        private ls.a<i5.c> f3120k;

        /* renamed from: l  reason: collision with root package name */
        private ls.a<j5.o> f3121l;

        /* renamed from: m  reason: collision with root package name */
        private ls.a<j5.s> f3122m;

        /* renamed from: n  reason: collision with root package name */
        private ls.a<u> f3123n;

        private void l(Context context) {
            this.f3111b = e5.a.a(k.a());
            e5.b a10 = e5.c.a(context);
            this.f3112c = a10;
            d5.h a11 = d5.h.a(a10, m5.c.a(), m5.d.a());
            this.f3113d = a11;
            this.f3114e = e5.a.a(d5.j.a(this.f3112c, a11));
            this.f3115f = w0.a(this.f3112c, k5.g.a(), k5.i.a());
            this.f3116g = e5.a.a(k5.h.a(this.f3112c));
            this.f3117h = e5.a.a(n0.a(m5.c.a(), m5.d.a(), k5.j.a(), this.f3115f, this.f3116g));
            i5.g b10 = i5.g.b(m5.c.a());
            this.f3118i = b10;
            i5.i a12 = i5.i.a(this.f3112c, this.f3117h, b10, m5.d.a());
            this.f3119j = a12;
            ls.a<Executor> aVar = this.f3111b;
            ls.a aVar2 = this.f3114e;
            ls.a<m0> aVar3 = this.f3117h;
            this.f3120k = i5.d.a(aVar, aVar2, a12, aVar3, aVar3);
            ls.a<Context> aVar4 = this.f3112c;
            ls.a aVar5 = this.f3114e;
            ls.a<m0> aVar6 = this.f3117h;
            this.f3121l = j5.p.a(aVar4, aVar5, aVar6, this.f3119j, this.f3111b, aVar6, m5.c.a(), m5.d.a(), this.f3117h);
            ls.a<Executor> aVar7 = this.f3111b;
            ls.a<m0> aVar8 = this.f3117h;
            this.f3122m = j5.t.a(aVar7, aVar8, this.f3119j, aVar8);
            this.f3123n = e5.a.a(w.a(m5.c.a(), m5.d.a(), this.f3120k, this.f3121l, this.f3122m));
        }

        @Override // c5.v
        k5.d d() {
            return this.f3117h.get();
        }

        @Override // c5.v
        u k() {
            return this.f3123n.get();
        }

        private c(Context context) {
            this.f3110a = this;
            l(context);
        }
    }

    public static v.a a() {
        return new b();
    }
}
