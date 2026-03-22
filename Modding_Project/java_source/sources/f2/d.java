package f2;

import com.facebook.cache.common.CacheEventListener;
/* compiled from: NoOpCacheEventListener.java */
/* loaded from: classes3.dex */
public class d implements CacheEventListener {

    /* renamed from: a  reason: collision with root package name */
    private static d f51596a;

    private d() {
    }

    public static synchronized d h() {
        d dVar;
        synchronized (d.class) {
            try {
                if (f51596a == null) {
                    f51596a = new d();
                }
                dVar = f51596a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return dVar;
    }

    @Override // com.facebook.cache.common.CacheEventListener
    public void a(com.facebook.cache.common.a aVar) {
    }

    @Override // com.facebook.cache.common.CacheEventListener
    public void b(com.facebook.cache.common.a aVar) {
    }

    @Override // com.facebook.cache.common.CacheEventListener
    public void c(com.facebook.cache.common.a aVar) {
    }

    @Override // com.facebook.cache.common.CacheEventListener
    public void d(com.facebook.cache.common.a aVar) {
    }

    @Override // com.facebook.cache.common.CacheEventListener
    public void e(com.facebook.cache.common.a aVar) {
    }

    @Override // com.facebook.cache.common.CacheEventListener
    public void f(com.facebook.cache.common.a aVar) {
    }

    @Override // com.facebook.cache.common.CacheEventListener
    public void g(com.facebook.cache.common.a aVar) {
    }
}
