package r3;

import androidx.annotation.VisibleForTesting;
/* compiled from: CountingMemoryCache.java */
/* loaded from: classes3.dex */
public interface m<K, V> extends w<K, V>, n2.b {

    /* compiled from: CountingMemoryCache.java */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class a<K, V> {

        /* renamed from: a  reason: collision with root package name */
        public final K f65521a;

        /* renamed from: b  reason: collision with root package name */
        public final o2.a<V> f65522b;

        /* renamed from: e  reason: collision with root package name */
        public final b<K> f65525e;

        /* renamed from: g  reason: collision with root package name */
        public int f65527g;

        /* renamed from: c  reason: collision with root package name */
        public int f65523c = 0;

        /* renamed from: d  reason: collision with root package name */
        public boolean f65524d = false;

        /* renamed from: f  reason: collision with root package name */
        public int f65526f = 0;

        private a(K k10, o2.a<V> aVar, b<K> bVar, int i10) {
            this.f65521a = (K) k2.h.g(k10);
            this.f65522b = (o2.a) k2.h.g(o2.a.p(aVar));
            this.f65525e = bVar;
            this.f65527g = i10;
        }

        @VisibleForTesting
        public static <K, V> a<K, V> a(K k10, o2.a<V> aVar, int i10, b<K> bVar) {
            return new a<>(k10, aVar, bVar, i10);
        }

        @VisibleForTesting
        public static <K, V> a<K, V> b(K k10, o2.a<V> aVar, b<K> bVar) {
            return a(k10, aVar, -1, bVar);
        }
    }

    /* compiled from: CountingMemoryCache.java */
    /* loaded from: classes3.dex */
    public interface b<K> {
        void a(K k10, boolean z10);
    }

    o2.a<V> c(K k10);

    o2.a<V> e(K k10, o2.a<V> aVar, b<K> bVar);
}
