package j9;
/* compiled from: EventGDTLogger_Factory.java */
/* loaded from: classes5.dex */
public final class h implements l9.b<f> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<w8.b<a5.i>> f60306a;

    public h(ls.a<w8.b<a5.i>> aVar) {
        this.f60306a = aVar;
    }

    public static h a(ls.a<w8.b<a5.i>> aVar) {
        return new h(aVar);
    }

    public static f c(w8.b<a5.i> bVar) {
        return new f(bVar);
    }

    @Override // ls.a
    /* renamed from: b */
    public f get() {
        return c(this.f60306a.get());
    }
}
