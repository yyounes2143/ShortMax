package t3;

import com.facebook.cache.disk.c;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* compiled from: DiskStorageCacheFactory.java */
/* loaded from: classes3.dex */
public class l implements p {

    /* renamed from: a  reason: collision with root package name */
    private m f66867a;

    public l(m mVar) {
        this.f66867a = mVar;
    }

    private static com.facebook.cache.disk.c b(g2.b bVar, com.facebook.cache.disk.b bVar2) {
        return c(bVar, bVar2, Executors.newSingleThreadExecutor());
    }

    private static com.facebook.cache.disk.c c(g2.b bVar, com.facebook.cache.disk.b bVar2, Executor executor) {
        return new com.facebook.cache.disk.c(bVar2, bVar.h(), new c.C0259c(bVar.k(), bVar.j(), bVar.f()), bVar.e(), bVar.d(), bVar.g(), executor, bVar.i());
    }

    @Override // t3.p
    public g2.e a(g2.b bVar) {
        return b(bVar, this.f66867a.a(bVar));
    }
}
