package c5;
/* compiled from: TransportRuntime_Factory.java */
/* loaded from: classes4.dex */
public final class w implements e5.b<u> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<m5.a> f3143a;

    /* renamed from: b  reason: collision with root package name */
    private final ls.a<m5.a> f3144b;

    /* renamed from: c  reason: collision with root package name */
    private final ls.a<i5.e> f3145c;

    /* renamed from: d  reason: collision with root package name */
    private final ls.a<j5.o> f3146d;

    /* renamed from: e  reason: collision with root package name */
    private final ls.a<j5.s> f3147e;

    public w(ls.a<m5.a> aVar, ls.a<m5.a> aVar2, ls.a<i5.e> aVar3, ls.a<j5.o> aVar4, ls.a<j5.s> aVar5) {
        this.f3143a = aVar;
        this.f3144b = aVar2;
        this.f3145c = aVar3;
        this.f3146d = aVar4;
        this.f3147e = aVar5;
    }

    public static w a(ls.a<m5.a> aVar, ls.a<m5.a> aVar2, ls.a<i5.e> aVar3, ls.a<j5.o> aVar4, ls.a<j5.s> aVar5) {
        return new w(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static u c(m5.a aVar, m5.a aVar2, i5.e eVar, j5.o oVar, j5.s sVar) {
        return new u(aVar, aVar2, eVar, oVar, sVar);
    }

    @Override // ls.a
    /* renamed from: b */
    public u get() {
        return c(this.f3143a.get(), this.f3144b.get(), this.f3145c.get(), this.f3146d.get(), this.f3147e.get());
    }
}
