package d6;

import androidx.annotation.Nullable;
import d6.i0;
import java.util.Arrays;
/* compiled from: H262Reader.java */
/* loaded from: classes4.dex */
public final class n implements m {

    /* renamed from: q  reason: collision with root package name */
    private static final double[] f49999q = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* renamed from: a  reason: collision with root package name */
    private String f50000a;

    /* renamed from: b  reason: collision with root package name */
    private t5.b0 f50001b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final k0 f50002c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final b7.g0 f50003d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final u f50004e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean[] f50005f;

    /* renamed from: g  reason: collision with root package name */
    private final a f50006g;

    /* renamed from: h  reason: collision with root package name */
    private long f50007h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f50008i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f50009j;

    /* renamed from: k  reason: collision with root package name */
    private long f50010k;

    /* renamed from: l  reason: collision with root package name */
    private long f50011l;

    /* renamed from: m  reason: collision with root package name */
    private long f50012m;

    /* renamed from: n  reason: collision with root package name */
    private long f50013n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f50014o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f50015p;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: H262Reader.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: e  reason: collision with root package name */
        private static final byte[] f50016e = {0, 0, 1};

        /* renamed from: a  reason: collision with root package name */
        private boolean f50017a;

        /* renamed from: b  reason: collision with root package name */
        public int f50018b;

        /* renamed from: c  reason: collision with root package name */
        public int f50019c;

        /* renamed from: d  reason: collision with root package name */
        public byte[] f50020d;

        public a(int i10) {
            this.f50020d = new byte[i10];
        }

        public void a(byte[] bArr, int i10, int i11) {
            if (!this.f50017a) {
                return;
            }
            int i12 = i11 - i10;
            byte[] bArr2 = this.f50020d;
            int length = bArr2.length;
            int i13 = this.f50018b;
            if (length < i13 + i12) {
                this.f50020d = Arrays.copyOf(bArr2, (i13 + i12) * 2);
            }
            System.arraycopy(bArr, i10, this.f50020d, this.f50018b, i12);
            this.f50018b += i12;
        }

        public boolean b(int i10, int i11) {
            if (this.f50017a) {
                int i12 = this.f50018b - i11;
                this.f50018b = i12;
                if (this.f50019c == 0 && i10 == 181) {
                    this.f50019c = i12;
                } else {
                    this.f50017a = false;
                    return true;
                }
            } else if (i10 == 179) {
                this.f50017a = true;
            }
            byte[] bArr = f50016e;
            a(bArr, 0, bArr.length);
            return false;
        }

        public void c() {
            this.f50017a = false;
            this.f50018b = 0;
            this.f50019c = 0;
        }
    }

    public n() {
        this(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.util.Pair<com.google.android.exoplayer2.v0, java.lang.Long> a(d6.n.a r8, java.lang.String r9) {
        /*
            byte[] r0 = r8.f50020d
            int r1 = r8.f50018b
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
            com.google.android.exoplayer2.v0$b r6 = new com.google.android.exoplayer2.v0$b
            r6.<init>()
            com.google.android.exoplayer2.v0$b r9 = r6.S(r9)
            java.lang.String r6 = "video/mpeg2"
            com.google.android.exoplayer2.v0$b r9 = r9.e0(r6)
            com.google.android.exoplayer2.v0$b r9 = r9.j0(r2)
            com.google.android.exoplayer2.v0$b r9 = r9.Q(r4)
            com.google.android.exoplayer2.v0$b r9 = r9.a0(r1)
            java.util.List r1 = java.util.Collections.singletonList(r0)
            com.google.android.exoplayer2.v0$b r9 = r9.T(r1)
            com.google.android.exoplayer2.v0 r9 = r9.E()
            r1 = r0[r5]
            r1 = r1 & 15
            int r1 = r1 + (-1)
            if (r1 < 0) goto L98
            double[] r2 = d6.n.f49999q
            int r4 = r2.length
            if (r1 >= r4) goto L98
            r1 = r2[r1]
            int r8 = r8.f50019c
            int r8 = r8 + 9
            r8 = r0[r8]
            r0 = r8 & 96
            int r0 = r0 >> r3
            r8 = r8 & 31
            if (r0 == r8) goto L90
            double r3 = (double) r0
            r5 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r3 = r3 + r5
            int r8 = r8 + 1
            double r5 = (double) r8
            double r3 = r3 / r5
            double r1 = r1 * r3
        L90:
            r3 = 4696837146684686336(0x412e848000000000, double:1000000.0)
            double r3 = r3 / r1
            long r0 = (long) r3
            goto L9a
        L98:
            r0 = 0
        L9a:
            java.lang.Long r8 = java.lang.Long.valueOf(r0)
            android.util.Pair r8 = android.util.Pair.create(r9, r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: d6.n.a(d6.n$a, java.lang.String):android.util.Pair");
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0142  */
    @Override // d6.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(b7.g0 r21) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d6.n.b(b7.g0):void");
    }

    @Override // d6.m
    public void c(long j10, int i10) {
        this.f50011l = j10;
    }

    @Override // d6.m
    public void d(t5.m mVar, i0.d dVar) {
        dVar.a();
        this.f50000a = dVar.b();
        this.f50001b = mVar.track(dVar.c(), 2);
        k0 k0Var = this.f50002c;
        if (k0Var != null) {
            k0Var.b(mVar, dVar);
        }
    }

    @Override // d6.m
    public void seek() {
        b7.v.a(this.f50005f);
        this.f50006g.c();
        u uVar = this.f50004e;
        if (uVar != null) {
            uVar.d();
        }
        this.f50007h = 0L;
        this.f50008i = false;
        this.f50011l = -9223372036854775807L;
        this.f50013n = -9223372036854775807L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(@Nullable k0 k0Var) {
        this.f50002c = k0Var;
        this.f50005f = new boolean[4];
        this.f50006g = new a(128);
        if (k0Var != null) {
            this.f50004e = new u(178, 128);
            this.f50003d = new b7.g0();
        } else {
            this.f50004e = null;
            this.f50003d = null;
        }
        this.f50011l = -9223372036854775807L;
        this.f50013n = -9223372036854775807L;
    }

    @Override // d6.m
    public void packetFinished() {
    }
}
