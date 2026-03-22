package com.facebook.imagepipeline.producers;

import android.net.Uri;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.time.RealtimeSinceBootClock;
import com.facebook.imagepipeline.producers.v0;
import com.mbridge.msdk.foundation.download.Command;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
/* compiled from: HttpUrlConnectionNetworkFetcher.java */
/* loaded from: classes3.dex */
public class d0 extends d<c> {

    /* renamed from: a  reason: collision with root package name */
    private int f15743a;

    /* renamed from: b  reason: collision with root package name */
    private String f15744b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, String> f15745c;

    /* renamed from: d  reason: collision with root package name */
    private final ExecutorService f15746d;

    /* renamed from: e  reason: collision with root package name */
    private final q2.b f15747e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: HttpUrlConnectionNetworkFetcher.java */
    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f15748a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ v0.a f15749b;

        a(c cVar, v0.a aVar) {
            this.f15748a = cVar;
            this.f15749b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            d0.this.j(this.f15748a, this.f15749b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: HttpUrlConnectionNetworkFetcher.java */
    /* loaded from: classes3.dex */
    public class b extends f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Future f15751a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ v0.a f15752b;

        b(Future future, v0.a aVar) {
            this.f15751a = future;
            this.f15752b = aVar;
        }

        @Override // com.facebook.imagepipeline.producers.d1
        public void b() {
            if (this.f15751a.cancel(false)) {
                this.f15752b.a();
            }
        }
    }

    /* compiled from: HttpUrlConnectionNetworkFetcher.java */
    /* loaded from: classes3.dex */
    public static class c extends c0 {

        /* renamed from: f  reason: collision with root package name */
        private long f15754f;

        /* renamed from: g  reason: collision with root package name */
        private long f15755g;

        /* renamed from: h  reason: collision with root package name */
        private long f15756h;

        public c(n<y3.k> nVar, c1 c1Var) {
            super(nVar, c1Var);
        }
    }

    public d0(int i10) {
        this(null, null, RealtimeSinceBootClock.get());
        this.f15743a = i10;
    }

    private HttpURLConnection g(Uri uri, int i10) throws IOException {
        Uri parse;
        String h10;
        HttpURLConnection o10 = o(uri);
        String str = this.f15744b;
        if (str != null) {
            o10.setRequestProperty(Command.HTTP_HEADER_USER_AGENT, str);
        }
        Map<String, String> map = this.f15745c;
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                o10.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
        o10.setConnectTimeout(this.f15743a);
        int responseCode = o10.getResponseCode();
        if (m(responseCode)) {
            return o10;
        }
        if (l(responseCode)) {
            String headerField = o10.getHeaderField("Location");
            o10.disconnect();
            if (headerField == null) {
                parse = null;
            } else {
                parse = Uri.parse(headerField);
            }
            String scheme = uri.getScheme();
            if (i10 > 0 && parse != null && !k2.f.a(parse.getScheme(), scheme)) {
                return g(parse, i10 - 1);
            }
            if (i10 == 0) {
                h10 = h("URL %s follows too many redirects", uri.toString());
            } else {
                h10 = h("URL %s returned %d without a valid redirect", uri.toString(), Integer.valueOf(responseCode));
            }
            throw new IOException(h10);
        }
        o10.disconnect();
        throw new IOException(String.format("Image URL %s returned HTTP code %d", uri.toString(), Integer.valueOf(responseCode)));
    }

    private static String h(String str, Object... objArr) {
        return String.format(Locale.getDefault(), str, objArr);
    }

    private static boolean l(int i10) {
        if (i10 == 307 || i10 == 308) {
            return true;
        }
        switch (i10) {
            case 300:
            case 301:
            case 302:
            case 303:
                return true;
            default:
                return false;
        }
    }

    private static boolean m(int i10) {
        if (i10 >= 200 && i10 < 300) {
            return true;
        }
        return false;
    }

    @VisibleForTesting
    static HttpURLConnection o(Uri uri) throws IOException {
        return (HttpURLConnection) r2.d.q(uri).openConnection();
    }

    @Override // com.facebook.imagepipeline.producers.v0
    /* renamed from: f */
    public c b(n<y3.k> nVar, c1 c1Var) {
        return new c(nVar, c1Var);
    }

    @Override // com.facebook.imagepipeline.producers.v0
    /* renamed from: i */
    public void c(c cVar, v0.a aVar) {
        cVar.f15754f = this.f15747e.now();
        cVar.b().p(new b(this.f15746d.submit(new a(cVar, aVar)), aVar));
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0040 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @androidx.annotation.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void j(com.facebook.imagepipeline.producers.d0.c r5, com.facebook.imagepipeline.producers.v0.a r6) {
        /*
            r4 = this;
            r0 = 0
            android.net.Uri r1 = r5.g()     // Catch: java.lang.Throwable -> L2d java.io.IOException -> L30
            r2 = 5
            java.net.HttpURLConnection r1 = r4.g(r1, r2)     // Catch: java.lang.Throwable -> L2d java.io.IOException -> L30
            q2.b r2 = r4.f15747e     // Catch: java.lang.Throwable -> L1e java.io.IOException -> L20
            long r2 = r2.now()     // Catch: java.lang.Throwable -> L1e java.io.IOException -> L20
            com.facebook.imagepipeline.producers.d0.c.o(r5, r2)     // Catch: java.lang.Throwable -> L1e java.io.IOException -> L20
            if (r1 == 0) goto L22
            java.io.InputStream r0 = r1.getInputStream()     // Catch: java.lang.Throwable -> L1e java.io.IOException -> L20
            r5 = -1
            r6.b(r0, r5)     // Catch: java.lang.Throwable -> L1e java.io.IOException -> L20
            goto L22
        L1e:
            r5 = move-exception
            goto L3e
        L20:
            r5 = move-exception
            goto L32
        L22:
            if (r0 == 0) goto L27
            r0.close()     // Catch: java.io.IOException -> L27
        L27:
            if (r1 == 0) goto L3d
        L29:
            r1.disconnect()
            goto L3d
        L2d:
            r5 = move-exception
            r1 = r0
            goto L3e
        L30:
            r5 = move-exception
            r1 = r0
        L32:
            r6.onFailure(r5)     // Catch: java.lang.Throwable -> L1e
            if (r0 == 0) goto L3a
            r0.close()     // Catch: java.io.IOException -> L3a
        L3a:
            if (r1 == 0) goto L3d
            goto L29
        L3d:
            return
        L3e:
            if (r0 == 0) goto L43
            r0.close()     // Catch: java.io.IOException -> L43
        L43:
            if (r1 == 0) goto L48
            r1.disconnect()
        L48:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.producers.d0.j(com.facebook.imagepipeline.producers.d0$c, com.facebook.imagepipeline.producers.v0$a):void");
    }

    @Override // com.facebook.imagepipeline.producers.v0
    /* renamed from: k */
    public Map<String, String> e(c cVar, int i10) {
        HashMap hashMap = new HashMap(4);
        hashMap.put("queue_time", Long.toString(cVar.f15755g - cVar.f15754f));
        hashMap.put("fetch_time", Long.toString(cVar.f15756h - cVar.f15755g));
        hashMap.put("total_time", Long.toString(cVar.f15756h - cVar.f15754f));
        hashMap.put(CampaignEx.JSON_KEY_IMAGE_SIZE, Integer.toString(i10));
        return hashMap;
    }

    @Override // com.facebook.imagepipeline.producers.v0
    /* renamed from: n */
    public void a(c cVar, int i10) {
        cVar.f15756h = this.f15747e.now();
    }

    @VisibleForTesting
    d0(String str, Map<String, String> map, q2.b bVar) {
        this.f15746d = Executors.newFixedThreadPool(3);
        this.f15747e = bVar;
        this.f15745c = map;
        this.f15744b = str;
    }
}
