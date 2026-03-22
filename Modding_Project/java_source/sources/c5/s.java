package c5;
/* compiled from: TransportImpl.java */
/* loaded from: classes4.dex */
final class s<T> implements a5.h<T> {

    /* renamed from: a  reason: collision with root package name */
    private final p f3133a;

    /* renamed from: b  reason: collision with root package name */
    private final String f3134b;

    /* renamed from: c  reason: collision with root package name */
    private final a5.c f3135c;

    /* renamed from: d  reason: collision with root package name */
    private final a5.g<T, byte[]> f3136d;

    /* renamed from: e  reason: collision with root package name */
    private final t f3137e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(p pVar, String str, a5.c cVar, a5.g<T, byte[]> gVar, t tVar) {
        this.f3133a = pVar;
        this.f3134b = str;
        this.f3135c = cVar;
        this.f3136d = gVar;
        this.f3137e = tVar;
    }

    @Override // a5.h
    public void a(a5.d<T> dVar, a5.j jVar) {
        this.f3137e.a(o.a().e(this.f3133a).c(dVar).f(this.f3134b).d(this.f3136d).b(this.f3135c).a(), jVar);
    }

    @Override // a5.h
    public void b(a5.d<T> dVar) {
        a(dVar, new a5.j() { // from class: c5.r
            @Override // a5.j
            public final void a(Exception exc) {
                s.e(exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p d() {
        return this.f3133a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(Exception exc) {
    }
}
