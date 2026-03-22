package ip;

import androidx.annotation.Nullable;
import ao.o0;
import ip.l0;
import java.util.Arrays;
/* compiled from: H262Reader.java */
/* loaded from: classes8.dex */
public final class n implements m {

    /* renamed from: r  reason: collision with root package name */
    private static final double[] f59841r = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* renamed from: a  reason: collision with root package name */
    private String f59842a;

    /* renamed from: b  reason: collision with root package name */
    private o0 f59843b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final n0 f59844c;

    /* renamed from: d  reason: collision with root package name */
    private final String f59845d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final cn.b0 f59846e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final w f59847f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean[] f59848g;

    /* renamed from: h  reason: collision with root package name */
    private final a f59849h;

    /* renamed from: i  reason: collision with root package name */
    private long f59850i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f59851j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f59852k;

    /* renamed from: l  reason: collision with root package name */
    private long f59853l;

    /* renamed from: m  reason: collision with root package name */
    private long f59854m;

    /* renamed from: n  reason: collision with root package name */
    private long f59855n;

    /* renamed from: o  reason: collision with root package name */
    private long f59856o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f59857p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f59858q;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: H262Reader.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: e  reason: collision with root package name */
        private static final byte[] f59859e = {0, 0, 1};

        /* renamed from: a  reason: collision with root package name */
        private boolean f59860a;

        /* renamed from: b  reason: collision with root package name */
        public int f59861b;

        /* renamed from: c  reason: collision with root package name */
        public int f59862c;

        /* renamed from: d  reason: collision with root package name */
        public byte[] f59863d;

        public a(int i10) {
            this.f59863d = new byte[i10];
        }

        public void a(byte[] bArr, int i10, int i11) {
            if (!this.f59860a) {
                return;
            }
            int i12 = i11 - i10;
            byte[] bArr2 = this.f59863d;
            int length = bArr2.length;
            int i13 = this.f59861b;
            if (length < i13 + i12) {
                this.f59863d = Arrays.copyOf(bArr2, (i13 + i12) * 2);
            }
            System.arraycopy(bArr, i10, this.f59863d, this.f59861b, i12);
            this.f59861b += i12;
        }

        public boolean b(int i10, int i11) {
            if (this.f59860a) {
                int i12 = this.f59861b - i11;
                this.f59861b = i12;
                if (this.f59862c == 0 && i10 == 181) {
                    this.f59862c = i12;
                } else {
                    this.f59860a = false;
                    return true;
                }
            } else if (i10 == 179) {
                this.f59860a = true;
            }
            byte[] bArr = f59859e;
            a(bArr, 0, bArr.length);
            return false;
        }

