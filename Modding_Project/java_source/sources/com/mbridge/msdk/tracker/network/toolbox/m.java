package com.mbridge.msdk.tracker.network.toolbox;

import androidx.collection.SieveCacheKt;
import com.bytedance.applog.log.LogUtils;
import com.mbridge.msdk.foundation.same.net.MBridgeHostnameVerifier;
import com.mbridge.msdk.thrid.okhttp.t;
import com.mbridge.msdk.thrid.okhttp.u;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.x;
import com.mbridge.msdk.thrid.okhttp.y;
import com.mbridge.msdk.thrid.okhttp.z;
import com.mbridge.msdk.tracker.network.p;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: OKHttpStack.java */
/* loaded from: classes6.dex */
public class m extends a {

    /* renamed from: a  reason: collision with root package name */
    private final t f30377a = a();

    private static x a(com.mbridge.msdk.tracker.network.t tVar) {
        byte[] b10;
        if (tVar == null || (b10 = tVar.b()) == null) {
            return null;
        }
        return x.a(null, b10);
    }

    @Override // com.mbridge.msdk.tracker.network.toolbox.a
    public g a(com.mbridge.msdk.tracker.network.t<?> tVar, Map<String, String> map) throws IOException {
        p h10 = tVar.h();
        if (this.f30377a != null) {
            int q10 = tVar.q() <= 0 ? 30000 : tVar.q();
            long r10 = tVar.r();
            String a10 = tVar.g() == 0 ? d.a(tVar.t(), tVar) : tVar.t();
            if (h10 != null) {
                h10.f(a10);
                long j10 = q10;
                h10.e(j10);
                h10.f(j10);
                h10.j(j10);
                h10.a(tVar.n());
            }
            a(tVar, h10);
            ArrayList arrayList = new ArrayList();
            arrayList.add(u.HTTP_1_1);
            arrayList.add(u.HTTP_2);
            t.b a11 = this.f30377a.s().a(arrayList).a(new MBridgeHostnameVerifier(a10));
            long j11 = q10;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            t.b a12 = a11.d(j11, timeUnit).b(j11, timeUnit).a(h10 == null ? com.mbridge.msdk.thrid.okhttp.m.f29981a : new j(h10.H(), h10.b(), h10)).e(j11, timeUnit).a(Math.max(r10, 0L), timeUnit);
            a(h10, a12);
            w.a aVar = new w.a();
            for (Map.Entry<String, String> entry : tVar.f().entrySet()) {
                aVar.a(entry.getKey(), entry.getValue());
            }
            aVar.a("Connection", "close");
            a(aVar, tVar);
            y d10 = a12.a().a(aVar.b(a10).a()).d();
            com.mbridge.msdk.thrid.okhttp.p m10 = d10.m();
            ArrayList arrayList2 = new ArrayList();
            int b10 = m10.b();
            for (int i10 = 0; i10 < b10; i10++) {
                String a13 = m10.a(i10);
                String b11 = m10.b(i10);
                if (a13 != null) {
                    arrayList2.add(new com.mbridge.msdk.tracker.network.g(a13, b11));
                }
            }
            z d11 = d10.d();
            if (d11 == null) {
                return new g(d10.k(), arrayList2);
            }
            return new g(d10.k(), arrayList2, a(d11), d11.d());
        }
        throw new IOException("okhttp client is null");
    }

    private static void a(p pVar, t.b bVar) {
        if (pVar == null || bVar == null) {
            return;
        }
        try {
            bVar.a(new OKHTTPEventListener(pVar));
        } catch (Exception unused) {
        }
    }

    private static void a(com.mbridge.msdk.tracker.network.t<?> tVar, p pVar) {
        if (pVar == null || tVar == null) {
            return;
        }
        try {
            pVar.g(tVar.m());
        } catch (Exception unused) {
        }
    }

    private int a(z zVar) {
        if (zVar == null) {
            return 0;
        }
        if (zVar.h() > SieveCacheKt.NodeLinkMask) {
            return -1;
        }
        return (int) zVar.h();
    }

    private t a() {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        com.mbridge.msdk.thrid.okhttp.l lVar = new com.mbridge.msdk.thrid.okhttp.l(new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, timeUnit, new SynchronousQueue(), com.mbridge.msdk.thrid.okhttp.internal.c.a("OkHttp Dispatcher", false)));
        lVar.b(50);
        lVar.a(256);
        t.b bVar = new t.b();
        bVar.d(30L, timeUnit);
        bVar.b(30L, timeUnit);
        bVar.e(30L, timeUnit);
        bVar.a(true);
        bVar.a(new com.mbridge.msdk.thrid.okhttp.h(32, 5L, TimeUnit.MINUTES));
        bVar.a(lVar);
        return bVar.a();
    }

    private static void a(w.a aVar, com.mbridge.msdk.tracker.network.t<?> tVar) throws IOException {
        switch (tVar.g()) {
            case 0:
                aVar.c();
                return;
            case 1:
                x a10 = a(tVar);
                if (a10 != null) {
                    aVar.c(a10);
                    return;
                }
                throw new IOException("can't create request body for post");
            case 2:
                x a11 = a(tVar);
                if (a11 != null) {
                    aVar.d(a11);
                    return;
                }
                throw new IOException("can't create request body for put");
            case 3:
                aVar.b();
                return;
            case 4:
                aVar.d();
                return;
            case 5:
                aVar.a("OPTIONS", (x) null);
                return;
            case 6:
                aVar.a(LogUtils.EVENT_TYPE_TRACE, (x) null);
                return;
            case 7:
                x a12 = a(tVar);
                if (a12 != null) {
                    aVar.b(a12);
                    return;
                }
                throw new IOException("can't create request body for patch");
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }
}
