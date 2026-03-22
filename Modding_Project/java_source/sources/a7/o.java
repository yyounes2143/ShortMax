package a7;

import a7.h;
import a7.p;
import android.content.Context;
import android.net.Uri;
import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.upstream.AssetDataSource;
import com.google.android.exoplayer2.upstream.ContentDataSource;
import com.google.android.exoplayer2.upstream.FileDataSource;
import com.google.android.exoplayer2.upstream.RawResourceDataSource;
import com.google.android.exoplayer2.upstream.UdpDataSource;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* compiled from: DefaultDataSource.java */
/* loaded from: classes4.dex */
public final class o implements h {

    /* renamed from: a  reason: collision with root package name */
    private final Context f254a;

    /* renamed from: b  reason: collision with root package name */
    private final List<y> f255b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private final h f256c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private h f257d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private h f258e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private h f259f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private h f260g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private h f261h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private h f262i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private h f263j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private h f264k;

    /* compiled from: DefaultDataSource.java */
    /* loaded from: classes4.dex */
    public static final class a implements h.a {

        /* renamed from: a  reason: collision with root package name */
        private final Context f265a;

        /* renamed from: b  reason: collision with root package name */
        private final h.a f266b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private y f267c;

        public a(Context context) {
            this(context, new p.b());
        }

        @Override // a7.h.a
        /* renamed from: a */
        public o createDataSource() {
            o oVar = new o(this.f265a, this.f266b.createDataSource());
            y yVar = this.f267c;
            if (yVar != null) {
                oVar.c(yVar);
            }
            return oVar;
        }

        public a(Context context, h.a aVar) {
            this.f265a = context.getApplicationContext();
            this.f266b = aVar;
        }
    }

    public o(Context context, h hVar) {
        this.f254a = context.getApplicationContext();
        this.f256c = (h) b7.a.e(hVar);
    }

    private void d(h hVar) {
        for (int i10 = 0; i10 < this.f255b.size(); i10++) {
            hVar.c(this.f255b.get(i10));
        }
    }

    private h e() {
        if (this.f258e == null) {
            AssetDataSource assetDataSource = new AssetDataSource(this.f254a);
            this.f258e = assetDataSource;
            d(assetDataSource);
        }
        return this.f258e;
    }

    private h f() {
        if (this.f259f == null) {
            ContentDataSource contentDataSource = new ContentDataSource(this.f254a);
            this.f259f = contentDataSource;
            d(contentDataSource);
        }
        return this.f259f;
    }

    private h g() {
        if (this.f262i == null) {
            g gVar = new g();
            this.f262i = gVar;
            d(gVar);
        }
        return this.f262i;
    }

    private h h() {
        if (this.f257d == null) {
            FileDataSource fileDataSource = new FileDataSource();
            this.f257d = fileDataSource;
            d(fileDataSource);
        }
        return this.f257d;
    }

    private h i() {
        if (this.f263j == null) {
            RawResourceDataSource rawResourceDataSource = new RawResourceDataSource(this.f254a);
            this.f263j = rawResourceDataSource;
            d(rawResourceDataSource);
        }
        return this.f263j;
    }

    private h j() {
        if (this.f260g == null) {
            try {
                h hVar = (h) Class.forName("com.google.android.exoplayer2.ext.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                this.f260g = hVar;
                d(hVar);
            } catch (ClassNotFoundException unused) {
                b7.q.i("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
            } catch (Exception e10) {
                throw new RuntimeException("Error instantiating RTMP extension", e10);
            }
            if (this.f260g == null) {
                this.f260g = this.f256c;
            }
        }
        return this.f260g;
    }

    private h k() {
        if (this.f261h == null) {
            UdpDataSource udpDataSource = new UdpDataSource();
            this.f261h = udpDataSource;
            d(udpDataSource);
        }
        return this.f261h;
    }

    private void l(@Nullable h hVar, y yVar) {
        if (hVar != null) {
            hVar.c(yVar);
        }
    }

    @Override // a7.h
    public long b(k kVar) throws IOException {
        boolean z10;
        if (this.f264k == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        String scheme = kVar.f198a.getScheme();
        if (s0.q0(kVar.f198a)) {
            String path = kVar.f198a.getPath();
            if (path != null && path.startsWith("/android_asset/")) {
                this.f264k = e();
            } else {
                this.f264k = h();
            }
        } else if ("asset".equals(scheme)) {
            this.f264k = e();
        } else if ("content".equals(scheme)) {
            this.f264k = f();
        } else if ("rtmp".equals(scheme)) {
            this.f264k = j();
        } else if ("udp".equals(scheme)) {
            this.f264k = k();
        } else if ("data".equals(scheme)) {
            this.f264k = g();
        } else if (!com.mbridge.msdk.playercommon.exoplayer2.upstream.RawResourceDataSource.RAW_RESOURCE_SCHEME.equals(scheme) && !"android.resource".equals(scheme)) {
            this.f264k = this.f256c;
        } else {
            this.f264k = i();
        }
        return this.f264k.b(kVar);
    }

    @Override // a7.h
    public void c(y yVar) {
        b7.a.e(yVar);
        this.f256c.c(yVar);
        this.f255b.add(yVar);
        l(this.f257d, yVar);
        l(this.f258e, yVar);
        l(this.f259f, yVar);
        l(this.f260g, yVar);
        l(this.f261h, yVar);
        l(this.f262i, yVar);
        l(this.f263j, yVar);
    }

    @Override // a7.h
    public void close() throws IOException {
        h hVar = this.f264k;
        if (hVar != null) {
            try {
                hVar.close();
            } finally {
                this.f264k = null;
            }
        }
    }

    @Override // a7.h
    public Map<String, List<String>> getResponseHeaders() {
        h hVar = this.f264k;
        if (hVar == null) {
            return Collections.emptyMap();
        }
        return hVar.getResponseHeaders();
    }

    @Override // a7.h
    @Nullable
    public Uri getUri() {
        h hVar = this.f264k;
        if (hVar == null) {
            return null;
        }
        return hVar.getUri();
    }

    @Override // a7.f
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        return ((h) b7.a.e(this.f264k)).read(bArr, i10, i11);
    }
}
