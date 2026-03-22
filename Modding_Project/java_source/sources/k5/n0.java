package k5;
/* compiled from: SQLiteEventStore_Factory.java */
/* loaded from: classes4.dex */
public final class n0 implements e5.b<m0> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<m5.a> f60633a;

    /* renamed from: b  reason: collision with root package name */
    private final ls.a<m5.a> f60634b;

    /* renamed from: c  reason: collision with root package name */
    private final ls.a<e> f60635c;

    /* renamed from: d  reason: collision with root package name */
    private final ls.a<v0> f60636d;

    /* renamed from: e  reason: collision with root package name */
    private final ls.a<String> f60637e;

    public n0(ls.a<m5.a> aVar, ls.a<m5.a> aVar2, ls.a<e> aVar3, ls.a<v0> aVar4, ls.a<String> aVar5) {
        this.f60633a = aVar;
        this.f60634b = aVar2;
        this.f60635c = aVar3;
        this.f60636d = aVar4;
        this.f60637e = aVar5;
    }

    public static n0 a(ls.a<m5.a> aVar, ls.a<m5.a> aVar2, ls.a<e> aVar3, ls.a<v0> aVar4, ls.a<String> aVar5) {
        return new n0(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static m0 c(m5.a aVar, m5.a aVar2, Object obj, Object obj2, ls.a<String> aVar3) {
        return new m0(aVar, aVar2, (e) obj, (v0) obj2, aVar3);
    }

    @Override // ls.a
    /* renamed from: b */
    public m0 get() {
        return c(this.f60633a.get(), this.f60634b.get(), this.f60635c.get(), this.f60636d.get(), this.f60637e);
    }
}
