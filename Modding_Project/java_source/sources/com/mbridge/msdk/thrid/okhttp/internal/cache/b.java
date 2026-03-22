package com.mbridge.msdk.thrid.okhttp.internal.cache;

import com.mbridge.msdk.foundation.download.Command;
import com.mbridge.msdk.thrid.okhttp.internal.http.d;
import com.mbridge.msdk.thrid.okhttp.internal.http.e;
import com.mbridge.msdk.thrid.okhttp.p;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.y;
import com.vungle.ads.internal.signals.SignalManager;
import java.util.Date;
import java.util.concurrent.TimeUnit;
/* compiled from: CacheStrategy.java */
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final w f29622a;

    /* renamed from: b  reason: collision with root package name */
    public final y f29623b;

    b(w wVar, y yVar) {
        this.f29622a = wVar;
        this.f29623b = yVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0056, code lost:
        if (r3.h().b() == false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(com.mbridge.msdk.thrid.okhttp.y r3, com.mbridge.msdk.thrid.okhttp.w r4) {
        /*
            int r0 = r3.k()
            r1 = 200(0xc8, float:2.8E-43)
            r2 = 0
            if (r0 == r1) goto L5a
            r1 = 410(0x19a, float:5.75E-43)
            if (r0 == r1) goto L5a
            r1 = 414(0x19e, float:5.8E-43)
            if (r0 == r1) goto L5a
            r1 = 501(0x1f5, float:7.02E-43)
            if (r0 == r1) goto L5a
            r1 = 203(0xcb, float:2.84E-43)
            if (r0 == r1) goto L5a
            r1 = 204(0xcc, float:2.86E-43)
            if (r0 == r1) goto L5a
            r1 = 307(0x133, float:4.3E-43)
            if (r0 == r1) goto L31
            r1 = 308(0x134, float:4.32E-43)
            if (r0 == r1) goto L5a
            r1 = 404(0x194, float:5.66E-43)
            if (r0 == r1) goto L5a
            r1 = 405(0x195, float:5.68E-43)
            if (r0 == r1) goto L5a
            switch(r0) {
                case 300: goto L5a;
                case 301: goto L5a;
                case 302: goto L31;
                default: goto L30;
            }
        L30:
            goto L59
        L31:
            java.lang.String r0 = "Expires"
            java.lang.String r0 = r3.b(r0)
            if (r0 != 0) goto L5a
            com.mbridge.msdk.thrid.okhttp.c r0 = r3.h()
            int r0 = r0.d()
            r1 = -1
            if (r0 != r1) goto L5a
            com.mbridge.msdk.thrid.okhttp.c r0 = r3.h()
            boolean r0 = r0.c()
            if (r0 != 0) goto L5a
            com.mbridge.msdk.thrid.okhttp.c r0 = r3.h()
            boolean r0 = r0.b()
            if (r0 == 0) goto L59
            goto L5a
        L59:
            return r2
        L5a:
            com.mbridge.msdk.thrid.okhttp.c r3 = r3.h()
            boolean r3 = r3.i()
            if (r3 != 0) goto L6f
            com.mbridge.msdk.thrid.okhttp.c r3 = r4.b()
            boolean r3 = r3.i()
            if (r3 != 0) goto L6f
            r2 = 1
        L6f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.thrid.okhttp.internal.cache.b.a(com.mbridge.msdk.thrid.okhttp.y, com.mbridge.msdk.thrid.okhttp.w):boolean");
    }

    /* compiled from: CacheStrategy.java */
    /* loaded from: classes6.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final long f29624a;

        /* renamed from: b  reason: collision with root package name */
        final w f29625b;

        /* renamed from: c  reason: collision with root package name */
        final y f29626c;

        /* renamed from: d  reason: collision with root package name */
        private Date f29627d;

        /* renamed from: e  reason: collision with root package name */
        private String f29628e;

        /* renamed from: f  reason: collision with root package name */
        private Date f29629f;

        /* renamed from: g  reason: collision with root package name */
        private String f29630g;

        /* renamed from: h  reason: collision with root package name */
        private Date f29631h;

        /* renamed from: i  reason: collision with root package name */
        private long f29632i;

        /* renamed from: j  reason: collision with root package name */
        private long f29633j;

        /* renamed from: k  reason: collision with root package name */
        private String f29634k;

        /* renamed from: l  reason: collision with root package name */
        private int f29635l;

        public a(long j10, w wVar, y yVar) {
            this.f29635l = -1;
            this.f29624a = j10;
            this.f29625b = wVar;
            this.f29626c = yVar;
            if (yVar != null) {
                this.f29632i = yVar.s();
                this.f29633j = yVar.q();
                p m10 = yVar.m();
                int b10 = m10.b();
                for (int i10 = 0; i10 < b10; i10++) {
                    String a10 = m10.a(i10);
                    String b11 = m10.b(i10);
                    if ("Date".equalsIgnoreCase(a10)) {
                        this.f29627d = d.a(b11);
                        this.f29628e = b11;
                    } else if ("Expires".equalsIgnoreCase(a10)) {
                        this.f29631h = d.a(b11);
                    } else if ("Last-Modified".equalsIgnoreCase(a10)) {
                        this.f29629f = d.a(b11);
                        this.f29630g = b11;
                    } else if (Command.HTTP_HEADER_ETAG.equalsIgnoreCase(a10)) {
                        this.f29634k = b11;
                    } else if ("Age".equalsIgnoreCase(a10)) {
                        this.f29635l = e.a(b11, -1);
                    }
                }
            }
        }

        private long a() {
            Date date = this.f29627d;
            long max = date != null ? Math.max(0L, this.f29633j - date.getTime()) : 0L;
            int i10 = this.f29635l;
            if (i10 != -1) {
                max = Math.max(max, TimeUnit.SECONDS.toMillis(i10));
            }
            long j10 = this.f29633j;
            return max + (j10 - this.f29632i) + (this.f29624a - j10);
        }

        private long b() {
            long j10;
            long j11;
            com.mbridge.msdk.thrid.okhttp.c h10 = this.f29626c.h();
            if (h10.d() != -1) {
                return TimeUnit.SECONDS.toMillis(h10.d());
            }
            if (this.f29631h != null) {
                Date date = this.f29627d;
                if (date != null) {
                    j11 = date.getTime();
                } else {
                    j11 = this.f29633j;
                }
                long time = this.f29631h.getTime() - j11;
                if (time <= 0) {
                    return 0L;
                }
                return time;
            } else if (this.f29629f == null || this.f29626c.r().g().k() != null) {
                return 0L;
            } else {
                Date date2 = this.f29627d;
                if (date2 != null) {
                    j10 = date2.getTime();
                } else {
                    j10 = this.f29632i;
                }
                long time2 = j10 - this.f29629f.getTime();
                if (time2 <= 0) {
                    return 0L;
                }
                return time2 / 10;
            }
        }

        private b d() {
            long j10;
            String str;
            if (this.f29626c == null) {
                return new b(this.f29625b, null);
            }
            if (this.f29625b.d() && this.f29626c.l() == null) {
                return new b(this.f29625b, null);
            }
            if (!b.a(this.f29626c, this.f29625b)) {
                return new b(this.f29625b, null);
            }
            com.mbridge.msdk.thrid.okhttp.c b10 = this.f29625b.b();
            if (!b10.h() && !a(this.f29625b)) {
                com.mbridge.msdk.thrid.okhttp.c h10 = this.f29626c.h();
                long a10 = a();
                long b11 = b();
                if (b10.d() != -1) {
                    b11 = Math.min(b11, TimeUnit.SECONDS.toMillis(b10.d()));
                }
                long j11 = 0;
                if (b10.f() != -1) {
                    j10 = TimeUnit.SECONDS.toMillis(b10.f());
                } else {
                    j10 = 0;
                }
                if (!h10.g() && b10.e() != -1) {
                    j11 = TimeUnit.SECONDS.toMillis(b10.e());
                }
                if (!h10.h()) {
                    long j12 = j10 + a10;
                    if (j12 < j11 + b11) {
                        y.a o10 = this.f29626c.o();
                        if (j12 >= b11) {
                            o10.a("Warning", "110 HttpURLConnection \"Response is stale\"");
                        }
                        if (a10 > SignalManager.TWENTY_FOUR_HOURS_MILLIS && e()) {
                            o10.a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                        }
                        return new b(null, o10.a());
                    }
                }
                String str2 = this.f29634k;
                if (str2 != null) {
                    str = "If-None-Match";
                } else {
                    if (this.f29629f != null) {
                        str2 = this.f29630g;
                    } else if (this.f29627d != null) {
                        str2 = this.f29628e;
                    } else {
                        return new b(this.f29625b, null);
                    }
                    str = "If-Modified-Since";
                }
                p.a a11 = this.f29625b.c().a();
                com.mbridge.msdk.thrid.okhttp.internal.a.f29599a.a(a11, str, str2);
                return new b(this.f29625b.f().a(a11.a()).a(), this.f29626c);
            }
            return new b(this.f29625b, null);
        }

        private boolean e() {
            if (this.f29626c.h().d() == -1 && this.f29631h == null) {
                return true;
            }
            return false;
        }

        public b c() {
            b d10 = d();
            if (d10.f29622a != null && this.f29625b.b().j()) {
                return new b(null, null);
            }
            return d10;
        }

        private static boolean a(w wVar) {
            return (wVar.a("If-Modified-Since") == null && wVar.a("If-None-Match") == null) ? false : true;
        }
    }
}
