package com.facebook.imagepipeline.request;

import a4.e;
import android.net.Uri;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.core.DownsampleMode;
import com.facebook.imagepipeline.request.ImageRequest;
import e4.b;
import java.util.HashSet;
import java.util.Set;
import k2.h;
import s3.d;
import s3.f;
import s3.g;
import t3.s;
/* loaded from: classes3.dex */
public class ImageRequestBuilder {

    /* renamed from: t  reason: collision with root package name */
    private static final Set<String> f16049t = new HashSet();

    /* renamed from: n  reason: collision with root package name */
    private e f16063n;

    /* renamed from: r  reason: collision with root package name */
    private int f16067r;

    /* renamed from: a  reason: collision with root package name */
    private Uri f16050a = null;

    /* renamed from: b  reason: collision with root package name */
    private ImageRequest.RequestLevel f16051b = ImageRequest.RequestLevel.FULL_FETCH;

    /* renamed from: c  reason: collision with root package name */
    private int f16052c = 0;

    /* renamed from: d  reason: collision with root package name */
    private f f16053d = null;

    /* renamed from: e  reason: collision with root package name */
    private g f16054e = null;

    /* renamed from: f  reason: collision with root package name */
    private d f16055f = d.a();

    /* renamed from: g  reason: collision with root package name */
    private ImageRequest.CacheChoice f16056g = ImageRequest.CacheChoice.DEFAULT;

    /* renamed from: h  reason: collision with root package name */
    private boolean f16057h = s.J().a();

    /* renamed from: i  reason: collision with root package name */
    private boolean f16058i = false;

    /* renamed from: j  reason: collision with root package name */
    private boolean f16059j = false;

    /* renamed from: k  reason: collision with root package name */
    private Priority f16060k = Priority.HIGH;

    /* renamed from: l  reason: collision with root package name */
    private b f16061l = null;

    /* renamed from: m  reason: collision with root package name */
    private Boolean f16062m = null;

    /* renamed from: o  reason: collision with root package name */
    private s3.b f16064o = null;

    /* renamed from: p  reason: collision with root package name */
    private Boolean f16065p = null;

    /* renamed from: q  reason: collision with root package name */
    private DownsampleMode f16066q = null;

    /* renamed from: s  reason: collision with root package name */
    private String f16068s = null;

    /* loaded from: classes3.dex */
    public static class BuilderException extends RuntimeException {
        public BuilderException(String str) {
            super("Invalid request builder: " + str);
        }
    }

    private ImageRequestBuilder() {
    }

    private ImageRequestBuilder A(int i10) {
        this.f16052c = i10;
        if (this.f16056g != ImageRequest.CacheChoice.DYNAMIC) {
            this.f16068s = null;
        }
        return this;
    }

    public static ImageRequestBuilder b(ImageRequest imageRequest) {
        return x(imageRequest.w()).E(imageRequest.i()).y(imageRequest.c()).z(imageRequest.d()).G(imageRequest.k()).F(imageRequest.j()).H(imageRequest.l()).A(imageRequest.e()).I(imageRequest.m()).J(imageRequest.q()).L(imageRequest.p()).M(imageRequest.s()).K(imageRequest.r()).O(imageRequest.u()).P(imageRequest.A()).B(imageRequest.f()).C(imageRequest.g()).D(imageRequest.h()).N(imageRequest.t());
    }

