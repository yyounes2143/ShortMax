package com.facebook.imagepipeline.request;

import android.net.Uri;
import android.os.Build;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.core.DownsampleMode;
import com.ss.ttvideoengine.model.VideoThumbInfo;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.io.File;
import k2.e;
import k2.h;
import s3.b;
import s3.d;
import s3.f;
import s3.g;
/* loaded from: classes3.dex */
public class ImageRequest {
    public static final e<ImageRequest, Uri> A = new a();

    /* renamed from: y  reason: collision with root package name */
    private static boolean f16023y;

    /* renamed from: z  reason: collision with root package name */
    private static boolean f16024z;

    /* renamed from: a  reason: collision with root package name */
    private int f16025a;

    /* renamed from: b  reason: collision with root package name */
    private final CacheChoice f16026b;

    /* renamed from: c  reason: collision with root package name */
    private final Uri f16027c;

    /* renamed from: d  reason: collision with root package name */
    private final int f16028d;

    /* renamed from: e  reason: collision with root package name */
    private File f16029e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f16030f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f16031g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f16032h;

    /* renamed from: i  reason: collision with root package name */
    private final d f16033i;

    /* renamed from: j  reason: collision with root package name */
    private final f f16034j;

    /* renamed from: k  reason: collision with root package name */
    private final g f16035k;

    /* renamed from: l  reason: collision with root package name */
    private final b f16036l;

    /* renamed from: m  reason: collision with root package name */
    private final Priority f16037m;

    /* renamed from: n  reason: collision with root package name */
    private final RequestLevel f16038n;

    /* renamed from: o  reason: collision with root package name */
    protected int f16039o;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f16040p;

    /* renamed from: q  reason: collision with root package name */
    private final boolean f16041q;

    /* renamed from: r  reason: collision with root package name */
    private final Boolean f16042r;

    /* renamed from: s  reason: collision with root package name */
    private final e4.b f16043s;

    /* renamed from: t  reason: collision with root package name */
    private final a4.e f16044t;

    /* renamed from: u  reason: collision with root package name */
    private final Boolean f16045u;

    /* renamed from: v  reason: collision with root package name */
    private final DownsampleMode f16046v;

    /* renamed from: w  reason: collision with root package name */
    private final String f16047w;

    /* renamed from: x  reason: collision with root package name */
    private final int f16048x;

    /* loaded from: classes3.dex */
    public enum CacheChoice {
        SMALL,
        DEFAULT,
        DYNAMIC
    }

    /* loaded from: classes3.dex */
    public enum RequestLevel {
        FULL_FETCH(1),
        DISK_CACHE(2),
        ENCODED_MEMORY_CACHE(3),
        BITMAP_MEMORY_CACHE(4);
        
        private int mValue;

        RequestLevel(int i10) {
            this.mValue = i10;
        }

        public static RequestLevel getMax(RequestLevel requestLevel, RequestLevel requestLevel2) {
            if (requestLevel.getValue() <= requestLevel2.getValue()) {
                return requestLevel2;
            }
            return requestLevel;
        }

        public int getValue() {
            return this.mValue;
        }
    }

    /* loaded from: classes3.dex */
    class a implements e<ImageRequest, Uri> {
        a() {
        }

