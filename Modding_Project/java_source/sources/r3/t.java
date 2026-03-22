package r3;
/* compiled from: InstrumentedMemoryCache.java */
/* loaded from: classes3.dex */
public class t<K, V> implements w<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final w<K, V> f65534a;

    /* renamed from: b  reason: collision with root package name */
    private final y f65535b;

    public t(w<K, V> wVar, y yVar) {
        this.f65534a = wVar;
        this.f65535b = yVar;
    }

    @Override // r3.w
    public void a(K k10) {
        this.f65534a.a(k10);
    }

    @Override // r3.w
    public int b(k2.i<K> iVar) {
        return this.f65534a.b(iVar);
    }

    @Override // r3.w
    public o2.a<V> d(K k10, o2.a<V> aVar) {
        this.f65535b.c(k10);
        return this.f65534a.d(k10, aVar);
    }

    @Override // r3.w
    public o2.a<V> get(K k10) {
        o2.a<V> aVar = this.f65534a.get(k10);
        if (aVar == null) {
            this.f65535b.b(k10);
        } else {
            this.f65535b.a(k10);
        }
        return aVar;
    }
}
