package j5;

import java.util.concurrent.Executor;
/* compiled from: WorkInitializer_Factory.java */
/* loaded from: classes4.dex */
public final class t implements e5.b<s> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<Executor> f60209a;

    /* renamed from: b  reason: collision with root package name */
    private final ls.a<k5.d> f60210b;

    /* renamed from: c  reason: collision with root package name */
    private final ls.a<u> f60211c;

    /* renamed from: d  reason: collision with root package name */
    private final ls.a<l5.a> f60212d;

    public t(ls.a<Executor> aVar, ls.a<k5.d> aVar2, ls.a<u> aVar3, ls.a<l5.a> aVar4) {
        this.f60209a = aVar;
        this.f60210b = aVar2;
        this.f60211c = aVar3;
        this.f60212d = aVar4;
    }

    public static t a(ls.a<Executor> aVar, ls.a<k5.d> aVar2, ls.a<u> aVar3, ls.a<l5.a> aVar4) {
        return new t(aVar, aVar2, aVar3, aVar4);
    }

    public static s c(Executor executor, k5.d dVar, u uVar, l5.a aVar) {
        return new s(executor, dVar, uVar, aVar);
    }

    @Override // ls.a
    /* renamed from: b */
    public s get() {
        return c(this.f60209a.get(), this.f60210b.get(), this.f60211c.get(), this.f60212d.get());
    }
}
