package a7;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.browser.trusted.sharing.ShareTarget;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import o5.z;
/* compiled from: DataSpec.java */
/* loaded from: classes4.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public final Uri f198a;

    /* renamed from: b  reason: collision with root package name */
    public final long f199b;

    /* renamed from: c  reason: collision with root package name */
    public final int f200c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f201d;

    /* renamed from: e  reason: collision with root package name */
    public final Map<String, String> f202e;
    @Deprecated

    /* renamed from: f  reason: collision with root package name */
    public final long f203f;

    /* renamed from: g  reason: collision with root package name */
    public final long f204g;

    /* renamed from: h  reason: collision with root package name */
    public final long f205h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final String f206i;

    /* renamed from: j  reason: collision with root package name */
    public final int f207j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public final Object f208k;

    /* compiled from: DataSpec.java */
    /* loaded from: classes4.dex */
    public static final class b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private Uri f209a;

        /* renamed from: b  reason: collision with root package name */
        private long f210b;

        /* renamed from: c  reason: collision with root package name */
        private int f211c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private byte[] f212d;

        /* renamed from: e  reason: collision with root package name */
        private Map<String, String> f213e;

        /* renamed from: f  reason: collision with root package name */
        private long f214f;

        /* renamed from: g  reason: collision with root package name */
        private long f215g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private String f216h;

        /* renamed from: i  reason: collision with root package name */
        private int f217i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private Object f218j;

        public k a() {
            b7.a.j(this.f209a, "The uri must be set.");
            return new k(this.f209a, this.f210b, this.f211c, this.f212d, this.f213e, this.f214f, this.f215g, this.f216h, this.f217i, this.f218j);
        }

        public b b(int i10) {
            this.f217i = i10;
            return this;
        }

        public b c(@Nullable byte[] bArr) {
            this.f212d = bArr;
            return this;
        }

        public b d(int i10) {
            this.f211c = i10;
            return this;
        }

        public b e(Map<String, String> map) {
            this.f213e = map;
            return this;
        }

        public b f(@Nullable String str) {
            this.f216h = str;
            return this;
        }

        public b g(long j10) {
            this.f214f = j10;
            return this;
        }

        public b h(Uri uri) {
            this.f209a = uri;
            return this;
        }

        public b i(String str) {
            this.f209a = Uri.parse(str);
            return this;
        }

        public b() {
            this.f211c = 1;
            this.f213e = Collections.emptyMap();
            this.f215g = -1L;
        }

        private b(k kVar) {
            this.f209a = kVar.f198a;
            this.f210b = kVar.f199b;
            this.f211c = kVar.f200c;
            this.f212d = kVar.f201d;
            this.f213e = kVar.f202e;
            this.f214f = kVar.f204g;
            this.f215g = kVar.f205h;
            this.f216h = kVar.f206i;
            this.f217i = kVar.f207j;
            this.f218j = kVar.f208k;
        }
    }

    static {
        z.a("goog.exo.datasource");
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
        return c(this.f200c);
    }

    public boolean d(int i10) {
        if ((this.f207j & i10) == i10) {
            return true;
        }
        return false;
    }

    public String toString() {
        return "DataSpec[" + b() + " " + this.f198a + ", " + this.f204g + ", " + this.f205h + ", " + this.f206i + ", " + this.f207j + "]";
    }

    private k(Uri uri, long j10, int i10, @Nullable byte[] bArr, Map<String, String> map, long j11, long j12, @Nullable String str, int i11, @Nullable Object obj) {
        byte[] bArr2 = bArr;
        long j13 = j10 + j11;
        boolean z10 = false;
        b7.a.a(j13 >= 0);
        b7.a.a(j11 >= 0);
        b7.a.a((j12 > 0 || j12 == -1) ? true : z10);
        this.f198a = uri;
        this.f199b = j10;
        this.f200c = i10;
        this.f201d = (bArr2 == null || bArr2.length == 0) ? null : bArr2;
        this.f202e = Collections.unmodifiableMap(new HashMap(map));
        this.f204g = j11;
        this.f203f = j13;
        this.f205h = j12;
        this.f206i = str;
        this.f207j = i11;
        this.f208k = obj;
    }
}