        @Override // k2.e
        /* renamed from: a */
        public Uri apply(ImageRequest imageRequest) {
            if (imageRequest != null) {
                return imageRequest.w();
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ImageRequest(ImageRequestBuilder imageRequestBuilder) {
        g q10;
        this.f16026b = imageRequestBuilder.d();
        Uri r10 = imageRequestBuilder.r();
        this.f16027c = r10;
        this.f16028d = y(r10);
        this.f16030f = imageRequestBuilder.w();
        this.f16031g = imageRequestBuilder.u();
        this.f16032h = imageRequestBuilder.j();
        this.f16033i = imageRequestBuilder.i();
        this.f16034j = imageRequestBuilder.o();
        if (imageRequestBuilder.q() == null) {
            q10 = g.c();
        } else {
            q10 = imageRequestBuilder.q();
        }
        this.f16035k = q10;
        this.f16036l = imageRequestBuilder.c();
        this.f16037m = imageRequestBuilder.n();
        this.f16038n = imageRequestBuilder.k();
        boolean t10 = imageRequestBuilder.t();
        this.f16040p = t10;
        int e10 = imageRequestBuilder.e();
        this.f16039o = t10 ? e10 : e10 | 48;
        this.f16041q = imageRequestBuilder.v();
        this.f16042r = imageRequestBuilder.R();
        this.f16043s = imageRequestBuilder.l();
        this.f16044t = imageRequestBuilder.m();
        this.f16045u = imageRequestBuilder.p();
        this.f16046v = imageRequestBuilder.h();
        this.f16048x = imageRequestBuilder.f();
        this.f16047w = imageRequestBuilder.g();
    }

    public static ImageRequest a(Uri uri) {
        if (uri == null) {
            return null;
        }
        return ImageRequestBuilder.x(uri).a();
    }

    public static ImageRequest b(String str) {
        if (str != null && str.length() != 0) {
            return a(Uri.parse(str));
        }
        return null;
    }

    private static int y(Uri uri) {
        if (uri == null) {
            return -1;
        }
        if (r2.d.o(uri)) {
            return 0;
        }
        if (uri.getPath() != null && r2.d.m(uri)) {
            if (m2.a.c(m2.a.b(uri.getPath()))) {
                return 2;
            }
            return 3;
        } else if (r2.d.l(uri)) {
            return 4;
        } else {
            if (r2.d.i(uri)) {
                return 5;
            }
            if (r2.d.n(uri)) {
                return 6;
            }
            if (r2.d.h(uri)) {
                return 7;
            }
            if (!r2.d.p(uri)) {
                return -1;
            }
            return 8;
        }
    }

    public Boolean A() {
        return this.f16042r;
    }

    public b c() {
        return this.f16036l;
    }

    public CacheChoice d() {
        return this.f16026b;
    }

    public int e() {
        return this.f16039o;
    }

    public boolean equals(Object obj) {
        f2.a aVar;
        if (!(obj instanceof ImageRequest)) {
            return false;
        }
        ImageRequest imageRequest = (ImageRequest) obj;
        if (f16023y) {
            int i10 = this.f16025a;
            int i11 = imageRequest.f16025a;
            if (i10 != 0 && i11 != 0 && i10 != i11) {
                return false;
            }
        }
        if (this.f16031g != imageRequest.f16031g || this.f16040p != imageRequest.f16040p || this.f16041q != imageRequest.f16041q || !k2.f.a(this.f16027c, imageRequest.f16027c) || !k2.f.a(this.f16026b, imageRequest.f16026b) || !k2.f.a(this.f16047w, imageRequest.f16047w) || !k2.f.a(this.f16029e, imageRequest.f16029e) || !k2.f.a(this.f16036l, imageRequest.f16036l) || !k2.f.a(this.f16033i, imageRequest.f16033i) || !k2.f.a(this.f16034j, imageRequest.f16034j) || !k2.f.a(this.f16037m, imageRequest.f16037m) || !k2.f.a(this.f16038n, imageRequest.f16038n) || !k2.f.a(Integer.valueOf(this.f16039o), Integer.valueOf(imageRequest.f16039o)) || !k2.f.a(this.f16042r, imageRequest.f16042r) || !k2.f.a(this.f16045u, imageRequest.f16045u) || !k2.f.a(this.f16046v, imageRequest.f16046v) || !k2.f.a(this.f16035k, imageRequest.f16035k) || this.f16032h != imageRequest.f16032h) {
            return false;
        }
        e4.b bVar = this.f16043s;
        f2.a aVar2 = null;
        if (bVar != null) {
            aVar = bVar.b();
        } else {
            aVar = null;
        }
        e4.b bVar2 = imageRequest.f16043s;
        if (bVar2 != null) {
            aVar2 = bVar2.b();
        }
        if (!k2.f.a(aVar, aVar2) || this.f16048x != imageRequest.f16048x) {
            return false;
        }
        return true;
    }

    public int f() {
        return this.f16048x;
    }

    public String g() {
        return this.f16047w;
    }

    public DownsampleMode h() {
        return this.f16046v;
    }

    public int hashCode() {
        int i10;
        f2.a aVar;
        boolean z10 = f16024z;
        if (z10) {
            i10 = this.f16025a;
        } else {
            i10 = 0;
        }
        if (i10 == 0) {
            e4.b bVar = this.f16043s;
            if (bVar != null) {
                aVar = bVar.b();
            } else {
                aVar = null;
            }
            i10 = t4.a.a(t4.a.a(t4.a.a(t4.a.a(t4.a.a(t4.a.a(t4.a.a(t4.a.a(t4.a.a(t4.a.a(t4.a.a(t4.a.a(t4.a.a(t4.a.a(t4.a.a(t4.a.a(t4.a.a(t4.a.a(0, this.f16026b), this.f16027c), Boolean.valueOf(this.f16031g)), this.f16036l), this.f16037m), this.f16038n), Integer.valueOf(this.f16039o)), Boolean.valueOf(this.f16040p)), Boolean.valueOf(this.f16041q)), this.f16033i), this.f16042r), this.f16034j), this.f16035k), aVar), this.f16045u), this.f16046v), Integer.valueOf(this.f16048x)), Boolean.valueOf(this.f16032h));
            if (z10) {
                this.f16025a = i10;
            }
        }
        return i10;
    }

    public d i() {
        return this.f16033i;
    }

    public boolean j() {
        if (Build.VERSION.SDK_INT >= 29 && this.f16032h) {
            return true;
        }
        return false;
    }

    public boolean k() {
        return this.f16031g;
    }

    public RequestLevel l() {
        return this.f16038n;
    }

    public e4.b m() {
        return this.f16043s;
    }

    public int n() {
        f fVar = this.f16034j;
        if (fVar != null) {
            return fVar.f66292b;
        }
        return 2048;
    }

    public int o() {
        f fVar = this.f16034j;
        if (fVar != null) {
            return fVar.f66291a;
        }
        return 2048;
    }

    public Priority p() {
        return this.f16037m;
    }

    public boolean q() {
        return this.f16030f;
    }

    public a4.e r() {
        return this.f16044t;
    }

    public f s() {
        return this.f16034j;
    }

    public Boolean t() {
        return this.f16045u;
    }

    public String toString() {
        return k2.f.b(this).c(VideoThumbInfo.KEY_URI, this.f16027c).c("cacheChoice", this.f16026b).c("decodeOptions", this.f16033i).c("postprocessor", this.f16043s).c(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, this.f16037m).c("resizeOptions", this.f16034j).c("rotationOptions", this.f16035k).c("bytesRange", this.f16036l).c("resizingAllowedOverride", this.f16045u).c("downsampleOverride", this.f16046v).d("progressiveRenderingEnabled", this.f16030f).d("localThumbnailPreviewsEnabled", this.f16031g).d("loadThumbnailOnly", this.f16032h).c("lowestPermittedRequestLevel", this.f16038n).a("cachesDisabled", this.f16039o).d("isDiskCacheEnabled", this.f16040p).d("isMemoryCacheEnabled", this.f16041q).c("decodePrefetches", this.f16042r).a("delayMs", this.f16048x).toString();
    }

    public g u() {
        return this.f16035k;
    }

    public synchronized File v() {
        try {
            if (this.f16029e == null) {
                h.g(this.f16027c.getPath());
                this.f16029e = new File(this.f16027c.getPath());
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f16029e;
    }

    public Uri w() {
        return this.f16027c;
    }

    public int x() {
        return this.f16028d;
    }

    public boolean z(int i10) {
        if ((i10 & e()) == 0) {
            return true;
        }
        return false;
    }
}
