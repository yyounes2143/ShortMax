package io.bidmachine.analytics.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.IBinder;
import io.bidmachine.analytics.internal.InterfaceC3328x;
import java.util.List;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.random.Random;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.TimeoutKt;
/* renamed from: io.bidmachine.analytics.internal.o  reason: case insensitive filesystem */
/* loaded from: classes7.dex */
public final class C3320o {

    /* renamed from: l  reason: collision with root package name */
    public static final i f54215l = new i(null);

    /* renamed from: m  reason: collision with root package name */
    private static final ms.i f54216m = kotlin.c.b(d.f54238a);

    /* renamed from: n  reason: collision with root package name */
    private static final ms.i f54217n = kotlin.c.b(e.f54239a);

    /* renamed from: o  reason: collision with root package name */
    private static final ms.i f54218o = kotlin.c.b(f.f54240a);

    /* renamed from: p  reason: collision with root package name */
    private static final ms.i f54219p = kotlin.c.b(b.f54236a);

    /* renamed from: q  reason: collision with root package name */
    private static final ms.i f54220q = kotlin.c.b(h.f54242a);

    /* renamed from: r  reason: collision with root package name */
    private static final ms.i f54221r = kotlin.c.b(c.f54237a);

    /* renamed from: s  reason: collision with root package name */
    private static final ms.i f54222s = kotlin.c.b(g.f54241a);

    /* renamed from: t  reason: collision with root package name */
    private static final ms.i f54223t = kotlin.c.b(a.f54235a);

    /* renamed from: a  reason: collision with root package name */
    private final Context f54224a;

    /* renamed from: b  reason: collision with root package name */
    private volatile C3321p f54225b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f54226c;

    /* renamed from: d  reason: collision with root package name */
    private volatile boolean f54227d;

    /* renamed from: e  reason: collision with root package name */
    private final ms.i f54228e = kotlin.c.b(C0786o.f54249a);

    /* renamed from: f  reason: collision with root package name */
    private final ms.i f54229f = kotlin.c.b(new l());

    /* renamed from: g  reason: collision with root package name */
    private final ms.i f54230g = kotlin.c.b(new m());

    /* renamed from: h  reason: collision with root package name */
    private final ms.i f54231h = kotlin.c.b(new n());

    /* renamed from: i  reason: collision with root package name */
    private final ms.i f54232i = kotlin.c.b(new p());

    /* renamed from: j  reason: collision with root package name */
    private final ms.i f54233j = kotlin.c.b(new j());

    /* renamed from: k  reason: collision with root package name */
    private final ServiceConnection f54234k = new q();

    /* renamed from: io.bidmachine.analytics.internal.o$a */
    /* loaded from: classes7.dex */
    static final class a extends Lambda implements Function0 {

        /* renamed from: a  reason: collision with root package name */
        public static final a f54235a = new a();

        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final String invoke() {
            return s0.a("cGxheUJpbGxpbmdMaWJyYXJ5VmVyc2lvbg==");
        }
    }

    /* renamed from: io.bidmachine.analytics.internal.o$b */
    /* loaded from: classes7.dex */
    static final class b extends Lambda implements Function0 {

        /* renamed from: a  reason: collision with root package name */
        public static final b f54236a = new b();

        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final String invoke() {
            return s0.a("VkVSU0lPTl9OQU1F");
        }
    }

    /* renamed from: io.bidmachine.analytics.internal.o$c */
    /* loaded from: classes7.dex */
    static final class c extends Lambda implements Function0 {

        /* renamed from: a  reason: collision with root package name */
        public static final c f54237a = new c();

        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final String invoke() {
            return s0.a("Y29tLmFuZHJvaWQudmVuZGluZy5iaWxsaW5nLkluQXBwQmlsbGluZ1NlcnZpY2UuQklORA==");
        }
    }

    /* renamed from: io.bidmachine.analytics.internal.o$d */
    /* loaded from: classes7.dex */
    static final class d extends Lambda implements Function0 {

        /* renamed from: a  reason: collision with root package name */
        public static final d f54238a = new d();

        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final String invoke() {
            return s0.a("Y29tLmFuZHJvaWQuYmlsbGluZ2NsaWVudC5CdWlsZENvbmZpZw==");
        }
    }

    /* renamed from: io.bidmachine.analytics.internal.o$e */
    /* loaded from: classes7.dex */
    static final class e extends Lambda implements Function0 {

        /* renamed from: a  reason: collision with root package name */
        public static final e f54239a = new e();

        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final String invoke() {
            return s0.a("Y29tLmFuZHJvaWQuYmlsbGluZ2NsaWVudC5rdHguQnVpbGRDb25maWc=");
        }
    }

    /* renamed from: io.bidmachine.analytics.internal.o$f */
    /* loaded from: classes7.dex */
    static final class f extends Lambda implements Function0 {

        /* renamed from: a  reason: collision with root package name */
        public static final f f54240a = new f();

        f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final String invoke() {
            return s0.a("Y29tLmdvb2dsZS5hbmRyb2lkLnBsYXkuYmlsbGluZ2NsaWVudC52ZXJzaW9u");
        }
    }

