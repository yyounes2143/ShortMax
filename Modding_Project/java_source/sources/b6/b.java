package b6;

import android.util.Pair;
import androidx.annotation.Nullable;
import b6.a;
import b7.g0;
import b7.s0;
import b7.u;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry;
import com.google.android.exoplayer2.v0;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import t5.v;
/* compiled from: AtomParsers.java */
/* loaded from: classes4.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f2268a = s0.h0("OpusHead");

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AtomParsers.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f2269a;

        /* renamed from: b  reason: collision with root package name */
        public int f2270b;

        /* renamed from: c  reason: collision with root package name */
        public int f2271c;

        /* renamed from: d  reason: collision with root package name */
        public long f2272d;

        /* renamed from: e  reason: collision with root package name */
        private final boolean f2273e;

        /* renamed from: f  reason: collision with root package name */
        private final g0 f2274f;

        /* renamed from: g  reason: collision with root package name */
        private final g0 f2275g;

        /* renamed from: h  reason: collision with root package name */
        private int f2276h;

        /* renamed from: i  reason: collision with root package name */
        private int f2277i;

        public a(g0 g0Var, g0 g0Var2, boolean z10) throws ParserException {
            this.f2275g = g0Var;
            this.f2274f = g0Var2;
            this.f2273e = z10;
            g0Var2.P(12);
            this.f2269a = g0Var2.H();
            g0Var.P(12);
            this.f2277i = g0Var.H();
            t5.n.a(g0Var.n() == 1, "first_chunk must be 1");
            this.f2270b = -1;
        }

        public boolean a() {
            long F;
            int i10;
            int i11 = this.f2270b + 1;
            this.f2270b = i11;
            if (i11 == this.f2269a) {
                return false;
            }
            if (this.f2273e) {
                F = this.f2274f.I();
            } else {
                F = this.f2274f.F();
            }
            this.f2272d = F;
            if (this.f2270b == this.f2276h) {
                this.f2271c = this.f2275g.H();
                this.f2275g.Q(4);
                int i12 = this.f2277i - 1;
                this.f2277i = i12;
                if (i12 > 0) {
                    i10 = this.f2275g.H() - 1;
                } else {
                    i10 = -1;
                }
                this.f2276h = i10;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AtomParsers.java */
    /* renamed from: b6.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0077b {

        /* renamed from: a  reason: collision with root package name */
        private final String f2278a;

        /* renamed from: b  reason: collision with root package name */
        private final byte[] f2279b;

        /* renamed from: c  reason: collision with root package name */
        private final long f2280c;

        /* renamed from: d  reason: collision with root package name */
        private final long f2281d;

        public C0077b(String str, byte[] bArr, long j10, long j11) {
            this.f2278a = str;
            this.f2279b = bArr;
            this.f2280c = j10;
            this.f2281d = j11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AtomParsers.java */
    /* loaded from: classes4.dex */
    public interface c {
        int a();

        int getSampleCount();

        int readNextSampleSize();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AtomParsers.java */
    /* loaded from: classes4.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final p[] f2282a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public v0 f2283b;

        /* renamed from: c  reason: collision with root package name */
        public int f2284c;

        /* renamed from: d  reason: collision with root package name */
        public int f2285d = 0;

        public d(int i10) {
            this.f2282a = new p[i10];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AtomParsers.java */
    /* loaded from: classes4.dex */
    public static final class e implements c {

        /* renamed from: a  reason: collision with root package name */
        private final int f2286a;

        /* renamed from: b  reason: collision with root package name */
        private final int f2287b;

        /* renamed from: c  reason: collision with root package name */
        private final g0 f2288c;

        public e(a.b bVar, v0 v0Var) {
            g0 g0Var = bVar.f2267b;
            this.f2288c = g0Var;
            g0Var.P(12);
            int H = g0Var.H();
            if (MimeTypes.AUDIO_RAW.equals(v0Var.f19157l)) {
                int Y = s0.Y(v0Var.A, v0Var.f19170y);
                if (H == 0 || H % Y != 0) {
                    b7.q.i("AtomParsers", "Audio sample size mismatch. stsd sample size: " + Y + ", stsz sample size: " + H);
                    H = Y;
                }
            }
            this.f2286a = H == 0 ? -1 : H;
            this.f2287b = g0Var.H();
        }

        @Override // b6.b.c
        public int a() {
            return this.f2286a;
        }

        @Override // b6.b.c
        public int getSampleCount() {
            return this.f2287b;
        }

        @Override // b6.b.c
        public int readNextSampleSize() {
            int i10 = this.f2286a;
            if (i10 == -1) {
                return this.f2288c.H();
            }
            return i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AtomParsers.java */
    /* loaded from: classes4.dex */
    public static final class f implements c {

        /* renamed from: a  reason: collision with root package name */
        private final g0 f2289a;

        /* renamed from: b  reason: collision with root package name */
        private final int f2290b;

        /* renamed from: c  reason: collision with root package name */
        private final int f2291c;

        /* renamed from: d  reason: collision with root package name */
        private int f2292d;

        /* renamed from: e  reason: collision with root package name */
        private int f2293e;

        public f(a.b bVar) {
            g0 g0Var = bVar.f2267b;
            this.f2289a = g0Var;
            g0Var.P(12);
            this.f2291c = g0Var.H() & 255;
            this.f2290b = g0Var.H();
        }

        @Override // b6.b.c
        public int a() {
            return -1;
        }

        @Override // b6.b.c
        public int getSampleCount() {
            return this.f2290b;
        }

        @Override // b6.b.c
        public int readNextSampleSize() {
            int i10 = this.f2291c;
            if (i10 == 8) {
                return this.f2289a.D();
            }
            if (i10 == 16) {
                return this.f2289a.J();
            }
            int i11 = this.f2292d;
            this.f2292d = i11 + 1;
            if (i11 % 2 == 0) {
                int D = this.f2289a.D();
                this.f2293e = D;
                return (D & 240) >> 4;
            }
            return this.f2293e & 15;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AtomParsers.java */
    /* loaded from: classes4.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        private final int f2294a;

        /* renamed from: b  reason: collision with root package name */
        private final long f2295b;

        /* renamed from: c  reason: collision with root package name */
        private final int f2296c;

        public g(int i10, long j10, int i11) {
            this.f2294a = i10;
            this.f2295b = j10;
            this.f2296c = i11;
        }
    }

    public static List<r> A(a.C0076a c0076a, v vVar, long j10, @Nullable DrmInitData drmInitData, boolean z10, boolean z11, h7.e<o, o> eVar) throws ParserException {
        o apply;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < c0076a.f2266d.size(); i10++) {
            a.C0076a c0076a2 = c0076a.f2266d.get(i10);
            if (c0076a2.f2263a == 1953653099 && (apply = eVar.apply(z(c0076a2, (a.b) b7.a.e(c0076a.g(1836476516)), j10, drmInitData, z10, z11))) != null) {
                arrayList.add(v(apply, (a.C0076a) b7.a.e(((a.C0076a) b7.a.e(((a.C0076a) b7.a.e(c0076a2.f(1835297121))).f(1835626086))).f(1937007212)), vVar));
            }
        }
        return arrayList;
    }

    public static Pair<Metadata, Metadata> B(a.b bVar) {
        g0 g0Var = bVar.f2267b;
        g0Var.P(8);
        Metadata metadata = null;
        Metadata metadata2 = null;
        while (g0Var.a() >= 8) {
            int e10 = g0Var.e();
            int n10 = g0Var.n();
            int n11 = g0Var.n();
            if (n11 == 1835365473) {
                g0Var.P(e10);
                metadata = C(g0Var, e10 + n10);
            } else if (n11 == 1936553057) {
                g0Var.P(e10);
                metadata2 = u(g0Var, e10 + n10);
            }
            g0Var.P(e10 + n10);
        }
        return Pair.create(metadata, metadata2);
    }

    @Nullable
    private static Metadata C(g0 g0Var, int i10) {
        g0Var.Q(8);
        e(g0Var);
        while (g0Var.e() < i10) {
            int e10 = g0Var.e();
            int n10 = g0Var.n();
            if (g0Var.n() == 1768715124) {
                g0Var.P(e10);
                return l(g0Var, e10 + n10);
            }
            g0Var.P(e10 + n10);
        }
        return null;
    }

    private static void D(g0 g0Var, int i10, int i11, int i12, int i13, int i14, @Nullable DrmInitData drmInitData, d dVar, int i15) throws ParserException {
        String str;
        DrmInitData drmInitData2;
        byte[] bArr;
        boolean z10;
        int i16;
        int i17;
        byte[] bArr2;
        float f10;
        List<byte[]> list;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        String str2;
        boolean z15;
        boolean z16;
        boolean z17;
        int i18 = i11;
        int i19 = i12;
        DrmInitData drmInitData3 = drmInitData;
        d dVar2 = dVar;
        g0Var.P(i18 + 16);
        g0Var.Q(16);
        int J = g0Var.J();
        int J2 = g0Var.J();
        g0Var.Q(50);
        int e10 = g0Var.e();
        int i20 = i10;
        if (i20 == 1701733238) {
            Pair<Integer, p> s10 = s(g0Var, i18, i19);
            if (s10 != null) {
                i20 = ((Integer) s10.first).intValue();
                if (drmInitData3 == null) {
                    drmInitData3 = null;
                } else {
                    drmInitData3 = drmInitData3.b(((p) s10.second).f2404b);
                }
                dVar2.f2282a[i15] = (p) s10.second;
            }
            g0Var.P(e10);
        }
        String str3 = MimeTypes.VIDEO_H263;
        if (i20 == 1831958048) {
            str = MimeTypes.VIDEO_MPEG;
        } else if (i20 == 1211250227) {
            str = MimeTypes.VIDEO_H263;
        } else {
            str = null;
        }
        float f11 = 1.0f;
        byte[] bArr3 = null;
        String str4 = null;
        List<byte[]> list2 = null;
        int i21 = -1;
        int i22 = -1;
        int i23 = -1;
        int i24 = -1;
        ByteBuffer byteBuffer = null;
        C0077b c0077b = null;
        boolean z18 = false;
        while (true) {
            if (e10 - i18 < i19) {
                g0Var.P(e10);
                int e11 = g0Var.e();
                String str5 = str3;
                int n10 = g0Var.n();
                if (n10 == 0) {
                    drmInitData2 = drmInitData3;
                    if (g0Var.e() - i18 == i19) {
                        break;
                    }
                } else {
                    drmInitData2 = drmInitData3;
                }
                if (n10 > 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                t5.n.a(z10, "childAtomSize must be positive");
                int n11 = g0Var.n();
                if (n11 == 1635148611) {
                    if (str == null) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    t5.n.a(z17, null);
                    g0Var.P(e11 + 8);
                    c7.a b10 = c7.a.b(g0Var);
                    list2 = b10.f3215a;
                    dVar2.f2284c = b10.f3216b;
                    if (!z18) {
                        f11 = b10.f3219e;
                    }
                    str4 = b10.f3220f;
                    str2 = "video/avc";
                } else if (n11 == 1752589123) {
                    if (str == null) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                    t5.n.a(z16, null);
                    g0Var.P(e11 + 8);
                    c7.f a10 = c7.f.a(g0Var);
                    list2 = a10.f3245a;
                    dVar2.f2284c = a10.f3246b;
                    if (!z18) {
                        f11 = a10.f3249e;
                    }
                    str4 = a10.f3250f;
                    str2 = "video/hevc";
                } else {
                    if (n11 == 1685480259 || n11 == 1685485123) {
                        i16 = J2;
                        i17 = i20;
                        bArr2 = bArr3;
                        f10 = f11;
                        list = list2;
                        c7.d a11 = c7.d.a(g0Var);
                        if (a11 != null) {
                            str4 = a11.f3230c;
                            str = "video/dolby-vision";
                        }
                    } else if (n11 == 1987076931) {
                        if (str == null) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        t5.n.a(z15, null);
                        if (i20 == 1987063864) {
                            str2 = MimeTypes.VIDEO_VP8;
                        } else {
                            str2 = MimeTypes.VIDEO_VP9;
                        }
                    } else if (n11 == 1635135811) {
                        if (str == null) {
                            z14 = true;
                        } else {
                            z14 = false;
                        }
                        t5.n.a(z14, null);
                        str2 = com.unity3d.services.core.device.MimeTypes.VIDEO_AV1;
                    } else if (n11 == 1668050025) {
                        if (byteBuffer == null) {
                            byteBuffer = a();
                        }
                        ByteBuffer byteBuffer2 = byteBuffer;
                        byteBuffer2.position(21);
                        byteBuffer2.putShort(g0Var.z());
                        byteBuffer2.putShort(g0Var.z());
                        byteBuffer = byteBuffer2;
                        i16 = J2;
                        i17 = i20;
                        e10 += n10;
                        i18 = i11;
                        i19 = i12;
                        dVar2 = dVar;
                        str3 = str5;
                        drmInitData3 = drmInitData2;
                        i20 = i17;
                        J2 = i16;
                    } else if (n11 == 1835295606) {
                        if (byteBuffer == null) {
                            byteBuffer = a();
                        }
                        ByteBuffer byteBuffer3 = byteBuffer;
                        short z19 = g0Var.z();
                        short z20 = g0Var.z();
                        short z21 = g0Var.z();
                        i17 = i20;
                        short z22 = g0Var.z();
                        short z23 = g0Var.z();
                        List<byte[]> list3 = list2;
                        short z24 = g0Var.z();
                        byte[] bArr4 = bArr3;
                        short z25 = g0Var.z();
                        float f12 = f11;
                        short z26 = g0Var.z();
                        long F = g0Var.F();
                        long F2 = g0Var.F();
                        i16 = J2;
                        byteBuffer3.position(1);
                        byteBuffer3.putShort(z23);
                        byteBuffer3.putShort(z24);
                        byteBuffer3.putShort(z19);
                        byteBuffer3.putShort(z20);
                        byteBuffer3.putShort(z21);
                        byteBuffer3.putShort(z22);
                        byteBuffer3.putShort(z25);
                        byteBuffer3.putShort(z26);
                        byteBuffer3.putShort((short) (F / 10000));
                        byteBuffer3.putShort((short) (F2 / 10000));
                        byteBuffer = byteBuffer3;
                        list2 = list3;
                        bArr3 = bArr4;
                        f11 = f12;
                        e10 += n10;
                        i18 = i11;
                        i19 = i12;
                        dVar2 = dVar;
                        str3 = str5;
                        drmInitData3 = drmInitData2;
                        i20 = i17;
                        J2 = i16;
                    } else {
                        i16 = J2;
                        i17 = i20;
                        bArr2 = bArr3;
                        f10 = f11;
                        list = list2;
                        if (n11 == 1681012275) {
                            if (str == null) {
                                z13 = true;
                            } else {
                                z13 = false;
                            }
                            t5.n.a(z13, null);
                            str = str5;
                        } else if (n11 == 1702061171) {
                            if (str == null) {
                                z12 = true;
                            } else {
                                z12 = false;
                            }
                            t5.n.a(z12, null);
                            c0077b = i(g0Var, e11);
                            String str6 = c0077b.f2278a;
                            byte[] bArr5 = c0077b.f2279b;
                            if (bArr5 != null) {
                                list2 = ImmutableList.B(bArr5);
                            } else {
                                list2 = list;
                            }
                            str = str6;
                            bArr3 = bArr2;
                            f11 = f10;
                            e10 += n10;
                            i18 = i11;
                            i19 = i12;
                            dVar2 = dVar;
                            str3 = str5;
                            drmInitData3 = drmInitData2;
                            i20 = i17;
                            J2 = i16;
                        } else if (n11 == 1885434736) {
                            f11 = q(g0Var, e11);
                            list2 = list;
                            bArr3 = bArr2;
                            z18 = true;
                            e10 += n10;
                            i18 = i11;
                            i19 = i12;
                            dVar2 = dVar;
                            str3 = str5;
                            drmInitData3 = drmInitData2;
                            i20 = i17;
                            J2 = i16;
                        } else if (n11 == 1937126244) {
                            bArr3 = r(g0Var, e11, n10);
                            list2 = list;
                            f11 = f10;
                            e10 += n10;
                            i18 = i11;
                            i19 = i12;
                            dVar2 = dVar;
                            str3 = str5;
                            drmInitData3 = drmInitData2;
                            i20 = i17;
                            J2 = i16;
                        } else if (n11 == 1936995172) {
                            int D = g0Var.D();
                            g0Var.Q(3);
                            if (D == 0) {
                                int D2 = g0Var.D();
                                if (D2 != 0) {
                                    if (D2 != 1) {
                                        if (D2 != 2) {
                                            if (D2 == 3) {
                                                i21 = 3;
                                            }
                                        } else {
                                            i21 = 2;
                                        }
                                    } else {
                                        i21 = 1;
                                    }
                                } else {
                                    i21 = 0;
                                }
                            }
                        } else if (n11 == 1668246642) {
                            int n12 = g0Var.n();
                            if (n12 != 1852009592 && n12 != 1852009571) {
                                b7.q.i("AtomParsers", "Unsupported color type: " + b6.a.a(n12));
                            } else {
                                int J3 = g0Var.J();
                                int J4 = g0Var.J();
                                g0Var.Q(2);
                                if (n10 == 19 && (g0Var.D() & 128) != 0) {
                                    z11 = true;
                                } else {
                                    z11 = false;
                                }
                                i22 = c7.c.b(J3);
                                if (z11) {
                                    i23 = 1;
                                } else {
                                    i23 = 2;
                                }
                                i24 = c7.c.c(J4);
                            }
                        }
                    }
                    list2 = list;
                    bArr3 = bArr2;
                    f11 = f10;
                    e10 += n10;
                    i18 = i11;
                    i19 = i12;
                    dVar2 = dVar;
                    str3 = str5;
                    drmInitData3 = drmInitData2;
                    i20 = i17;
                    J2 = i16;
                }
                str = str2;
                i16 = J2;
                i17 = i20;
                e10 += n10;
                i18 = i11;
                i19 = i12;
                dVar2 = dVar;
                str3 = str5;
                drmInitData3 = drmInitData2;
                i20 = i17;
                J2 = i16;
            } else {
                drmInitData2 = drmInitData3;
                break;
            }
        }
        int i25 = J2;
        byte[] bArr6 = bArr3;
        float f13 = f11;
        List<byte[]> list4 = list2;
        if (str == null) {
            return;
        }
        v0.b M = new v0.b().R(i13).e0(str).I(str4).j0(J).Q(i25).a0(f13).d0(i14).b0(bArr6).h0(i21).T(list4).M(drmInitData2);
        int i26 = i22;
        int i27 = i23;
        int i28 = i24;
        if (i26 != -1 || i27 != -1 || i28 != -1 || byteBuffer != null) {
            if (byteBuffer != null) {
                bArr = byteBuffer.array();
            } else {
                bArr = null;
            }
            M.J(new c7.c(i26, i27, i28, bArr));
        }
        if (c0077b != null) {
            M.G(Ints.l(c0077b.f2280c)).Z(Ints.l(c0077b.f2281d));
        }
        dVar.f2283b = M.E();
    }

    private static ByteBuffer a() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    private static boolean b(long[] jArr, long j10, long j11, long j12) {
        int length = jArr.length - 1;
        int p10 = s0.p(4, 0, length);
        int p11 = s0.p(jArr.length - 4, 0, length);
        if (jArr[0] <= j11 && j11 < jArr[p10] && jArr[p11] < j12 && j12 <= j10) {
            return true;
        }
        return false;
    }

    private static int c(g0 g0Var, int i10, int i11, int i12) throws ParserException {
        boolean z10;
        boolean z11;
        int e10 = g0Var.e();
        if (e10 >= i11) {
            z10 = true;
        } else {
            z10 = false;
        }
        t5.n.a(z10, null);
        while (e10 - i11 < i12) {
            g0Var.P(e10);
            int n10 = g0Var.n();
            if (n10 > 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            t5.n.a(z11, "childAtomSize must be positive");
            if (g0Var.n() == i10) {
                return e10;
            }
            e10 += n10;
        }
        return -1;
    }

    private static int d(int i10) {
        if (i10 == 1936684398) {
            return 1;
        }
        if (i10 == 1986618469) {
            return 2;
        }
        if (i10 != 1952807028 && i10 != 1935832172 && i10 != 1937072756 && i10 != 1668047728) {
            if (i10 == 1835365473) {
                return 5;
            }
            return -1;
        }
        return 3;
    }

    public static void e(g0 g0Var) {
        int e10 = g0Var.e();
        g0Var.Q(4);
        if (g0Var.n() != 1751411826) {
            e10 += 4;
        }
        g0Var.P(e10);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0166  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void f(b7.g0 r22, int r23, int r24, int r25, int r26, java.lang.String r27, boolean r28, @androidx.annotation.Nullable com.google.android.exoplayer2.drm.DrmInitData r29, b6.b.d r30, int r31) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 863
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b6.b.f(b7.g0, int, int, int, int, java.lang.String, boolean, com.google.android.exoplayer2.drm.DrmInitData, b6.b$d, int):void");
    }

    @Nullable
    static Pair<Integer, p> g(g0 g0Var, int i10, int i11) throws ParserException {
        boolean z10;
        boolean z11;
        int i12 = i10 + 8;
        boolean z12 = false;
        int i13 = -1;
        int i14 = 0;
        String str = null;
        Integer num = null;
        while (i12 - i10 < i11) {
            g0Var.P(i12);
            int n10 = g0Var.n();
            int n11 = g0Var.n();
            if (n11 == 1718775137) {
                num = Integer.valueOf(g0Var.n());
            } else if (n11 == 1935894637) {
                g0Var.Q(4);
                str = g0Var.A(4);
            } else if (n11 == 1935894633) {
                i13 = i12;
                i14 = n10;
            }
            i12 += n10;
        }
        if (!C.CENC_TYPE_cenc.equals(str) && !C.CENC_TYPE_cbc1.equals(str) && !C.CENC_TYPE_cens.equals(str) && !C.CENC_TYPE_cbcs.equals(str)) {
            return null;
        }
        if (num != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        t5.n.a(z10, "frma atom is mandatory");
        if (i13 != -1) {
            z11 = true;
        } else {
            z11 = false;
        }
        t5.n.a(z11, "schi atom is mandatory");
        p t10 = t(g0Var, i13, i14, str);
        if (t10 != null) {
            z12 = true;
        }
        t5.n.a(z12, "tenc atom is mandatory");
        return Pair.create(num, (p) s0.j(t10));
    }

    @Nullable
    private static Pair<long[], long[]> h(a.C0076a c0076a) {
        long F;
        long n10;
        a.b g10 = c0076a.g(1701606260);
        if (g10 == null) {
            return null;
        }
        g0 g0Var = g10.f2267b;
        g0Var.P(8);
        int c10 = b6.a.c(g0Var.n());
        int H = g0Var.H();
        long[] jArr = new long[H];
        long[] jArr2 = new long[H];
        for (int i10 = 0; i10 < H; i10++) {
            if (c10 == 1) {
                F = g0Var.I();
            } else {
                F = g0Var.F();
            }
            jArr[i10] = F;
            if (c10 == 1) {
                n10 = g0Var.w();
            } else {
                n10 = g0Var.n();
            }
            jArr2[i10] = n10;
            if (g0Var.z() == 1) {
                g0Var.Q(2);
            } else {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
        }
        return Pair.create(jArr, jArr2);
    }

    private static C0077b i(g0 g0Var, int i10) {
        long j10;
        long j11;
        g0Var.P(i10 + 12);
        g0Var.Q(1);
        j(g0Var);
        g0Var.Q(2);
        int D = g0Var.D();
        if ((D & 128) != 0) {
            g0Var.Q(2);
        }
        if ((D & 64) != 0) {
            g0Var.Q(g0Var.D());
        }
        if ((D & 32) != 0) {
            g0Var.Q(2);
        }
        g0Var.Q(1);
        j(g0Var);
        String f10 = u.f(g0Var.D());
        if (!MimeTypes.AUDIO_MPEG.equals(f10) && !MimeTypes.AUDIO_DTS.equals(f10) && !MimeTypes.AUDIO_DTS_HD.equals(f10)) {
            g0Var.Q(4);
            long F = g0Var.F();
            long F2 = g0Var.F();
            g0Var.Q(1);
            int j12 = j(g0Var);
            byte[] bArr = new byte[j12];
            g0Var.j(bArr, 0, j12);
            if (F2 > 0) {
                j10 = F2;
            } else {
                j10 = -1;
            }
            if (F > 0) {
                j11 = F;
            } else {
                j11 = -1;
            }
            return new C0077b(f10, bArr, j10, j11);
        }
        return new C0077b(f10, null, -1L, -1L);
    }

    private static int j(g0 g0Var) {
        int D = g0Var.D();
        int i10 = D & 127;
        while ((D & 128) == 128) {
            D = g0Var.D();
            i10 = (i10 << 7) | (D & 127);
        }
        return i10;
    }

    private static int k(g0 g0Var) {
        g0Var.P(16);
        return g0Var.n();
    }

    @Nullable
    private static Metadata l(g0 g0Var, int i10) {
        g0Var.Q(8);
        ArrayList arrayList = new ArrayList();
        while (g0Var.e() < i10) {
            Metadata.Entry c10 = h.c(g0Var);
            if (c10 != null) {
                arrayList.add(c10);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static Pair<Long, String> m(g0 g0Var) {
        int i10;
        int i11 = 8;
        g0Var.P(8);
        int c10 = b6.a.c(g0Var.n());
        if (c10 == 0) {
            i10 = 8;
        } else {
            i10 = 16;
        }
        g0Var.Q(i10);
        long F = g0Var.F();
        if (c10 == 0) {
            i11 = 4;
        }
        g0Var.Q(i11);
        int J = g0Var.J();
        return Pair.create(Long.valueOf(F), "" + ((char) (((J >> 10) & 31) + 96)) + ((char) (((J >> 5) & 31) + 96)) + ((char) ((J & 31) + 96)));
    }

    @Nullable
    public static Metadata n(a.C0076a c0076a) {
        a.b g10 = c0076a.g(1751411826);
        a.b g11 = c0076a.g(1801812339);
        a.b g12 = c0076a.g(1768715124);
        if (g10 == null || g11 == null || g12 == null || k(g10.f2267b) != 1835299937) {
            return null;
        }
        g0 g0Var = g11.f2267b;
        g0Var.P(12);
        int n10 = g0Var.n();
        String[] strArr = new String[n10];
        for (int i10 = 0; i10 < n10; i10++) {
            int n11 = g0Var.n();
            g0Var.Q(4);
            strArr[i10] = g0Var.A(n11 - 8);
        }
        g0 g0Var2 = g12.f2267b;
        g0Var2.P(8);
        ArrayList arrayList = new ArrayList();
        while (g0Var2.a() > 8) {
            int e10 = g0Var2.e();
            int n12 = g0Var2.n();
            int n13 = g0Var2.n() - 1;
            if (n13 >= 0 && n13 < n10) {
                MdtaMetadataEntry f10 = h.f(g0Var2, e10 + n12, strArr[n13]);
                if (f10 != null) {
                    arrayList.add(f10);
                }
            } else {
                b7.q.i("AtomParsers", "Skipped metadata with unknown key index: " + n13);
            }
            g0Var2.P(e10 + n12);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static void o(g0 g0Var, int i10, int i11, int i12, d dVar) {
        g0Var.P(i11 + 16);
        if (i10 == 1835365492) {
            g0Var.x();
            String x10 = g0Var.x();
            if (x10 != null) {
                dVar.f2283b = new v0.b().R(i12).e0(x10).E();
            }
        }
    }

    private static long p(g0 g0Var) {
        int i10 = 8;
        g0Var.P(8);
        if (b6.a.c(g0Var.n()) != 0) {
            i10 = 16;
        }
        g0Var.Q(i10);
        return g0Var.F();
    }

    private static float q(g0 g0Var, int i10) {
        g0Var.P(i10 + 8);
        return g0Var.H() / g0Var.H();
    }

    @Nullable
    private static byte[] r(g0 g0Var, int i10, int i11) {
        int i12 = i10 + 8;
        while (i12 - i10 < i11) {
            g0Var.P(i12);
            int n10 = g0Var.n();
            if (g0Var.n() == 1886547818) {
                return Arrays.copyOfRange(g0Var.d(), i12, n10 + i12);
            }
            i12 += n10;
        }
        return null;
    }

    @Nullable
    private static Pair<Integer, p> s(g0 g0Var, int i10, int i11) throws ParserException {
        boolean z10;
        Pair<Integer, p> g10;
        int e10 = g0Var.e();
        while (e10 - i10 < i11) {
            g0Var.P(e10);
            int n10 = g0Var.n();
            if (n10 > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            t5.n.a(z10, "childAtomSize must be positive");
            if (g0Var.n() == 1936289382 && (g10 = g(g0Var, e10, n10)) != null) {
                return g10;
            }
            e10 += n10;
        }
        return null;
    }

    @Nullable
    private static p t(g0 g0Var, int i10, int i11, String str) {
        int i12;
        int i13;
        boolean z10;
        int i14 = i10 + 8;
        while (true) {
            byte[] bArr = null;
            if (i14 - i10 >= i11) {
                return null;
            }
            g0Var.P(i14);
            int n10 = g0Var.n();
            if (g0Var.n() == 1952804451) {
                int c10 = b6.a.c(g0Var.n());
                g0Var.Q(1);
                if (c10 == 0) {
                    g0Var.Q(1);
                    i13 = 0;
                    i12 = 0;
                } else {
                    int D = g0Var.D();
                    i12 = D & 15;
                    i13 = (D & 240) >> 4;
                }
                if (g0Var.D() == 1) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                int D2 = g0Var.D();
                byte[] bArr2 = new byte[16];
                g0Var.j(bArr2, 0, 16);
                if (z10 && D2 == 0) {
                    int D3 = g0Var.D();
                    bArr = new byte[D3];
                    g0Var.j(bArr, 0, D3);
                }
                return new p(z10, str, D2, bArr2, i13, i12, bArr);
            }
            i14 += n10;
        }
    }

    @Nullable
    private static Metadata u(g0 g0Var, int i10) {
        float f10;
        g0Var.Q(12);
        while (g0Var.e() < i10) {
            int e10 = g0Var.e();
            int n10 = g0Var.n();
            if (g0Var.n() == 1935766900) {
                if (n10 < 14) {
                    return null;
                }
                g0Var.Q(5);
                int D = g0Var.D();
                if (D != 12 && D != 13) {
                    return null;
                }
                if (D == 12) {
                    f10 = 240.0f;
                } else {
                    f10 = 120.0f;
                }
                g0Var.Q(1);
                return new Metadata(new SmtaMetadataEntry(f10, g0Var.D()));
            }
            g0Var.P(e10 + n10);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:150:0x03b3  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03b5  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03cd  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0434  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0439  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x043f  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0442  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0445  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0447  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x044b  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x044e  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x045d  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0429 A[EDGE_INSN: B:211:0x0429->B:170:0x0429 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static b6.r v(b6.o r38, b6.a.C0076a r39, t5.v r40) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 1311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b6.b.v(b6.o, b6.a$a, t5.v):b6.r");
    }

    private static d w(g0 g0Var, int i10, int i11, String str, @Nullable DrmInitData drmInitData, boolean z10) throws ParserException {
        boolean z11;
        int i12;
        g0Var.P(12);
        int n10 = g0Var.n();
        d dVar = new d(n10);
        for (int i13 = 0; i13 < n10; i13++) {
            int e10 = g0Var.e();
            int n11 = g0Var.n();
            if (n11 > 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            t5.n.a(z11, "childAtomSize must be positive");
            int n12 = g0Var.n();
            if (n12 == 1635148593 || n12 == 1635148595 || n12 == 1701733238 || n12 == 1831958048 || n12 == 1836070006 || n12 == 1752589105 || n12 == 1751479857 || n12 == 1932670515 || n12 == 1211250227 || n12 == 1987063864 || n12 == 1987063865 || n12 == 1635135537 || n12 == 1685479798 || n12 == 1685479729 || n12 == 1685481573 || n12 == 1685481521) {
                i12 = e10;
                D(g0Var, n12, i12, n11, i10, i11, drmInitData, dVar, i13);
            } else if (n12 != 1836069985 && n12 != 1701733217 && n12 != 1633889587 && n12 != 1700998451 && n12 != 1633889588 && n12 != 1835823201 && n12 != 1685353315 && n12 != 1685353317 && n12 != 1685353320 && n12 != 1685353324 && n12 != 1685353336 && n12 != 1935764850 && n12 != 1935767394 && n12 != 1819304813 && n12 != 1936684916 && n12 != 1953984371 && n12 != 778924082 && n12 != 778924083 && n12 != 1835557169 && n12 != 1835560241 && n12 != 1634492771 && n12 != 1634492791 && n12 != 1970037111 && n12 != 1332770163 && n12 != 1716281667) {
                if (n12 != 1414810956 && n12 != 1954034535 && n12 != 2004251764 && n12 != 1937010800 && n12 != 1664495672) {
                    if (n12 == 1835365492) {
                        o(g0Var, n12, e10, i10, dVar);
                    } else if (n12 == 1667329389) {
                        dVar.f2283b = new v0.b().R(i10).e0(MimeTypes.APPLICATION_CAMERA_MOTION).E();
                    }
                } else {
                    x(g0Var, n12, e10, n11, i10, str, dVar);
                }
                i12 = e10;
            } else {
                i12 = e10;
                f(g0Var, n12, e10, n11, i10, str, z10, drmInitData, dVar, i13);
            }
            g0Var.P(i12 + n11);
        }
        return dVar;
    }

    private static void x(g0 g0Var, int i10, int i11, int i12, int i13, String str, d dVar) {
        g0Var.P(i11 + 16);
        String str2 = MimeTypes.APPLICATION_TTML;
        ImmutableList immutableList = null;
        long j10 = Long.MAX_VALUE;
        if (i10 != 1414810956) {
            if (i10 == 1954034535) {
                int i14 = i12 - 16;
                byte[] bArr = new byte[i14];
                g0Var.j(bArr, 0, i14);
                immutableList = ImmutableList.B(bArr);
                str2 = MimeTypes.APPLICATION_TX3G;
            } else if (i10 == 2004251764) {
                str2 = MimeTypes.APPLICATION_MP4VTT;
            } else if (i10 == 1937010800) {
                j10 = 0;
            } else if (i10 == 1664495672) {
                dVar.f2285d = 1;
                str2 = MimeTypes.APPLICATION_MP4CEA608;
            } else {
                throw new IllegalStateException();
            }
        }
        dVar.f2283b = new v0.b().R(i13).e0(str2).V(str).i0(j10).T(immutableList).E();
    }

    private static g y(g0 g0Var) {
        int i10;
        long j10;
        long I;
        int i11 = 8;
        g0Var.P(8);
        int c10 = b6.a.c(g0Var.n());
        if (c10 == 0) {
            i10 = 8;
        } else {
            i10 = 16;
        }
        g0Var.Q(i10);
        int n10 = g0Var.n();
        g0Var.Q(4);
        int e10 = g0Var.e();
        if (c10 == 0) {
            i11 = 4;
        }
        int i12 = 0;
        int i13 = 0;
        while (true) {
            j10 = -9223372036854775807L;
            if (i13 < i11) {
                if (g0Var.d()[e10 + i13] != -1) {
                    if (c10 == 0) {
                        I = g0Var.F();
                    } else {
                        I = g0Var.I();
                    }
                    if (I != 0) {
                        j10 = I;
                    }
                } else {
                    i13++;
                }
            } else {
                g0Var.Q(i11);
                break;
            }
        }
        g0Var.Q(16);
        int n11 = g0Var.n();
        int n12 = g0Var.n();
        g0Var.Q(4);
        int n13 = g0Var.n();
        int n14 = g0Var.n();
        if (n11 == 0 && n12 == 65536 && n13 == -65536 && n14 == 0) {
            i12 = 90;
        } else if (n11 == 0 && n12 == -65536 && n13 == 65536 && n14 == 0) {
            i12 = 270;
        } else if (n11 == -65536 && n12 == 0 && n13 == 0 && n14 == -65536) {
            i12 = 180;
        }
        return new g(n10, j10, i12);
    }

    @Nullable
    private static o z(a.C0076a c0076a, a.b bVar, long j10, @Nullable DrmInitData drmInitData, boolean z10, boolean z11) throws ParserException {
        a.b bVar2;
        long j11;
        long[] jArr;
        long[] jArr2;
        a.C0076a f10;
        Pair<long[], long[]> h10;
        a.C0076a c0076a2 = (a.C0076a) b7.a.e(c0076a.f(1835297121));
        int d10 = d(k(((a.b) b7.a.e(c0076a2.g(1751411826))).f2267b));
        if (d10 == -1) {
            return null;
        }
        g y10 = y(((a.b) b7.a.e(c0076a.g(1953196132))).f2267b);
        long j12 = -9223372036854775807L;
        if (j10 == -9223372036854775807L) {
            bVar2 = bVar;
            j11 = y10.f2295b;
        } else {
            bVar2 = bVar;
            j11 = j10;
        }
        long p10 = p(bVar2.f2267b);
        if (j11 != -9223372036854775807L) {
            j12 = s0.F0(j11, 1000000L, p10);
        }
        long j13 = j12;
        Pair<Long, String> m10 = m(((a.b) b7.a.e(c0076a2.g(1835296868))).f2267b);
        d w10 = w(((a.b) b7.a.e(((a.C0076a) b7.a.e(((a.C0076a) b7.a.e(c0076a2.f(1835626086))).f(1937007212))).g(1937011556))).f2267b, y10.f2294a, y10.f2296c, (String) m10.second, drmInitData, z11);
        if (!z10 && (f10 = c0076a.f(1701082227)) != null && (h10 = h(f10)) != null) {
            jArr2 = (long[]) h10.second;
            jArr = (long[]) h10.first;
        } else {
            jArr = null;
            jArr2 = null;
        }
        if (w10.f2283b == null) {
            return null;
        }
        return new o(y10.f2294a, d10, ((Long) m10.first).longValue(), p10, j13, w10.f2283b, w10.f2285d, w10.f2282a, w10.f2284c, jArr, jArr2);
    }
}
