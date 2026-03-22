package po;

import androidx.annotation.Nullable;
import cn.a0;
import cn.b0;
import cn.m0;
import cn.r;
import com.google.common.collect.ImmutableList;
import com.inmobi.commons.core.configs.AdConfig;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import zm.t;
import zm.u;
/* compiled from: Id3Decoder.java */
/* loaded from: classes8.dex */
public final class h extends ko.c {

    /* renamed from: b  reason: collision with root package name */
    public static final a f64946b = new a() { // from class: po.g
        @Override // po.h.a
        public final boolean evaluate(int i10, int i11, int i12, int i13, int i14) {
            boolean A;
            A = h.A(i10, i11, i12, i13, i14);
            return A;
        }
    };
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final a f64947a;

    /* compiled from: Id3Decoder.java */
    /* loaded from: classes8.dex */
    public interface a {
        boolean evaluate(int i10, int i11, int i12, int i13, int i14);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Id3Decoder.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final int f64948a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f64949b;

        /* renamed from: c  reason: collision with root package name */
        private final int f64950c;

        public b(int i10, boolean z10, int i11) {
            this.f64948a = i10;
            this.f64949b = z10;
            this.f64950c = i11;
        }
    }

    public h() {
        this(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean A(int i10, int i11, int i12, int i13, int i14) {
        return false;
    }

    private static int B(b0 b0Var, int i10) {
        byte[] e10 = b0Var.e();
        int f10 = b0Var.f();
        int i11 = f10;
        while (true) {
            int i12 = i11 + 1;
            if (i12 < f10 + i10) {
                if ((e10[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) == 255 && e10[i12] == 0) {
                    System.arraycopy(e10, i11 + 2, e10, i12, (i10 - (i11 - f10)) - 2);
                    i10--;
                }
                i11 = i12;
            } else {
                return i10;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0079, code lost:
        if ((r10 & 1) != 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007c, code lost:
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0089, code lost:
        if ((r10 & 128) != 0) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean C(cn.b0 r18, int r19, int r20, boolean r21) {
        /*
            r1 = r18
            r0 = r19
            int r2 = r18.f()
        L8:
            int r3 = r18.a()     // Catch: java.lang.Throwable -> L22
            r4 = 1
            r5 = r20
            if (r3 < r5) goto Lae
            r3 = 3
            r6 = 0
            if (r0 < r3) goto L25
            int r7 = r18.q()     // Catch: java.lang.Throwable -> L22
            long r8 = r18.J()     // Catch: java.lang.Throwable -> L22
            int r10 = r18.P()     // Catch: java.lang.Throwable -> L22
            goto L2f
        L22:
            r0 = move-exception
            goto Lb2
        L25:
            int r7 = r18.K()     // Catch: java.lang.Throwable -> L22
            int r8 = r18.K()     // Catch: java.lang.Throwable -> L22
            long r8 = (long) r8
            r10 = r6
        L2f:
            r11 = 0
            if (r7 != 0) goto L3d
            int r7 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1))
            if (r7 != 0) goto L3d
            if (r10 != 0) goto L3d
            r1.W(r2)
            return r4
        L3d:
            r7 = 4
            if (r0 != r7) goto L6e
            if (r21 != 0) goto L6e
            r13 = 8421504(0x808080, double:4.160776E-317)
            long r13 = r13 & r8
            int r11 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1))
            if (r11 == 0) goto L4e
            r1.W(r2)
            return r6
        L4e:
            r11 = 255(0xff, double:1.26E-321)
            long r13 = r8 & r11
            r15 = 8
            long r15 = r8 >> r15
            long r15 = r15 & r11
            r17 = 7
            long r15 = r15 << r17
            long r13 = r13 | r15
            r15 = 16
            long r15 = r8 >> r15
            long r15 = r15 & r11
            r17 = 14
            long r15 = r15 << r17
            long r13 = r13 | r15
            r15 = 24
            long r8 = r8 >> r15
            long r8 = r8 & r11
            r11 = 21
            long r8 = r8 << r11
            long r8 = r8 | r13
        L6e:
            if (r0 != r7) goto L7e
            r3 = r10 & 64
            if (r3 == 0) goto L76
            r3 = r4
            goto L77
        L76:
            r3 = r6
        L77:
            r7 = r10 & 1
            if (r7 == 0) goto L7c
            goto L8e
        L7c:
            r4 = r6
            goto L8e
        L7e:
            if (r0 != r3) goto L8c
            r3 = r10 & 32
            if (r3 == 0) goto L86
            r3 = r4
            goto L87
        L86:
            r3 = r6
        L87:
            r7 = r10 & 128(0x80, float:1.794E-43)
            if (r7 == 0) goto L7c
            goto L8e
        L8c:
            r3 = r6
            r4 = r3
        L8e:
            if (r4 == 0) goto L92
            int r3 = r3 + 4
        L92:
            long r3 = (long) r3
            int r3 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r3 >= 0) goto L9b
            r1.W(r2)
            return r6
        L9b:
            int r3 = r18.a()     // Catch: java.lang.Throwable -> L22
            long r3 = (long) r3
            int r3 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r3 >= 0) goto La8
            r1.W(r2)
            return r6
        La8:
            int r3 = (int) r8
            r1.X(r3)     // Catch: java.lang.Throwable -> L22
            goto L8
        Lae:
            r1.W(r2)
            return r4
        Lb2:
            r1.W(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: po.h.C(cn.b0, int, int, boolean):boolean");
    }

    private static byte[] d(byte[] bArr, int i10, int i11) {
        if (i11 <= i10) {
            return m0.f3619f;
        }
        return Arrays.copyOfRange(bArr, i10, i11);
    }

    private static po.a f(b0 b0Var, int i10, int i11) {
        int z10;
        String str;
        int H = b0Var.H();
        Charset w10 = w(H);
        int i12 = i10 - 1;
        byte[] bArr = new byte[i12];
        b0Var.l(bArr, 0, i12);
        if (i11 == 2) {
            str = "image/" + h7.a.e(new String(bArr, 0, 3, StandardCharsets.ISO_8859_1));
            if ("image/jpg".equals(str)) {
                str = "image/jpeg";
            }
            z10 = 2;
        } else {
            z10 = z(bArr, 0);
            String e10 = h7.a.e(new String(bArr, 0, z10, StandardCharsets.ISO_8859_1));
            if (e10.indexOf(47) == -1) {
                str = "image/" + e10;
            } else {
                str = e10;
            }
        }
        int i13 = bArr[z10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        int i14 = z10 + 2;
        int y10 = y(bArr, i14, H);
        return new po.a(str, new String(bArr, i14, y10 - i14, w10), i13, d(bArr, y10 + v(H), i12));
    }

    private static po.b g(b0 b0Var, int i10, String str) {
        byte[] bArr = new byte[i10];
        b0Var.l(bArr, 0, i10);
        return new po.b(str, bArr);
    }

    private static c h(b0 b0Var, int i10, int i11, boolean z10, int i12, @Nullable a aVar) {
        long j10;
        long j11;
        int f10 = b0Var.f();
        int z11 = z(b0Var.e(), f10);
        String str = new String(b0Var.e(), f10, z11 - f10, StandardCharsets.ISO_8859_1);
        b0Var.W(z11 + 1);
        int q10 = b0Var.q();
        int q11 = b0Var.q();
        long J = b0Var.J();
        if (J == 4294967295L) {
            j10 = -1;
        } else {
            j10 = J;
        }
        long J2 = b0Var.J();
        if (J2 == 4294967295L) {
            j11 = -1;
        } else {
            j11 = J2;
        }
        ArrayList arrayList = new ArrayList();
        int i13 = f10 + i10;
        while (b0Var.f() < i13) {
            i k10 = k(i11, b0Var, z10, i12, aVar);
            if (k10 != null) {
                arrayList.add(k10);
            }
        }
        return new c(str, q10, q11, j10, j11, (i[]) arrayList.toArray(new i[0]));
    }

    private static d i(b0 b0Var, int i10, int i11, boolean z10, int i12, @Nullable a aVar) {
        boolean z11;
        boolean z12;
        int f10 = b0Var.f();
        int z13 = z(b0Var.e(), f10);
        String str = new String(b0Var.e(), f10, z13 - f10, StandardCharsets.ISO_8859_1);
        b0Var.W(z13 + 1);
        int H = b0Var.H();
        if ((H & 2) != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if ((H & 1) != 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        int H2 = b0Var.H();
        String[] strArr = new String[H2];
        for (int i13 = 0; i13 < H2; i13++) {
            int f11 = b0Var.f();
            int z14 = z(b0Var.e(), f11);
            strArr[i13] = new String(b0Var.e(), f11, z14 - f11, StandardCharsets.ISO_8859_1);
            b0Var.W(z14 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i14 = f10 + i10;
        while (b0Var.f() < i14) {
            i k10 = k(i11, b0Var, z10, i12, aVar);
            if (k10 != null) {
                arrayList.add(k10);
            }
        }
        return new d(str, z11, z12, strArr, (i[]) arrayList.toArray(new i[0]));
    }

    @Nullable
    private static e j(b0 b0Var, int i10) {
        if (i10 < 4) {
            return null;
        }
        int H = b0Var.H();
        Charset w10 = w(H);
        byte[] bArr = new byte[3];
        b0Var.l(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i11 = i10 - 4;
        byte[] bArr2 = new byte[i11];
        b0Var.l(bArr2, 0, i11);
        int y10 = y(bArr2, 0, H);
        String str2 = new String(bArr2, 0, y10, w10);
        int v10 = y10 + v(H);
        return new e(str, str2, p(bArr2, v10, y(bArr2, v10, H), w10));
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x0193, code lost:
        if (r13 == 67) goto L98;
     */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0208  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static po.i k(int r20, cn.b0 r21, boolean r22, int r23, @androidx.annotation.Nullable po.h.a r24) {
        /*
            Method dump skipped, instructions count: 564
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: po.h.k(int, cn.b0, boolean, int, po.h$a):po.i");
    }

    private static f l(b0 b0Var, int i10) {
        int H = b0Var.H();
        Charset w10 = w(H);
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        b0Var.l(bArr, 0, i11);
        int z10 = z(bArr, 0);
        String u10 = u.u(new String(bArr, 0, z10, StandardCharsets.ISO_8859_1));
        int i12 = z10 + 1;
        int y10 = y(bArr, i12, H);
        String p10 = p(bArr, i12, y10, w10);
        int v10 = y10 + v(H);
        int y11 = y(bArr, v10, H);
        return new f(u10, p10, p(bArr, v10, y11, w10), d(bArr, y11 + v(H), i11));
    }

    @Nullable
    private static b m(b0 b0Var) {
        int K;
        if (b0Var.a() < 10) {
            r.h("Id3Decoder", "Data too short to be an ID3 tag");
            return null;
        }
        if (b0Var.K() != 4801587) {
            r.h("Id3Decoder", "Unexpected first three bytes of ID3 tag header: 0x" + String.format("%06X", Integer.valueOf(K)));
            return null;
        }
        int H = b0Var.H();
        boolean z10 = true;
        b0Var.X(1);
        int H2 = b0Var.H();
        int G = b0Var.G();
        if (H == 2) {
            if ((H2 & 64) != 0) {
                r.h("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                return null;
            }
        } else if (H == 3) {
            if ((H2 & 64) != 0) {
                int q10 = b0Var.q();
                b0Var.X(q10);
                G -= q10 + 4;
            }
        } else if (H == 4) {
            if ((H2 & 64) != 0) {
                int G2 = b0Var.G();
                b0Var.X(G2 - 4);
                G -= G2;
            }
            if ((H2 & 16) != 0) {
                G -= 10;
            }
        } else {
            r.h("Id3Decoder", "Skipped ID3 tag with unsupported majorVersion=" + H);
            return null;
        }
        return new b(H, (H >= 4 || (H2 & 128) == 0) ? false : false, G);
    }

    private static l n(b0 b0Var, int i10) {
        int P = b0Var.P();
        int K = b0Var.K();
        int K2 = b0Var.K();
        int H = b0Var.H();
        int H2 = b0Var.H();
        a0 a0Var = new a0();
        a0Var.m(b0Var);
        int i11 = ((i10 - 10) * 8) / (H + H2);
        int[] iArr = new int[i11];
        int[] iArr2 = new int[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            int h10 = a0Var.h(H);
            int h11 = a0Var.h(H2);
            iArr[i12] = h10;
            iArr2[i12] = h11;
        }
        return new l(P, K, K2, iArr, iArr2);
    }

    private static m o(b0 b0Var, int i10) {
        byte[] bArr = new byte[i10];
        b0Var.l(bArr, 0, i10);
        int z10 = z(bArr, 0);
        return new m(new String(bArr, 0, z10, StandardCharsets.ISO_8859_1), d(bArr, z10 + 1, i10));
    }

    private static String p(byte[] bArr, int i10, int i11, Charset charset) {
        if (i11 > i10 && i11 <= bArr.length) {
            return new String(bArr, i10, i11 - i10, charset);
        }
        return "";
    }

    @Nullable
    private static n q(b0 b0Var, int i10, String str) {
        if (i10 < 1) {
            return null;
        }
        int H = b0Var.H();
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        b0Var.l(bArr, 0, i11);
        return new n(str, null, r(bArr, H, 0));
    }

    private static ImmutableList<String> r(byte[] bArr, int i10, int i11) {
        if (i11 >= bArr.length) {
            return ImmutableList.B("");
        }
        ImmutableList.a r10 = ImmutableList.r();
        int y10 = y(bArr, i11, i10);
        while (i11 < y10) {
            r10.a(new String(bArr, i11, y10 - i11, w(i10)));
            i11 = v(i10) + y10;
            y10 = y(bArr, i11, i10);
        }
        ImmutableList<String> k10 = r10.k();
        if (k10.isEmpty()) {
            return ImmutableList.B("");
        }
        return k10;
    }

    @Nullable
    private static n s(b0 b0Var, int i10) {
        if (i10 < 1) {
            return null;
        }
        int H = b0Var.H();
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        b0Var.l(bArr, 0, i11);
        int y10 = y(bArr, 0, H);
        return new n("TXXX", new String(bArr, 0, y10, w(H)), r(bArr, H, y10 + v(H)));
    }

    private static o t(b0 b0Var, int i10, String str) {
        byte[] bArr = new byte[i10];
        b0Var.l(bArr, 0, i10);
        return new o(str, null, new String(bArr, 0, z(bArr, 0), StandardCharsets.ISO_8859_1));
    }

    @Nullable
    private static o u(b0 b0Var, int i10) {
        if (i10 < 1) {
            return null;
        }
        int H = b0Var.H();
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        b0Var.l(bArr, 0, i11);
        int y10 = y(bArr, 0, H);
        String str = new String(bArr, 0, y10, w(H));
        int v10 = y10 + v(H);
        return new o("WXXX", str, p(bArr, v10, z(bArr, v10), StandardCharsets.ISO_8859_1));
    }

    private static int v(int i10) {
        if (i10 != 0 && i10 != 3) {
            return 2;
        }
        return 1;
    }

    private static Charset w(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return StandardCharsets.ISO_8859_1;
                }
                return StandardCharsets.UTF_8;
            }
            return StandardCharsets.UTF_16BE;
        }
        return StandardCharsets.UTF_16;
    }

    private static String x(int i10, int i11, int i12, int i13, int i14) {
        if (i10 == 2) {
            return String.format(Locale.US, "%c%c%c", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13));
        }
        return String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14));
    }

    private static int y(byte[] bArr, int i10, int i11) {
        int z10 = z(bArr, i10);
        if (i11 != 0 && i11 != 3) {
            while (z10 < bArr.length - 1) {
                if ((z10 - i10) % 2 == 0 && bArr[z10 + 1] == 0) {
                    return z10;
                }
                z10 = z(bArr, z10 + 1);
            }
            return bArr.length;
        }
        return z10;
    }

    private static int z(byte[] bArr, int i10) {
        while (i10 < bArr.length) {
            if (bArr[i10] == 0) {
                return i10;
            }
            i10++;
        }
        return bArr.length;
    }

    @Override // ko.c
    @Nullable
    protected t b(ko.b bVar, ByteBuffer byteBuffer) {
        return e(byteBuffer.array(), byteBuffer.limit());
    }

    @Nullable
    public t e(byte[] bArr, int i10) {
        int i11;
        ArrayList arrayList = new ArrayList();
        b0 b0Var = new b0(bArr, i10);
        b m10 = m(b0Var);
        if (m10 == null) {
            return null;
        }
        int f10 = b0Var.f();
        if (m10.f64948a == 2) {
            i11 = 6;
        } else {
            i11 = 10;
        }
        int i12 = m10.f64950c;
        if (m10.f64949b) {
            i12 = B(b0Var, m10.f64950c);
        }
        b0Var.V(f10 + i12);
        boolean z10 = false;
        if (!C(b0Var, m10.f64948a, i11, false)) {
            if (m10.f64948a == 4 && C(b0Var, 4, i11, true)) {
                z10 = true;
            } else {
                r.h("Id3Decoder", "Failed to validate ID3 tag with majorVersion=" + m10.f64948a);
                return null;
            }
        }
        while (b0Var.a() >= i11) {
            i k10 = k(m10.f64948a, b0Var, z10, i11, this.f64947a);
            if (k10 != null) {
                arrayList.add(k10);
            }
        }
        return new t(arrayList);
    }

    public h(@Nullable a aVar) {
        this.f64947a = aVar;
    }
}
