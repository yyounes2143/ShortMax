package c5;

import android.content.Context;
import androidx.annotation.RestrictTo;
import c5.i;
import java.util.Collections;
import java.util.Set;
/* compiled from: TransportRuntime.java */
/* loaded from: classes4.dex */
public class u implements t {

    /* renamed from: e  reason: collision with root package name */
    private static volatile v f3138e;

    /* renamed from: a  reason: collision with root package name */
    private final m5.a f3139a;

    /* renamed from: b  reason: collision with root package name */
    private final m5.a f3140b;

    /* renamed from: c  reason: collision with root package name */
    private final i5.e f3141c;

    /* renamed from: d  reason: collision with root package name */
    private final j5.o f3142d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(m5.a aVar, m5.a aVar2, i5.e eVar, j5.o oVar, j5.s sVar) {
        this.f3139a = aVar;
        this.f3140b = aVar2;
        this.f3141c = eVar;
        this.f3142d = oVar;
        sVar.c();
    }

    private i b(o oVar) {
        i.a g10 = i.a().i(this.f3139a.getTime()).o(this.f3140b.getTime()).n(oVar.g()).h(new h(oVar.b(), oVar.d())).g(oVar.c().a());
        if (oVar.c().e() != null && oVar.c().e().a() != null) {
            g10.l(oVar.c().e().a());
        }
        oVar.c().b();
        return g10.d();
    }

    public static u c() {
        v vVar = f3138e;
        if (vVar != null) {
            return vVar.k();
        }
        throw new IllegalStateException("Not initialized!");
    }

    private static Set<a5.c> d(f fVar) {
        if (fVar instanceof g) {
            return Collections.unmodifiableSet(((g) fVar).a());
        }
        return Collections.singleton(a5.c.b("proto"));
    }

    public static void f(Context context) {
        if (f3138e == null) {
            synchronized (u.class) {
                try {
                    if (f3138e == null) {
                        f3138e = e.a().a(context).build();
                    }
                } finally {
                }
            }
        }
    }

    @Override // c5.t
    public void a(o oVar, a5.j jVar) {
        this.f3141c.a(oVar.f().f(oVar.c().d()), b(oVar), jVar);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public j5.o e() {
        return this.f3142d;
    }

    public a5.i g(f fVar) {
        return new q(d(fVar), p.a().b(fVar.getName()).c(fVar.getExtras()).a(), this);
    }
}
