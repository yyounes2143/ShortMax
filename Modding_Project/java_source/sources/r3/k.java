package r3;

import r3.m;
import r3.w;
/* compiled from: CountingLruBitmapMemoryCacheFactory.java */
/* loaded from: classes3.dex */
public class k implements r3.a {

    /* compiled from: CountingLruBitmapMemoryCacheFactory.java */
    /* loaded from: classes3.dex */
    class a implements c0<y3.e> {
        a() {
        }

        @Override // r3.c0
        /* renamed from: b */
        public int a(y3.e eVar) {
            return eVar.getSizeInBytes();
        }
    }

    @Override // r3.a
    public m<f2.a, y3.e> a(k2.k<x> kVar, n2.c cVar, w.a aVar, boolean z10, boolean z11, m.b<f2.a> bVar) {
        v vVar = new v(new a(), aVar, kVar, bVar, z10, z11);
        cVar.a(vVar);
        return vVar;
    }
}
