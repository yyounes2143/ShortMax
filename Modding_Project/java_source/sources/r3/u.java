package r3;
/* compiled from: InstrumentedMemoryCacheBitmapMemoryCacheFactory.java */
/* loaded from: classes3.dex */
public class u {

    /* compiled from: InstrumentedMemoryCacheBitmapMemoryCacheFactory.java */
    /* loaded from: classes3.dex */
    class a implements y<f2.a> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ s f65536a;

        a(s sVar) {
            this.f65536a = sVar;
        }

        @Override // r3.y
        /* renamed from: d */
        public void a(f2.a aVar) {
            this.f65536a.h(aVar);
        }

        @Override // r3.y
        /* renamed from: e */
        public void b(f2.a aVar) {
            this.f65536a.g(aVar);
        }

        @Override // r3.y
        /* renamed from: f */
        public void c(f2.a aVar) {
            this.f65536a.j(aVar);
        }
    }

    public static t<f2.a, y3.e> a(w<f2.a, y3.e> wVar, s sVar) {
        sVar.n(wVar);
        return new t<>(wVar, new a(sVar));
    }
}
