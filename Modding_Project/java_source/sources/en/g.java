package en;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.browser.trusted.sharing.ShareTarget;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import zm.r;
/* compiled from: DataSpec.java */
/* loaded from: classes8.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final Uri f51378a;

    /* renamed from: b  reason: collision with root package name */
    public final long f51379b;

    /* renamed from: c  reason: collision with root package name */
    public final int f51380c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f51381d;

    /* renamed from: e  reason: collision with root package name */
    public final Map<String, String> f51382e;
    @Deprecated

    /* renamed from: f  reason: collision with root package name */
    public final long f51383f;

    /* renamed from: g  reason: collision with root package name */
    public final long f51384g;

    /* renamed from: h  reason: collision with root package name */
    public final long f51385h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final String f51386i;

    /* renamed from: j  reason: collision with root package name */
    public final int f51387j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public final Object f51388k;

    /* compiled from: DataSpec.java */
    /* loaded from: classes8.dex */
    public static final class b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private Uri f51389a;

        /* renamed from: b  reason: collision with root package name */
        private long f51390b;

        /* renamed from: c  reason: collision with root package name */
        private int f51391c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private byte[] f51392d;

        /* renamed from: e  reason: collision with root package name */
        private Map<String, String> f51393e;

        /* renamed from: f  reason: collision with root package name */
        private long f51394f;

        /* renamed from: g  reason: collision with root package name */
        private long f51395g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private String f51396h;

        /* renamed from: i  reason: collision with root package name */
        private int f51397i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private Object f51398j;

        public g a() {
            cn.a.j(this.f51389a, "The uri must be set.");
            return new g(this.f51389a, this.f51390b, this.f51391c, this.f51392d, this.f51393e, this.f51394f, this.f51395g, this.f51396h, this.f51397i, this.f51398j);
        }

        public b b(int i10) {
            this.f51397i = i10;
            return this;
        }

        public b c(@Nullable byte[] bArr) {
            this.f51392d = bArr;
            return this;
        }

        public b d(int i10) {
            this.f51391c = i10;
            return this;
        }

        public b e(Map<String, String> map) {
            this.f51393e = map;
            return this;
        }

        public b f(@Nullable String str) {
            this.f51396h = str;
            return this;
        }

        public b g(long j10) {
            this.f51395g = j10;
            return this;
        }

        public b h(long j10) {
            this.f51394f = j10;
            return this;
        }

        public b i(Uri uri) {
            this.f51389a = uri;
            return this;
        }

        public b j(String str) {
            this.f51389a = Uri.parse(str);
            return this;
        }

        public b() {
            this.f51391c = 1;
            this.f51393e = Collections.emptyMap();
            this.f51395g = -1L;
        }

        private b(g gVar) {
            this.f51389a = gVar.f51378a;
            this.f51390b = gVar.f51379b;
            this.f51391c = gVar.f51380c;
            this.f51392d = gVar.f51381d;
            this.f51393e = gVar.f51382e;
            this.f51394f = gVar.f51384g;
            this.f51395g = gVar.f51385h;
            this.f51396h = gVar.f51386i;
            this.f51397i = gVar.f51387j;
            this.f51398j = gVar.f51388k;
        }
    }

    static {
        r.a("media3.datasource");
    }

    public static String c(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return "HEAD";
                }
                throw new IllegalStateException();
            }
            return ShareTarget.METHOD_POST;
        }
        return ShareTarget.METHOD_GET;
    }

    public b a() {
        return new b();
    }

    public final String b() {
        return c(this.f51380c);
    }

    public boolean d(int i10) {
        if ((this.f51387j & i10) == i10) {
            return true;
        }
        return false;
    }

    public g e(long j10) {
        long j11 = this.f51385h;
        long j12 = -1;
        if (j11 != -1) {
            j12 = j11 - j10;
        }
        return f(j10, j12);
    }

    public g f(long j10, long j11) {
        if (j10 == 0 && this.f51385h == j11) {
            return this;
        }
        return new g(this.f51378a, this.f51379b, this.f51380c, this.f51381d, this.f51382e, this.f51384g + j10, j11, this.f51386i, this.f51387j, this.f51388k);
    }

    public String toString() {
        return "DataSpec[" + b() + " " + this.f51378a + ", " + this.f51384g + ", " + this.f51385h + ", " + this.f51386i + ", " + this.f51387j + "]";
    }

    private g(Uri uri, long j10, int i10, @Nullable byte[] bArr, Map<String, String> map, long j11, long j12, @Nullable String str, int i11, @Nullable Object obj) {
        byte[] bArr2 = bArr;
        long j13 = j10 + j11;
        boolean z10 = false;
        cn.a.a(j13 >= 0);
        cn.a.a(j11 >= 0);
        cn.a.a((j12 > 0 || j12 == -1) ? true : z10);
        this.f51378a = (Uri) cn.a.e(uri);
        this.f51379b = j10;
        this.f51380c = i10;
        this.f51381d = (bArr2 == null || bArr2.length == 0) ? null : bArr2;
        this.f51382e = Collections.unmodifiableMap(new HashMap(map));
        this.f51384g = j11;
        this.f51383f = j13;
        this.f51385h = j12;
        this.f51386i = str;
        this.f51387j = i11;
        this.f51388k = obj;
    }
}
