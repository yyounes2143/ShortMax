package en;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.Nullable;
import cn.m0;
import cn.r;
import en.d;
import en.i;
import io.bidmachine.media3.datasource.AssetDataSource;
import io.bidmachine.media3.datasource.ContentDataSource;
import io.bidmachine.media3.datasource.FileDataSource;
import io.bidmachine.media3.datasource.RawResourceDataSource;
import io.bidmachine.media3.datasource.UdpDataSource;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* compiled from: DefaultDataSource.java */
/* loaded from: classes8.dex */
public final class h implements d {

    /* renamed from: a  reason: collision with root package name */
    private final Context f51399a;

    /* renamed from: b  reason: collision with root package name */
    private final List<o> f51400b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private final d f51401c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private d f51402d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private d f51403e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private d f51404f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private d f51405g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private d f51406h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private d f51407i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private d f51408j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private d f51409k;

    /* compiled from: DefaultDataSource.java */
    /* loaded from: classes8.dex */
    public static final class a implements d.a {

        /* renamed from: a  reason: collision with root package name */
        private final Context f51410a;

        /* renamed from: b  reason: collision with root package name */
        private final d.a f51411b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private o f51412c;

        public a(Context context) {
            this(context, new i.b());
        }

        @Override // en.d.a
        /* renamed from: a */
        public h createDataSource() {
            h hVar = new h(this.f51410a, this.f51411b.createDataSource());
            o oVar = this.f51412c;
            if (oVar != null) {
                hVar.c(oVar);
            }
            return hVar;
        }

        public a(Context context, d.a aVar) {
            this.f51410a = context.getApplicationContext();
            this.f51411b = (d.a) cn.a.e(aVar);
        }
    }

    public h(Context context, d dVar) {
        this.f51399a = context.getApplicationContext();
        this.f51401c = (d) cn.a.e(dVar);
    }

    private void d(d dVar) {
        for (int i10 = 0; i10 < this.f51400b.size(); i10++) {
            dVar.c(this.f51400b.get(i10));
        }
    }

    private d e() {
        if (this.f51403e == null) {
            AssetDataSource assetDataSource = new AssetDataSource(this.f51399a);
            this.f51403e = assetDataSource;
            d(assetDataSource);
        }
        return this.f51403e;
    }

    private d f() {
        if (this.f51404f == null) {
            ContentDataSource contentDataSource = new ContentDataSource(this.f51399a);
            this.f51404f = contentDataSource;
            d(contentDataSource);
        }
        return this.f51404f;
    }

    private d g() {
        if (this.f51407i == null) {
            c cVar = new c();
            this.f51407i = cVar;
            d(cVar);
        }
        return this.f51407i;
    }

    private d h() {
        if (this.f51402d == null) {
            FileDataSource fileDataSource = new FileDataSource();
            this.f51402d = fileDataSource;
            d(fileDataSource);
        }
        return this.f51402d;
    }

    private d i() {
        if (this.f51408j == null) {
            RawResourceDataSource rawResourceDataSource = new RawResourceDataSource(this.f51399a);
            this.f51408j = rawResourceDataSource;
            d(rawResourceDataSource);
        }
        return this.f51408j;
    }

    private d j() {
        if (this.f51405g == null) {
            try {
                d dVar = (d) Class.forName("io.bidmachine.media3.datasource.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                this.f51405g = dVar;
                d(dVar);
            } catch (ClassNotFoundException unused) {
                r.h("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
            } catch (Exception e10) {
                throw new RuntimeException("Error instantiating RTMP extension", e10);
            }
            if (this.f51405g == null) {
                this.f51405g = this.f51401c;
            }
        }
        return this.f51405g;
    }

    private d k() {
        if (this.f51406h == null) {
            UdpDataSource udpDataSource = new UdpDataSource();
            this.f51406h = udpDataSource;
            d(udpDataSource);
        }
        return this.f51406h;
    }

    private void l(@Nullable d dVar, o oVar) {
        if (dVar != null) {
            dVar.c(oVar);
        }
    }

    @Override // en.d
    public long b(g gVar) throws IOException {
        boolean z10;
        if (this.f51409k == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        String scheme = gVar.f51378a.getScheme();
        if (m0.J0(gVar.f51378a)) {
            String path = gVar.f51378a.getPath();
            if (path != null && path.startsWith("/android_asset/")) {
                this.f51409k = e();
            } else {
                this.f51409k = h();
            }
        } else if ("asset".equals(scheme)) {
            this.f51409k = e();
        } else if ("content".equals(scheme)) {
            this.f51409k = f();
        } else if ("rtmp".equals(scheme)) {
            this.f51409k = j();
        } else if ("udp".equals(scheme)) {
            this.f51409k = k();
        } else if ("data".equals(scheme)) {
            this.f51409k = g();
        } else if (!com.mbridge.msdk.playercommon.exoplayer2.upstream.RawResourceDataSource.RAW_RESOURCE_SCHEME.equals(scheme) && !"android.resource".equals(scheme)) {
            this.f51409k = this.f51401c;
        } else {
            this.f51409k = i();
        }
        return this.f51409k.b(gVar);
    }

    @Override // en.d
    public void c(o oVar) {
        cn.a.e(oVar);
        this.f51401c.c(oVar);
        this.f51400b.add(oVar);
        l(this.f51402d, oVar);
        l(this.f51403e, oVar);
        l(this.f51404f, oVar);
        l(this.f51405g, oVar);
        l(this.f51406h, oVar);
        l(this.f51407i, oVar);
        l(this.f51408j, oVar);
    }

    @Override // en.d
    public void close() throws IOException {
        d dVar = this.f51409k;
        if (dVar != null) {
            try {
                dVar.close();
            } finally {
                this.f51409k = null;
            }
        }
    }

    @Override // en.d
    public Map<String, List<String>> getResponseHeaders() {
        d dVar = this.f51409k;
        if (dVar == null) {
            return Collections.emptyMap();
        }
        return dVar.getResponseHeaders();
    }

    @Override // en.d
    @Nullable
    public Uri getUri() {
        d dVar = this.f51409k;
        if (dVar == null) {
            return null;
        }
        return dVar.getUri();
    }

    @Override // zm.h
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        return ((d) cn.a.e(this.f51409k)).read(bArr, i10, i11);
    }
}
