package r3;

import com.facebook.common.memory.PooledByteBuffer;
/* compiled from: EncodedMemoryCacheFactory.java */
/* loaded from: classes3.dex */
public class r {

    /* compiled from: EncodedMemoryCacheFactory.java */
    /* loaded from: classes3.dex */
    class a implements y<f2.a> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ s f65533a;

        a(s sVar) {
            this.f65533a = sVar;
        }

        @Override // r3.y
        /* renamed from: d */
        public void a(f2.a aVar) {
            this.f65533a.d(aVar);
        }

        @Override // r3.y
        /* renamed from: e */
        public void b(f2.a aVar) {
            this.f65533a.a(aVar);
        }

        @Override // r3.y
        /* renamed from: f */
        public void c(f2.a aVar) {
            this.f65533a.f(aVar);
        }
    }

    public static t<f2.a, PooledByteBuffer> a(w<f2.a, PooledByteBuffer> wVar, s sVar) {
        sVar.m(wVar);
        return new t<>(wVar, new a(sVar));
    }
}
