package g2;

import android.content.Context;
import com.facebook.cache.common.CacheErrorLogger;
import com.facebook.cache.common.CacheEventListener;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.CacheDataSource;
import java.io.File;
import k2.h;
import k2.k;
import k2.l;
/* compiled from: DiskCacheConfig.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final int f52157a;

    /* renamed from: b  reason: collision with root package name */
    private final String f52158b;

    /* renamed from: c  reason: collision with root package name */
    private final k<File> f52159c;

    /* renamed from: d  reason: collision with root package name */
    private final long f52160d;

    /* renamed from: e  reason: collision with root package name */
    private final long f52161e;

    /* renamed from: f  reason: collision with root package name */
    private final long f52162f;

    /* renamed from: g  reason: collision with root package name */
    private final d f52163g;

    /* renamed from: h  reason: collision with root package name */
    private final CacheErrorLogger f52164h;

    /* renamed from: i  reason: collision with root package name */
    private final CacheEventListener f52165i;

    /* renamed from: j  reason: collision with root package name */
    private final h2.b f52166j;

    /* renamed from: k  reason: collision with root package name */
    private final Context f52167k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f52168l;

    /* compiled from: DiskCacheConfig.java */
    /* loaded from: classes3.dex */
    class a implements k<File> {
        a() {
        }

        @Override // k2.k
        /* renamed from: a */
        public File get() {
            h.g(b.this.f52167k);
            return b.this.f52167k.getApplicationContext().getCacheDir();
        }
    }

    /* compiled from: DiskCacheConfig.java */
    /* renamed from: g2.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0750b {

        /* renamed from: a  reason: collision with root package name */
        private int f52170a;

        /* renamed from: b  reason: collision with root package name */
        private String f52171b;

        /* renamed from: c  reason: collision with root package name */
        private k<File> f52172c;

        /* renamed from: d  reason: collision with root package name */
        private long f52173d;

        /* renamed from: e  reason: collision with root package name */
        private long f52174e;

        /* renamed from: f  reason: collision with root package name */
        private long f52175f;

        /* renamed from: g  reason: collision with root package name */
        private d f52176g;

        /* renamed from: h  reason: collision with root package name */
        private CacheErrorLogger f52177h;

        /* renamed from: i  reason: collision with root package name */
        private CacheEventListener f52178i;

        /* renamed from: j  reason: collision with root package name */
        private h2.b f52179j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f52180k;

        /* renamed from: l  reason: collision with root package name */
        private final Context f52181l;

        public b n() {
            return new b(this);
        }

        public C0750b o(String str) {
            this.f52171b = str;
            return this;
        }

        public C0750b p(File file) {
            this.f52172c = l.a(file);
            return this;
        }

        public C0750b q(long j10) {
            this.f52173d = j10;
            return this;
        }

        public C0750b r(long j10) {
            this.f52174e = j10;
            return this;
        }

        public C0750b s(long j10) {
            this.f52175f = j10;
            return this;
        }

        private C0750b(Context context) {
            this.f52170a = 1;
            this.f52171b = "image_cache";
            this.f52173d = 41943040L;
            this.f52174e = 10485760L;
            this.f52175f = CacheDataSource.DEFAULT_MAX_CACHE_FILE_SIZE;
            this.f52176g = new com.facebook.cache.disk.a();
            this.f52181l = context;
        }
    }

    protected b(C0750b c0750b) {
        boolean z10;
        CacheErrorLogger cacheErrorLogger;
        CacheEventListener cacheEventListener;
        h2.b bVar;
        Context context = c0750b.f52181l;
        this.f52167k = context;
        if (c0750b.f52172c == null && context == null) {
            z10 = false;
        } else {
            z10 = true;
        }
        h.j(z10, "Either a non-null context or a base directory path or supplier must be provided.");
        if (c0750b.f52172c == null && context != null) {
            c0750b.f52172c = new a();
        }
        this.f52157a = c0750b.f52170a;
        this.f52158b = (String) h.g(c0750b.f52171b);
        this.f52159c = (k) h.g(c0750b.f52172c);
        this.f52160d = c0750b.f52173d;
        this.f52161e = c0750b.f52174e;
        this.f52162f = c0750b.f52175f;
        this.f52163g = (d) h.g(c0750b.f52176g);
        if (c0750b.f52177h != null) {
            cacheErrorLogger = c0750b.f52177h;
        } else {
            cacheErrorLogger = com.facebook.cache.common.b.b();
        }
        this.f52164h = cacheErrorLogger;
        if (c0750b.f52178i != null) {
            cacheEventListener = c0750b.f52178i;
        } else {
            cacheEventListener = f2.d.h();
        }
        this.f52165i = cacheEventListener;
        if (c0750b.f52179j != null) {
            bVar = c0750b.f52179j;
        } else {
            bVar = h2.c.b();
        }
        this.f52166j = bVar;
        this.f52168l = c0750b.f52180k;
    }

    public static C0750b m(Context context) {
        return new C0750b(context);
    }

    public String b() {
        return this.f52158b;
    }

    public k<File> c() {
        return this.f52159c;
    }

    public CacheErrorLogger d() {
        return this.f52164h;
    }

    public CacheEventListener e() {
        return this.f52165i;
    }

    public long f() {
        return this.f52160d;
    }

    public h2.b g() {
        return this.f52166j;
    }

    public d h() {
        return this.f52163g;
    }

    public boolean i() {
        return this.f52168l;
    }

    public long j() {
        return this.f52161e;
    }

    public long k() {
        return this.f52162f;
    }

    public int l() {
        return this.f52157a;
    }
}