        public void c() {
            this.f59860a = false;
            this.f59861b = 0;
            this.f59862c = 0;
        }
    }

    public n(String str) {
        this(null, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.util.Pair<io.bidmachine.media3.common.a, java.lang.Long> e(ip.n.a r8, java.lang.String r9, java.lang.String r10) {
        /*
            byte[] r0 = r8.f59863d
            int r1 = r8.f59861b
            byte[] r0 = java.util.Arrays.copyOf(r0, r1)
            r1 = 4
            r2 = r0[r1]
            r2 = r2 & 255(0xff, float:3.57E-43)
            r3 = 5
            r4 = r0[r3]
            r5 = r4 & 255(0xff, float:3.57E-43)
            r6 = 6
            r6 = r0[r6]
            r6 = r6 & 255(0xff, float:3.57E-43)
            int r2 = r2 << r1
            int r5 = r5 >> r1
            r2 = r2 | r5
            r4 = r4 & 15
            int r4 = r4 << 8
            r4 = r4 | r6
            r5 = 7
            r6 = r0[r5]
            r6 = r6 & 240(0xf0, float:3.36E-43)
            int r6 = r6 >> r1
            r7 = 2
            if (r6 == r7) goto L3e
            r7 = 3
            if (r6 == r7) goto L38
            if (r6 == r1) goto L30
            r1 = 1065353216(0x3f800000, float:1.0)
            goto L44
        L30:
            int r1 = r4 * 121
            float r1 = (float) r1
            int r6 = r2 * 100
        L35:
            float r6 = (float) r6
            float r1 = r1 / r6
            goto L44
        L38:
            int r1 = r4 * 16
            float r1 = (float) r1
            int r6 = r2 * 9
            goto L35
        L3e:
            int r1 = r4 * 4
            float r1 = (float) r1
            int r6 = r2 * 3
            goto L35
        L44:
            io.bidmachine.media3.common.a$b r6 = new io.bidmachine.media3.common.a$b
            r6.<init>()
            io.bidmachine.media3.common.a$b r9 = r6.f0(r9)
            io.bidmachine.media3.common.a$b r9 = r9.U(r10)
            java.lang.String r10 = "video/mpeg2"
            io.bidmachine.media3.common.a$b r9 = r9.u0(r10)
            io.bidmachine.media3.common.a$b r9 = r9.B0(r2)
            io.bidmachine.media3.common.a$b r9 = r9.d0(r4)
            io.bidmachine.media3.common.a$b r9 = r9.q0(r1)
            java.util.List r10 = java.util.Collections.singletonList(r0)
            io.bidmachine.media3.common.a$b r9 = r9.g0(r10)
            io.bidmachine.media3.common.a r9 = r9.N()
            r10 = r0[r5]
            r10 = r10 & 15
            int r10 = r10 + (-1)
            if (r10 < 0) goto L9c
            double[] r1 = ip.n.f59841r
            int r2 = r1.length
            if (r10 >= r2) goto L9c
            r4 = r1[r10]
            int r8 = r8.f59862c
            int r8 = r8 + 9
            r8 = r0[r8]
            r10 = r8 & 96
            int r10 = r10 >> r3
            r8 = r8 & 31
            if (r10 == r8) goto L94
            double r0 = (double) r10
            r2 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r0 = r0 + r2
            int r8 = r8 + 1
            double r2 = (double) r8
            double r0 = r0 / r2
            double r4 = r4 * r0
        L94:
            r0 = 4696837146684686336(0x412e848000000000, double:1000000.0)
            double r0 = r0 / r4
            long r0 = (long) r0
            goto L9e
        L9c:
            r0 = 0
        L9e:
            java.lang.Long r8 = java.lang.Long.valueOf(r0)
            android.util.Pair r8 = android.util.Pair.create(r9, r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ip.n.e(ip.n$a, java.lang.String, java.lang.String):android.util.Pair");
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0144  */
    @Override // ip.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(cn.b0 r21) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ip.n.a(cn.b0):void");
    }

    @Override // ip.m
    public void b(ao.r rVar, l0.d dVar) {
        dVar.a();
        this.f59842a = dVar.b();
        this.f59843b = rVar.track(dVar.c(), 2);
        n0 n0Var = this.f59844c;
        if (n0Var != null) {
            n0Var.b(rVar, dVar);
        }
    }

    @Override // ip.m
    public void c(long j10, int i10) {
        this.f59854m = j10;
    }

    @Override // ip.m
    public void d(boolean z10) {
        cn.a.i(this.f59843b);
        if (z10) {
            boolean z11 = this.f59857p;
            this.f59843b.c(this.f59856o, z11 ? 1 : 0, (int) (this.f59850i - this.f59855n), 0, null);
        }
    }

    @Override // ip.m
    public void seek() {
        dn.g.c(this.f59848g);
        this.f59849h.c();
        w wVar = this.f59847f;
        if (wVar != null) {
            wVar.d();
        }
        this.f59850i = 0L;
        this.f59851j = false;
        this.f59854m = -9223372036854775807L;
        this.f59856o = -9223372036854775807L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(@Nullable n0 n0Var, String str) {
        this.f59844c = n0Var;
        this.f59845d = str;
        this.f59848g = new boolean[4];
        this.f59849h = new a(128);
        if (n0Var != null) {
            this.f59847f = new w(178, 128);
            this.f59846e = new cn.b0();
        } else {
            this.f59847f = null;
            this.f59846e = null;
        }
        this.f59854m = -9223372036854775807L;
        this.f59856o = -9223372036854775807L;
    }
}