    public static boolean s(Uri uri) {
        Set<String> set = f16049t;
        if (set != null && uri != null) {
            for (String str : set) {
                if (str.equals(uri.getScheme())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static ImageRequestBuilder x(Uri uri) {
        return new ImageRequestBuilder().Q(uri);
    }

    public ImageRequestBuilder B(int i10) {
        this.f16067r = i10;
        return this;
    }

    public ImageRequestBuilder C(String str) {
        this.f16068s = str;
        return this;
    }

    public ImageRequestBuilder D(DownsampleMode downsampleMode) {
        this.f16066q = downsampleMode;
        return this;
    }

    public ImageRequestBuilder E(d dVar) {
        this.f16055f = dVar;
        return this;
    }

    public ImageRequestBuilder F(boolean z10) {
        this.f16059j = z10;
        return this;
    }

    public ImageRequestBuilder G(boolean z10) {
        this.f16058i = z10;
        return this;
    }

    public ImageRequestBuilder H(ImageRequest.RequestLevel requestLevel) {
        this.f16051b = requestLevel;
        return this;
    }

    public ImageRequestBuilder I(b bVar) {
        this.f16061l = bVar;
        return this;
    }

    public ImageRequestBuilder J(boolean z10) {
        this.f16057h = z10;
        return this;
    }

    public ImageRequestBuilder K(e eVar) {
        this.f16063n = eVar;
        return this;
    }

    public ImageRequestBuilder L(Priority priority) {
        this.f16060k = priority;
        return this;
    }

    public ImageRequestBuilder M(f fVar) {
        this.f16053d = fVar;
        return this;
    }

    public ImageRequestBuilder N(Boolean bool) {
        this.f16065p = bool;
        return this;
    }

    public ImageRequestBuilder O(g gVar) {
        this.f16054e = gVar;
        return this;
    }

    public ImageRequestBuilder P(Boolean bool) {
        this.f16062m = bool;
        return this;
    }

    public ImageRequestBuilder Q(Uri uri) {
        h.g(uri);
        this.f16050a = uri;
        return this;
    }

    public Boolean R() {
        return this.f16062m;
    }

    protected void S() {
        Uri uri = this.f16050a;
        if (uri != null) {
            if (r2.d.n(uri)) {
                if (this.f16050a.isAbsolute()) {
                    if (!this.f16050a.getPath().isEmpty()) {
                        try {
                            Integer.parseInt(this.f16050a.getPath().substring(1));
                        } catch (NumberFormatException unused) {
                            throw new BuilderException("Resource URI path must be a resource id.");
                        }
                    } else {
                        throw new BuilderException("Resource URI must not be empty");
                    }
                } else {
                    throw new BuilderException("Resource URI path must be absolute.");
                }
            }
            if (r2.d.i(this.f16050a) && !this.f16050a.isAbsolute()) {
                throw new BuilderException("Asset URI path must be absolute.");
            }
            return;
        }
        throw new BuilderException("Source must be set!");
    }

    public ImageRequest a() {
        S();
        return new ImageRequest(this);
    }

    public s3.b c() {
        return this.f16064o;
    }

    public ImageRequest.CacheChoice d() {
        return this.f16056g;
    }

    public int e() {
        return this.f16052c;
    }

    public int f() {
        return this.f16067r;
    }

    public String g() {
        return this.f16068s;
    }

    public DownsampleMode h() {
        return this.f16066q;
    }

    public d i() {
        return this.f16055f;
    }

    public boolean j() {
        return this.f16059j;
    }

    public ImageRequest.RequestLevel k() {
        return this.f16051b;
    }

    public b l() {
        return this.f16061l;
    }

    public e m() {
        return this.f16063n;
    }

    public Priority n() {
        return this.f16060k;
    }

    public f o() {
        return this.f16053d;
    }

    public Boolean p() {
        return this.f16065p;
    }

    public g q() {
        return this.f16054e;
    }

    public Uri r() {
        return this.f16050a;
    }

    public boolean t() {
        if ((this.f16052c & 48) == 0 && (r2.d.o(this.f16050a) || s(this.f16050a))) {
            return true;
        }
        return false;
    }

    public boolean u() {
        return this.f16058i;
    }

    public boolean v() {
        if ((this.f16052c & 15) == 0) {
            return true;
        }
        return false;
    }

    public boolean w() {
        return this.f16057h;
    }

    public ImageRequestBuilder y(s3.b bVar) {
        this.f16064o = bVar;
        return this;
    }

    public ImageRequestBuilder z(ImageRequest.CacheChoice cacheChoice) {
        this.f16056g = cacheChoice;
        return this;
    }
}
