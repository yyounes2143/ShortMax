package r3;

import com.facebook.common.memory.PooledByteBuffer;
import r3.w;
/* compiled from: EncodedCountingMemoryCacheFactory.java */
/* loaded from: classes3.dex */
public class q {

    /* compiled from: EncodedCountingMemoryCacheFactory.java */
    /* loaded from: classes3.dex */
    class a implements c0<PooledByteBuffer> {
        a() {
        }

        @Override // r3.c0
        /* renamed from: b */
        public int a(PooledByteBuffer pooledByteBuffer) {
            return pooledByteBuffer.size();
        }
    }

    public static m<f2.a, PooledByteBuffer> a(k2.k<x> kVar, n2.c cVar, w.a aVar) {
        v vVar = new v(new a(), aVar, kVar, null, false, false);
        cVar.a(vVar);
        return vVar;
    }
}