    /* renamed from: io.bidmachine.analytics.internal.o$g */
    /* loaded from: classes7.dex */
    static final class g extends Lambda implements Function0 {

        /* renamed from: a  reason: collision with root package name */
        public static final g f54241a = new g();

        g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final String invoke() {
            return s0.a("Y29tLmFuZHJvaWQudmVuZGluZw==");
        }
    }

    /* renamed from: io.bidmachine.analytics.internal.o$h */
    /* loaded from: classes7.dex */
    static final class h extends Lambda implements Function0 {

        /* renamed from: a  reason: collision with root package name */
        public static final h f54242a = new h();

        h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final String invoke() {
            return s0.a("Y29tLmFuZHJvaWQudmVuZGluZy5CSUxMSU5H");
        }
    }

    /* renamed from: io.bidmachine.analytics.internal.o$i */
    /* loaded from: classes7.dex */
    public static final class i {
        public /* synthetic */ i(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return (String) C3320o.f54223t.getValue();
        }

        public final String b() {
            return (String) C3320o.f54219p.getValue();
        }

        public final String c() {
            return (String) C3320o.f54221r.getValue();
        }

        public final String d() {
            return (String) C3320o.f54216m.getValue();
        }

        public final String e() {
            return (String) C3320o.f54217n.getValue();
        }

        public final String f() {
            return (String) C3320o.f54218o.getValue();
        }

        public final String g() {
            return (String) C3320o.f54222s.getValue();
        }

        public final String h() {
            return (String) C3320o.f54220q.getValue();
        }

        private i() {
        }
    }

