package c5;

import java.util.Set;
/* compiled from: TransportFactoryImpl.java */
/* loaded from: classes4.dex */
final class q implements a5.i {

    /* renamed from: a  reason: collision with root package name */
    private final Set<a5.c> f3130a;

    /* renamed from: b  reason: collision with root package name */
    private final p f3131b;

    /* renamed from: c  reason: collision with root package name */
    private final t f3132c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(Set<a5.c> set, p pVar, t tVar) {
        this.f3130a = set;
        this.f3131b = pVar;
        this.f3132c = tVar;
    }

    @Override // a5.i
    public <T> a5.h<T> a(String str, Class<T> cls, a5.c cVar, a5.g<T, byte[]> gVar) {
        if (this.f3130a.contains(cVar)) {
            return new s(this.f3131b, str, cVar, gVar, this.f3132c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", cVar, this.f3130a));
    }
}
