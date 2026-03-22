package i5;

import j5.u;
import java.util.concurrent.Executor;
/* compiled from: DefaultScheduler_Factory.java */
/* loaded from: classes4.dex */
public final class d implements e5.b<c> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<Executor> f53307a;

    /* renamed from: b  reason: collision with root package name */
    private final ls.a<d5.d> f53308b;

    /* renamed from: c  reason: collision with root package name */
    private final ls.a<u> f53309c;

    /* renamed from: d  reason: collision with root package name */
    private final ls.a<k5.d> f53310d;

    /* renamed from: e  reason: collision with root package name */
    private final ls.a<l5.a> f53311e;

    public d(ls.a<Executor> aVar, ls.a<d5.d> aVar2, ls.a<u> aVar3, ls.a<k5.d> aVar4, ls.a<l5.a> aVar5) {
        this.f53307a = aVar;
        this.f53308b = aVar2;
        this.f53309c = aVar3;
        this.f53310d = aVar4;
        this.f53311e = aVar5;
    }

    public static d a(ls.a<Executor> aVar, ls.a<d5.d> aVar2, ls.a<u> aVar3, ls.a<k5.d> aVar4, ls.a<l5.a> aVar5) {
        return new d(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static c c(Executor executor, d5.d dVar, u uVar, k5.d dVar2, l5.a aVar) {
        return new c(executor, dVar, uVar, dVar2, aVar);
    }

    @Override // ls.a
    /* renamed from: b */
    public c get() {
        return c(this.f53307a.get(), this.f53308b.get(), this.f53309c.get(), this.f53310d.get(), this.f53311e.get());
    }
}