    /* renamed from: io.bidmachine.analytics.internal.o$j */
    /* loaded from: classes7.dex */
    static final class j extends Lambda implements Function0 {
        j() {
            super(0);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x003a  */
        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final io.bidmachine.analytics.internal.t0 invoke() {
            /*
                r4 = this;
                io.bidmachine.analytics.internal.o r0 = io.bidmachine.analytics.internal.C3320o.this
                r1 = 0
                kotlin.Result$a r2 = kotlin.Result.f60901b     // Catch: java.lang.Throwable -> L14
                java.lang.String r2 = io.bidmachine.analytics.internal.C3320o.f(r0)     // Catch: java.lang.Throwable -> L14
                if (r2 == 0) goto L16
                io.bidmachine.analytics.internal.t0$a r3 = io.bidmachine.analytics.internal.t0.f54333d     // Catch: java.lang.Throwable -> L14
                io.bidmachine.analytics.internal.t0 r2 = r3.a(r2)     // Catch: java.lang.Throwable -> L14
                if (r2 != 0) goto L24
                goto L16
            L14:
                r0 = move-exception
                goto L29
            L16:
                java.lang.String r0 = io.bidmachine.analytics.internal.C3320o.d(r0)     // Catch: java.lang.Throwable -> L14
                if (r0 == 0) goto L23
                io.bidmachine.analytics.internal.t0$a r2 = io.bidmachine.analytics.internal.t0.f54333d     // Catch: java.lang.Throwable -> L14
                io.bidmachine.analytics.internal.t0 r2 = r2.a(r0)     // Catch: java.lang.Throwable -> L14
                goto L24
            L23:
                r2 = r1
            L24:
                java.lang.Object r0 = kotlin.Result.d(r2)     // Catch: java.lang.Throwable -> L14
                goto L33
            L29:
                kotlin.Result$a r2 = kotlin.Result.f60901b
                java.lang.Object r0 = kotlin.f.a(r0)
                java.lang.Object r0 = kotlin.Result.d(r0)
            L33:
                boolean r2 = kotlin.Result.i(r0)
                if (r2 == 0) goto L3a
                goto L3b
            L3a:
                r1 = r0
            L3b:
                io.bidmachine.analytics.internal.t0 r1 = (io.bidmachine.analytics.internal.t0) r1
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.analytics.internal.C3320o.j.invoke():io.bidmachine.analytics.internal.t0");
        }
    }

    /* renamed from: io.bidmachine.analytics.internal.o$k */
    /* loaded from: classes7.dex */
    static final class k extends SuspendLambda implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f54244a;

        k(rs.c cVar) {
            super(2, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c cVar) {
            return ((k) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c create(Object obj, rs.c cVar) {
            return new k(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f54244a;
            if (i10 != 0 && i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.f.b(obj);
            while (C3320o.this.f54225b == null) {
                this.f54244a = 1;
                if (DelayKt.b(100L, this) == f10) {
                    return f10;
                }
            }
            C3321p c3321p = C3320o.this.f54225b;
            if (c3321p != null) {
                return c3321p.s();
            }
            return null;
        }
    }

    /* renamed from: io.bidmachine.analytics.internal.o$l */
    /* loaded from: classes7.dex */
    static final class l extends Lambda implements Function0 {
        l() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final String invoke() {
            return C3320o.this.a(C3320o.f54215l.d());
        }
    }

    /* renamed from: io.bidmachine.analytics.internal.o$m */
    /* loaded from: classes7.dex */
    static final class m extends Lambda implements Function0 {
        m() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final String invoke() {
            return C3320o.this.a(C3320o.f54215l.e());
        }
    }

    /* renamed from: io.bidmachine.analytics.internal.o$n */
    /* loaded from: classes7.dex */
    static final class n extends Lambda implements Function0 {
        n() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final String invoke() {
            return C3320o.this.m();
        }
    }

    /* renamed from: io.bidmachine.analytics.internal.o$o  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    static final class C0786o extends Lambda implements Function0 {

        /* renamed from: a  reason: collision with root package name */
        public static final C0786o f54249a = new C0786o();

        C0786o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final Random invoke() {
            return kotlin.random.d.a(System.nanoTime());
        }
    }

    /* renamed from: io.bidmachine.analytics.internal.o$p */
    /* loaded from: classes7.dex */
    static final class p extends Lambda implements Function0 {
        p() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final String invoke() {
            String o10 = C3320o.this.o();
            if (o10 == null) {
                String n10 = C3320o.this.n();
                if (n10 == null) {
                    return C3320o.this.p();
                }
                return n10;
            }
            return o10;
        }
    }

    /* renamed from: io.bidmachine.analytics.internal.o$q */
    /* loaded from: classes7.dex */
    public static final class q implements ServiceConnection {
        q() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C3321p c3321p;
            boolean z10;
            t0 l10 = C3320o.this.l();
            if (l10 != null) {
                C3320o c3320o = C3320o.this;
                String r10 = c3320o.r();
                if (r10 != null) {
                    C3320o c3320o2 = C3320o.this;
                    c3321p = new C3321p(new InterfaceC3328x.a(iBinder, InterfaceC3328x.a.f54339d.a(l10), null, 4, null), c3320o2.f54224a.getPackageName(), l10, r10, c3320o2.q().i());
                } else {
                    c3321p = null;
                }
                c3320o.f54225b = c3321p;
                C3320o c3320o3 = C3320o.this;
                if (c3320o3.f54225b != null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                c3320o3.f54226c = z10;
                return;
            }
            throw new IllegalArgumentException("Version not found in connected callback");
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C3320o.this.f54226c = false;
            C3320o.this.f54225b = null;
        }
    }

    public C3320o(Context context) {
        this.f54224a = context;
    }

    private final Intent k() {
        i iVar = f54215l;
        Intent intent = new Intent(iVar.c());
        intent.setPackage(iVar.g());
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String m() {
        Object d10;
        String str;
        String str2 = null;
        try {
            Result.a aVar = Result.f60901b;
            Bundle bundle = this.f54224a.getPackageManager().getApplicationInfo(this.f54224a.getPackageName(), 128).metaData;
            if (bundle != null) {
                str = bundle.getString(f54215l.f());
            } else {
                str = null;
            }
            d10 = Result.d(str);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(kotlin.f.a(th2));
        }
        if (!Result.i(d10)) {
            str2 = d10;
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String n() {
        return (String) this.f54229f.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String o() {
        return (String) this.f54230g.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String p() {
        return (String) this.f54231h.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Random q() {
        return (Random) this.f54228e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String r() {
        return (String) this.f54232i.getValue();
    }

    private final ComponentName s() {
        ServiceInfo serviceInfo;
        List<ResolveInfo> queryIntentServices = this.f54224a.getPackageManager().queryIntentServices(k(), 0);
        if (queryIntentServices.isEmpty() || (serviceInfo = queryIntentServices.get(0).serviceInfo) == null) {
            return null;
        }
        String str = serviceInfo.packageName;
        String str2 = serviceInfo.name;
        if (!Intrinsics.areEqual(f54215l.g(), str) || str2 == null) {
            return null;
        }
        return new ComponentName(str, str2);
    }

    public final void i() {
        ComponentName s10 = s();
        if (s10 != null) {
            String r10 = r();
            if (r10 != null) {
                Context context = this.f54224a;
                Intent k10 = k();
                k10.setComponent(s10);
                k10.putExtra(f54215l.a(), r10);
                if (context.bindService(k10, this.f54234k, 1)) {
                    this.f54227d = true;
                    return;
                }
                throw new IllegalStateException("Can't connect");
            }
            throw new IllegalArgumentException("Library version not found");
        }
        throw new IllegalArgumentException("Component name not found");
    }

    public final void j() {
        if (this.f54227d) {
            this.f54224a.unbindService(this.f54234k);
        }
        this.f54227d = false;
    }

    public final t0 l() {
        return (t0) this.f54233j.getValue();
    }

    public final boolean t() {
        if (this.f54224a.getPackageManager().checkPermission(f54215l.h(), this.f54224a.getPackageName()) == 0) {
            return true;
        }
        return false;
    }

    public final boolean u() {
        if (s() != null) {
            return true;
        }
        return false;
    }

    public final Object a(long j10, rs.c cVar) {
        return TimeoutKt.e(j10, new k(null), cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String a(String str) {
        Object d10;
        try {
            Result.a aVar = Result.f60901b;
            Object obj = Class.forName(str).getField(f54215l.b()).get(null);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
            d10 = Result.d((String) obj);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(kotlin.f.a(th2));
        }
        return Result.i(d10) ? null : d10;
    }
}
