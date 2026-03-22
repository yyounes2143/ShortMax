package com.mbridge.msdk.thrid.okhttp;

import androidx.collection.SieveCacheKt;
import java.util.concurrent.TimeUnit;
/* compiled from: CacheControl.java */
/* loaded from: classes6.dex */
public final class c {

    /* renamed from: n  reason: collision with root package name */
    public static final c f29475n = new a().b().a();

    /* renamed from: o  reason: collision with root package name */
    public static final c f29476o = new a().c().a(Integer.MAX_VALUE, TimeUnit.SECONDS).a();

    /* renamed from: a  reason: collision with root package name */
    private final boolean f29477a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f29478b;

    /* renamed from: c  reason: collision with root package name */
    private final int f29479c;

    /* renamed from: d  reason: collision with root package name */
    private final int f29480d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f29481e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f29482f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f29483g;

    /* renamed from: h  reason: collision with root package name */
    private final int f29484h;

    /* renamed from: i  reason: collision with root package name */
    private final int f29485i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f29486j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f29487k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f29488l;

    /* renamed from: m  reason: collision with root package name */
    String f29489m;

    private c(boolean z10, boolean z11, int i10, int i11, boolean z12, boolean z13, boolean z14, int i12, int i13, boolean z15, boolean z16, boolean z17, String str) {
        this.f29477a = z10;
        this.f29478b = z11;
        this.f29479c = i10;
        this.f29480d = i11;
        this.f29481e = z12;
        this.f29482f = z13;
        this.f29483g = z14;
        this.f29484h = i12;
        this.f29485i = i13;
        this.f29486j = z15;
        this.f29487k = z16;
        this.f29488l = z17;
        this.f29489m = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.mbridge.msdk.thrid.okhttp.c a(com.mbridge.msdk.thrid.okhttp.p r22) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.thrid.okhttp.c.a(com.mbridge.msdk.thrid.okhttp.p):com.mbridge.msdk.thrid.okhttp.c");
    }

    public boolean b() {
        return this.f29481e;
    }

    public boolean c() {
        return this.f29482f;
    }

    public int d() {
        return this.f29479c;
    }

    public int e() {
        return this.f29484h;
    }

    public int f() {
        return this.f29485i;
    }

    public boolean g() {
        return this.f29483g;
    }

    public boolean h() {
        return this.f29477a;
    }

    public boolean i() {
        return this.f29478b;
    }

    public boolean j() {
        return this.f29486j;
    }

    public String toString() {
        String str = this.f29489m;
        if (str == null) {
            String a10 = a();
            this.f29489m = a10;
            return a10;
        }
        return str;
    }

    /* compiled from: CacheControl.java */
    /* loaded from: classes6.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        boolean f29490a;

        /* renamed from: b  reason: collision with root package name */
        boolean f29491b;

        /* renamed from: c  reason: collision with root package name */
        int f29492c = -1;

        /* renamed from: d  reason: collision with root package name */
        int f29493d = -1;

        /* renamed from: e  reason: collision with root package name */
        int f29494e = -1;

        /* renamed from: f  reason: collision with root package name */
        boolean f29495f;

        /* renamed from: g  reason: collision with root package name */
        boolean f29496g;

        /* renamed from: h  reason: collision with root package name */
        boolean f29497h;

        public a a(int i10, TimeUnit timeUnit) {
            if (i10 >= 0) {
                long seconds = timeUnit.toSeconds(i10);
                this.f29493d = seconds > SieveCacheKt.NodeLinkMask ? Integer.MAX_VALUE : (int) seconds;
                return this;
            }
            throw new IllegalArgumentException("maxStale < 0: " + i10);
        }

        public a b() {
            this.f29490a = true;
            return this;
        }

        public a c() {
            this.f29495f = true;
            return this;
        }

        public c a() {
            return new c(this);
        }
    }

    c(a aVar) {
        this.f29477a = aVar.f29490a;
        this.f29478b = aVar.f29491b;
        this.f29479c = aVar.f29492c;
        this.f29480d = -1;
        this.f29481e = false;
        this.f29482f = false;
        this.f29483g = false;
        this.f29484h = aVar.f29493d;
        this.f29485i = aVar.f29494e;
        this.f29486j = aVar.f29495f;
        this.f29487k = aVar.f29496g;
        this.f29488l = aVar.f29497h;
    }

    private String a() {
        StringBuilder sb2 = new StringBuilder();
        if (this.f29477a) {
            sb2.append("no-cache, ");
        }
        if (this.f29478b) {
            sb2.append("no-store, ");
        }
        if (this.f29479c != -1) {
            sb2.append("max-age=");
            sb2.append(this.f29479c);
            sb2.append(", ");
        }
        if (this.f29480d != -1) {
            sb2.append("s-maxage=");
            sb2.append(this.f29480d);
            sb2.append(", ");
        }
        if (this.f29481e) {
            sb2.append("private, ");
        }
        if (this.f29482f) {
            sb2.append("public, ");
        }
        if (this.f29483g) {
            sb2.append("must-revalidate, ");
        }
        if (this.f29484h != -1) {
            sb2.append("max-stale=");
            sb2.append(this.f29484h);
            sb2.append(", ");
        }
        if (this.f29485i != -1) {
            sb2.append("min-fresh=");
            sb2.append(this.f29485i);
            sb2.append(", ");
        }
        if (this.f29486j) {
            sb2.append("only-if-cached, ");
        }
        if (this.f29487k) {
            sb2.append("no-transform, ");
        }
        if (this.f29488l) {
            sb2.append("immutable, ");
        }
        if (sb2.length() == 0) {
            return "";
        }
        sb2.delete(sb2.length() - 2, sb2.length());
        return sb2.toString();
    }
}
