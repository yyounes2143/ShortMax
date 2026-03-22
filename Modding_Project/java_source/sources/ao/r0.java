package ao;

import android.util.Base64;
import androidx.annotation.Nullable;
import com.google.common.collect.ImmutableList;
import com.huawei.hms.framework.common.ContainerUtils;
import io.bidmachine.media3.common.ParserException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* compiled from: VorbisUtil.java */
/* loaded from: classes8.dex */
public final class r0 {

    /* compiled from: VorbisUtil.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f1929a;

        /* renamed from: b  reason: collision with root package name */
        public final String[] f1930b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1931c;

        public a(String str, String[] strArr, int i10) {
            this.f1929a = str;
            this.f1930b = strArr;
            this.f1931c = i10;
        }
    }

    /* compiled from: VorbisUtil.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f1932a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1933b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1934c;

        /* renamed from: d  reason: collision with root package name */
        public final int f1935d;

        public b(boolean z10, int i10, int i11, int i12) {
            this.f1932a = z10;
            this.f1933b = i10;
            this.f1934c = i11;
            this.f1935d = i12;
        }
    }

    /* compiled from: VorbisUtil.java */
    /* loaded from: classes8.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f1936a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1937b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1938c;

        /* renamed from: d  reason: collision with root package name */
        public final int f1939d;

        /* renamed from: e  reason: collision with root package name */
        public final int f1940e;

        /* renamed from: f  reason: collision with root package name */
        public final int f1941f;

        /* renamed from: g  reason: collision with root package name */
        public final int f1942g;

        /* renamed from: h  reason: collision with root package name */
        public final int f1943h;

        /* renamed from: i  reason: collision with root package name */
        public final boolean f1944i;

        /* renamed from: j  reason: collision with root package name */
        public final byte[] f1945j;

        public c(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, boolean z10, byte[] bArr) {
            this.f1936a = i10;
            this.f1937b = i11;
            this.f1938c = i12;
            this.f1939d = i13;
            this.f1940e = i14;
            this.f1941f = i15;
            this.f1942g = i16;
            this.f1943h = i17;
            this.f1944i = z10;
            this.f1945j = bArr;
        }
    }

    @Nullable
    public static int[] a(int i10) {
        if (i10 != 3) {
            if (i10 != 5) {
                if (i10 != 6) {
                    if (i10 != 7) {
                        if (i10 != 8) {
                            return null;
                        }
                        return new int[]{0, 2, 1, 7, 5, 6, 3, 4};
                    }
                    return new int[]{0, 2, 1, 6, 5, 3, 4};
                }
                return new int[]{0, 2, 1, 5, 3, 4};
            }
            return new int[]{0, 2, 1, 3, 4};
        }
        return new int[]{0, 2, 1};
    }

    public static int b(int i10) {
        int i11 = 0;
        while (i10 > 0) {
            i11++;
            i10 >>>= 1;
        }
        return i11;
    }

    private static long c(long j10, long j11) {
        return (long) Math.floor(Math.pow(j10, 1.0d / j11));
    }

    @Nullable
    public static zm.t d(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            String str = list.get(i10);
            String[] n12 = cn.m0.n1(str, ContainerUtils.KEY_VALUE_DELIMITER);
            if (n12.length != 2) {
                cn.r.h("VorbisUtil", "Failed to parse Vorbis comment: " + str);
            } else if (n12[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(no.a.b(new cn.b0(Base64.decode(n12[1], 0))));
                } catch (RuntimeException e10) {
                    cn.r.i("VorbisUtil", "Failed to parse vorbis picture", e10);
                }
            } else {
                arrayList.add(new so.a(n12[0], n12[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new zm.t(arrayList);
    }

    public static ImmutableList<byte[]> e(byte[] bArr) {
        cn.b0 b0Var = new cn.b0(bArr);
        b0Var.X(1);
        int i10 = 0;
        while (b0Var.a() > 0 && b0Var.j() == 255) {
            i10 += 255;
            b0Var.X(1);
        }
        int H = i10 + b0Var.H();
        int i11 = 0;
        while (b0Var.a() > 0 && b0Var.j() == 255) {
            i11 += 255;
            b0Var.X(1);
        }
        int H2 = i11 + b0Var.H();
        byte[] bArr2 = new byte[H];
        int f10 = b0Var.f();
        System.arraycopy(bArr, f10, bArr2, 0, H);
        int i12 = f10 + H + H2;
        int length = bArr.length - i12;
        byte[] bArr3 = new byte[length];
        System.arraycopy(bArr, i12, bArr3, 0, length);
        return ImmutableList.C(bArr2, bArr3);
    }

    private static void f(q0 q0Var) throws ParserException {
        int d10 = q0Var.d(6) + 1;
        for (int i10 = 0; i10 < d10; i10++) {
            int d11 = q0Var.d(16);
            if (d11 != 0) {
                if (d11 == 1) {
                    int d12 = q0Var.d(5);
                    int[] iArr = new int[d12];
                    int i11 = -1;
                    for (int i12 = 0; i12 < d12; i12++) {
                        int d13 = q0Var.d(4);
                        iArr[i12] = d13;
                        if (d13 > i11) {
                            i11 = d13;
                        }
                    }
                    int i13 = i11 + 1;
                    int[] iArr2 = new int[i13];
                    for (int i14 = 0; i14 < i13; i14++) {
                        iArr2[i14] = q0Var.d(3) + 1;
                        int d14 = q0Var.d(2);
                        if (d14 > 0) {
                            q0Var.e(8);
                        }
                        for (int i15 = 0; i15 < (1 << d14); i15++) {
                            q0Var.e(8);
                        }
                    }
                    q0Var.e(2);
                    int d15 = q0Var.d(4);
                    int i16 = 0;
                    int i17 = 0;
                    for (int i18 = 0; i18 < d12; i18++) {
                        i16 += iArr2[iArr[i18]];
                        while (i17 < i16) {
                            q0Var.e(d15);
                            i17++;
                        }
                    }
                } else {
                    throw ParserException.b("floor type greater than 1 not decodable: " + d11, null);
                }
            } else {
                q0Var.e(8);
                q0Var.e(16);
                q0Var.e(16);
                q0Var.e(6);
                q0Var.e(8);
                int d16 = q0Var.d(4) + 1;
                for (int i19 = 0; i19 < d16; i19++) {
                    q0Var.e(8);
                }
            }
        }
    }

    private static void g(int i10, q0 q0Var) throws ParserException {
        int i11;
        int d10 = q0Var.d(6) + 1;
        for (int i12 = 0; i12 < d10; i12++) {
            int d11 = q0Var.d(16);
            if (d11 != 0) {
                cn.r.c("VorbisUtil", "mapping type other than 0 not supported: " + d11);
            } else {
                if (q0Var.c()) {
                    i11 = q0Var.d(4) + 1;
                } else {
                    i11 = 1;
                }
                if (q0Var.c()) {
                    int d12 = q0Var.d(8) + 1;
                    for (int i13 = 0; i13 < d12; i13++) {
                        int i14 = i10 - 1;
                        q0Var.e(b(i14));
                        q0Var.e(b(i14));
                    }
                }
                if (q0Var.d(2) == 0) {
                    if (i11 > 1) {
                        for (int i15 = 0; i15 < i10; i15++) {
                            q0Var.e(4);
                        }
                    }
                    for (int i16 = 0; i16 < i11; i16++) {
                        q0Var.e(8);
                        q0Var.e(8);
                        q0Var.e(8);
                    }
                } else {
                    throw ParserException.b("to reserved bits must be zero after mapping coupling steps", null);
                }
            }
        }
    }

    private static b[] h(q0 q0Var) {
        int d10 = q0Var.d(6) + 1;
        b[] bVarArr = new b[d10];
        for (int i10 = 0; i10 < d10; i10++) {
            bVarArr[i10] = new b(q0Var.c(), q0Var.d(16), q0Var.d(16), q0Var.d(8));
        }
        return bVarArr;
    }

    private static void i(q0 q0Var) throws ParserException {
        int i10;
        int d10 = q0Var.d(6) + 1;
        for (int i11 = 0; i11 < d10; i11++) {
            if (q0Var.d(16) <= 2) {
                q0Var.e(24);
                q0Var.e(24);
                q0Var.e(24);
                int d11 = q0Var.d(6) + 1;
                q0Var.e(8);
                int[] iArr = new int[d11];
                for (int i12 = 0; i12 < d11; i12++) {
                    int d12 = q0Var.d(3);
                    if (q0Var.c()) {
                        i10 = q0Var.d(5);
                    } else {
                        i10 = 0;
                    }
                    iArr[i12] = (i10 * 8) + d12;
                }
                for (int i13 = 0; i13 < d11; i13++) {
                    for (int i14 = 0; i14 < 8; i14++) {
                        if ((iArr[i13] & (1 << i14)) != 0) {
                            q0Var.e(8);
                        }
                    }
                }
            } else {
                throw ParserException.b("residueType greater than 2 is not decodable", null);
            }
        }
    }

    public static a j(cn.b0 b0Var) throws ParserException {
        return k(b0Var, true, true);
    }

    public static a k(cn.b0 b0Var, boolean z10, boolean z11) throws ParserException {
        if (z10) {
            o(3, b0Var, false);
        }
        String E = b0Var.E((int) b0Var.x());
        int length = E.length();
        long x10 = b0Var.x();
        String[] strArr = new String[(int) x10];
        int i10 = length + 15;
        for (int i11 = 0; i11 < x10; i11++) {
            String E2 = b0Var.E((int) b0Var.x());
            strArr[i11] = E2;
            i10 = i10 + 4 + E2.length();
        }
        if (z11 && (b0Var.H() & 1) == 0) {
            throw ParserException.b("framing bit expected to be set", null);
        }
        return new a(E, strArr, i10 + 1);
    }

    public static c l(cn.b0 b0Var) throws ParserException {
        boolean z10 = true;
        o(1, b0Var, false);
        int y10 = b0Var.y();
        int H = b0Var.H();
        int y11 = b0Var.y();
        int u10 = b0Var.u();
        if (u10 <= 0) {
            u10 = -1;
        }
        int u11 = b0Var.u();
        if (u11 <= 0) {
            u11 = -1;
        }
        int u12 = b0Var.u();
        if (u12 <= 0) {
            u12 = -1;
        }
        int H2 = b0Var.H();
        int pow = (int) Math.pow(2.0d, H2 & 15);
        int pow2 = (int) Math.pow(2.0d, (H2 & 240) >> 4);
        if ((b0Var.H() & 1) <= 0) {
            z10 = false;
        }
        return new c(y10, H, y11, u10, u11, u12, pow, pow2, z10, Arrays.copyOf(b0Var.e(), b0Var.g()));
    }

    public static b[] m(cn.b0 b0Var, int i10) throws ParserException {
        o(5, b0Var, false);
        int H = b0Var.H() + 1;
        q0 q0Var = new q0(b0Var.e());
        q0Var.e(b0Var.f() * 8);
        for (int i11 = 0; i11 < H; i11++) {
            n(q0Var);
        }
        int d10 = q0Var.d(6) + 1;
        for (int i12 = 0; i12 < d10; i12++) {
            if (q0Var.d(16) != 0) {
                throw ParserException.b("placeholder of time domain transforms not zeroed out", null);
            }
        }
        f(q0Var);
        i(q0Var);
        g(i10, q0Var);
        b[] h10 = h(q0Var);
        if (q0Var.c()) {
            return h10;
        }
        throw ParserException.b("framing bit after modes not set as expected", null);
    }

    private static void n(q0 q0Var) throws ParserException {
        long j10;
        if (q0Var.d(24) == 5653314) {
            int d10 = q0Var.d(16);
            int d11 = q0Var.d(24);
            int i10 = 0;
            if (!q0Var.c()) {
                boolean c10 = q0Var.c();
                while (i10 < d11) {
                    if (c10) {
                        if (q0Var.c()) {
                            q0Var.e(5);
                        }
                    } else {
                        q0Var.e(5);
                    }
                    i10++;
                }
            } else {
                q0Var.e(5);
                while (i10 < d11) {
                    i10 += q0Var.d(b(d11 - i10));
                }
            }
            int d12 = q0Var.d(4);
            if (d12 <= 2) {
                if (d12 == 1 || d12 == 2) {
                    q0Var.e(32);
                    q0Var.e(32);
                    int d13 = q0Var.d(4) + 1;
                    q0Var.e(1);
                    if (d12 == 1) {
                        if (d10 != 0) {
                            j10 = c(d11, d10);
                        } else {
                            j10 = 0;
                        }
                    } else {
                        j10 = d10 * d11;
                    }
                    q0Var.e((int) (j10 * d13));
                    return;
                }
                return;
            }
            throw ParserException.b("lookup type greater than 2 not decodable: " + d12, null);
        }
        throw ParserException.b("expected code book to start with [0x56, 0x43, 0x42] at " + q0Var.b(), null);
    }

    public static boolean o(int i10, cn.b0 b0Var, boolean z10) throws ParserException {
        if (b0Var.a() < 7) {
            if (z10) {
                return false;
            }
            throw ParserException.b("too short header: " + b0Var.a(), null);
        } else if (b0Var.H() != i10) {
            if (z10) {
                return false;
            }
            throw ParserException.b("expected header type " + Integer.toHexString(i10), null);
        } else if (b0Var.H() == 118 && b0Var.H() == 111 && b0Var.H() == 114 && b0Var.H() == 98 && b0Var.H() == 105 && b0Var.H() == 115) {
            return true;
        } else {
            if (z10) {
                return false;
            }
            throw ParserException.b("expected characters 'vorbis'", null);
        }
    }
}
