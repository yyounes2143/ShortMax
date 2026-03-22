package io.bidmachine.media3.exoplayer.drm;

import android.net.Uri;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.common.collect.y;
import com.google.common.primitives.Ints;
import en.d;
import en.i;
import io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager;
import java.util.Map;
import zm.q;
/* compiled from: DefaultDrmSessionManagerProvider.java */
/* loaded from: classes8.dex */
public final class g implements ln.k {

    /* renamed from: a  reason: collision with root package name */
    private final Object f55857a = new Object();
    @GuardedBy("lock")

    /* renamed from: b  reason: collision with root package name */
    private q.f f55858b;
    @GuardedBy("lock")

    /* renamed from: c  reason: collision with root package name */
    private i f55859c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private d.a f55860d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f55861e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private io.bidmachine.media3.exoplayer.upstream.b f55862f;

    private i b(q.f fVar) {
        String uri;
        d.a aVar = this.f55860d;
        if (aVar == null) {
            aVar = new i.b().b(this.f55861e);
        }
        Uri uri2 = fVar.f72043c;
        if (uri2 == null) {
            uri = null;
        } else {
            uri = uri2.toString();
        }
        o oVar = new o(uri, fVar.f72048h, aVar);
        y<Map.Entry<String, String>> it = fVar.f72045e.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            oVar.c(next.getKey(), next.getValue());
        }
        DefaultDrmSessionManager.b e10 = new DefaultDrmSessionManager.b().f(fVar.f72041a, n.f55876d).c(fVar.f72046f).d(fVar.f72047g).e(Ints.m(fVar.f72050j));
        io.bidmachine.media3.exoplayer.upstream.b bVar = this.f55862f;
        if (bVar != null) {
            e10.b(bVar);
        }
        DefaultDrmSessionManager a10 = e10.a(oVar);
        a10.E(0, fVar.c());
        return a10;
    }

    @Override // ln.k
    public i a(q qVar) {
        i iVar;
        cn.a.e(qVar.f71992b);
        q.f fVar = qVar.f71992b.f72086c;
        if (fVar == null) {
            return i.f55868a;
        }
        synchronized (this.f55857a) {
            try {
                if (!fVar.equals(this.f55858b)) {
                    this.f55858b = fVar;
                    this.f55859c = b(fVar);
                }
                iVar = (i) cn.a.e(this.f55859c);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iVar;
    }
}
