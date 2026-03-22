package t5;

import android.util.Base64;
import androidx.annotation.Nullable;
import b7.g0;
import b7.s0;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.android.exoplayer2.metadata.vorbis.VorbisComment;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* compiled from: VorbisUtil.java */
/* loaded from: classes4.dex */
public final class e0 {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: VorbisUtil.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f67135a;

        /* renamed from: b  reason: collision with root package name */
        public final int f67136b;

        /* renamed from: c  reason: collision with root package name */
        public final long[] f67137c;

        /* renamed from: d  reason: collision with root package name */
        public final int f67138d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f67139e;

        public a(int i10, int i11, long[] jArr, int i12, boolean z10) {
            this.f67135a = i10;
            this.f67136b = i11;
            this.f67137c = jArr;
            this.f67138d = i12;
            this.f67139e = z10;
        }
    }

    /* compiled from: VorbisUtil.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f67140a;

        /* renamed from: b  reason: collision with root package name */
        public final String[] f67141b;

        /* renamed from: c  reason: collision with root package name */
        public final int f67142c;

        public b(String str, String[] strArr, int i10) {
            this.f67140a = str;
            this.f67141b = strArr;
            this.f67142c = i10;
        }
    }

    /* compiled from: VorbisUtil.java */
    /* loaded from: classes4.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f67143a;

        /* renamed from: b  reason: collision with root package name */
        public final int f67144b;

        /* renamed from: c  reason: collision with root package name */
        public final int f67145c;

        /* renamed from: d  reason: collision with root package name */
        public final int f67146d;

        public c(boolean z10, int i10, int i11, int i12) {
            this.f67143a = z10;
            this.f67144b = i10;
            this.f67145c = i11;
            this.f67146d = i12;
        }
    }

    /* compiled from: VorbisUtil.java */
    /* loaded from: classes4.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f67147a;

        /* renamed from: b  reason: collision with root package name */
        public final int f67148b;

        /* renamed from: c  reason: collision with root package name */
        public final int f67149c;

        /* renamed from: d  reason: collision with root package name */
        public final int f67150d;

        /* renamed from: e  reason: collision with root package name */
        public final int f67151e;

        /* renamed from: f  reason: collision with root package name */
        public final int f67152f;

        /* renamed from: g  reason: collision with root package name */
        public final int f67153g;

        /* renamed from: h  reason: collision with root package name */
        public final int f67154h;

        /* renamed from: i  reason: collision with root package name */
        public final boolean f67155i;

        /* renamed from: j  reason: collision with root package name */
        public final byte[] f67156j;

        public d(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, boolean z10, byte[] bArr) {
            this.f67147a = i10;
            this.f67148b = i11;
            this.f67149c = i12;
            this.f67150d = i13;
            this.f67151e = i14;
            this.f67152f = i15;
            this.f67153g = i16;
            this.f67154h = i17;
            this.f67155i = z10;
            this.f67156j = bArr;
        }
    }

    public static int a(int i10) {
        int i11 = 0;
        while (i10 > 0) {
            i11++;
            i10 >>>= 1;
        }
        return i11;
    }

    private static long b(long j10, long j11) {
        return (long) Math.floor(Math.pow(j10, 1.0d / j11));
    }

    @Nullable
    public static Metadata c(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            String str = list.get(i10);
            String[] I0 = s0.I0(str, ContainerUtils.KEY_VALUE_DELIMITER);
            if (I0.length != 2) {
                b7.q.i("VorbisUtil", "Failed to parse Vorbis comment: " + str);
            } else if (I0[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(PictureFrame.a(new g0(Base64.decode(I0[1], 0))));
                } catch (RuntimeException e10) {
                    b7.q.j("VorbisUtil", "Failed to parse vorbis picture", e10);
                }
            } else {
                arrayList.add(new VorbisComment(I0[0], I0[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static a d(d0 d0Var) throws ParserException {
        if (d0Var.d(24) == 5653314) {
            int d10 = d0Var.d(16);
            int d11 = d0Var.d(24);
            long[] jArr = new long[d11];
            boolean c10 = d0Var.c();
            long j10 = 0;
            if (!c10) {
                boolean c11 = d0Var.c();
                for (int i10 = 0; i10 < d11; i10++) {
                    if (c11) {
                        if (d0Var.c()) {
                            jArr[i10] = d0Var.d(5) + 1;
                        } else {
                            jArr[i10] = 0;
                        }
                    } else {
                        jArr[i10] = d0Var.d(5) + 1;
                    }
                }
            } else {
                int d12 = d0Var.d(5) + 1;
                int i11 = 0;
                while (i11 < d11) {
                    int d13 = d0Var.d(a(d11 - i11));
                    for (int i12 = 0; i12 < d13 && i11 < d11; i12++) {
                        jArr[i11] = d12;
                        i11++;
                    }
                    d12++;
                }
            }
            int d14 = d0Var.d(4);
            if (d14 <= 2) {
                if (d14 == 1 || d14 == 2) {
                    d0Var.e(32);
                    d0Var.e(32);
                    int d15 = d0Var.d(4) + 1;
                    d0Var.e(1);
                    if (d14 == 1) {
                        if (d10 != 0) {
                            j10 = b(d11, d10);
                        }
                    } else {
                        j10 = d11 * d10;
                    }
                    d0Var.e((int) (j10 * d15));
                }
                return new a(d10, d11, jArr, d14, c10);
            }
            throw ParserException.b("lookup type greater than 2 not decodable: " + d14, null);
        }
        throw ParserException.b("expected code book to start with [0x56, 0x43, 0x42] at " + d0Var.b(), null);
    }

    private static void e(d0 d0Var) throws ParserException {
        int d10 = d0Var.d(6) + 1;
        for (int i10 = 0; i10 < d10; i10++) {
            int d11 = d0Var.d(16);
            if (d11 != 0) {
                if (d11 == 1) {
                    int d12 = d0Var.d(5);
                    int[] iArr = new int[d12];
                    int i11 = -1;
                    for (int i12 = 0; i12 < d12; i12++) {
                        int d13 = d0Var.d(4);
                        iArr[i12] = d13;
                        if (d13 > i11) {
                            i11 = d13;
                        }
                    }
                    int i13 = i11 + 1;
                    int[] iArr2 = new int[i13];
                    for (int i14 = 0; i14 < i13; i14++) {
                        iArr2[i14] = d0Var.d(3) + 1;
                        int d14 = d0Var.d(2);
                        if (d14 > 0) {
                            d0Var.e(8);
                        }
                        for (int i15 = 0; i15 < (1 << d14); i15++) {
                            d0Var.e(8);
                        }
                    }
                    d0Var.e(2);
                    int d15 = d0Var.d(4);
                    int i16 = 0;
                    int i17 = 0;
                    for (int i18 = 0; i18 < d12; i18++) {
                        i16 += iArr2[iArr[i18]];
                        while (i17 < i16) {
                            d0Var.e(d15);
                            i17++;
                        }
                    }
                } else {
                    throw ParserException.b("floor type greater than 1 not decodable: " + d11, null);
                }
            } else {
                d0Var.e(8);
                d0Var.e(16);
                d0Var.e(16);
                d0Var.e(6);
                d0Var.e(8);
                int d16 = d0Var.d(4) + 1;
                for (int i19 = 0; i19 < d16; i19++) {
                    d0Var.e(8);
                }
            }
        }
    }

    private static void f(int i10, d0 d0Var) throws ParserException {
        int i11;
        int d10 = d0Var.d(6) + 1;
        for (int i12 = 0; i12 < d10; i12++) {
            int d11 = d0Var.d(16);
            if (d11 != 0) {
                b7.q.c("VorbisUtil", "mapping type other than 0 not supported: " + d11);
            } else {
                if (d0Var.c()) {
                    i11 = d0Var.d(4) + 1;
                } else {
                    i11 = 1;
                }
                if (d0Var.c()) {
                    int d12 = d0Var.d(8) + 1;
                    for (int i13 = 0; i13 < d12; i13++) {
                        int i14 = i10 - 1;
                        d0Var.e(a(i14));
                        d0Var.e(a(i14));
                    }
                }
                if (d0Var.d(2) == 0) {
                    if (i11 > 1) {
                        for (int i15 = 0; i15 < i10; i15++) {
                            d0Var.e(4);
                        }
                    }
                    for (int i16 = 0; i16 < i11; i16++) {
                        d0Var.e(8);
                        d0Var.e(8);
                        d0Var.e(8);
                    }
                } else {
                    throw ParserException.b("to reserved bits must be zero after mapping coupling steps", null);
                }
            }
        }
    }

    private static c[] g(d0 d0Var) {
        int d10 = d0Var.d(6) + 1;
        c[] cVarArr = new c[d10];
        for (int i10 = 0; i10 < d10; i10++) {
            cVarArr[i10] = new c(d0Var.c(), d0Var.d(16), d0Var.d(16), d0Var.d(8));
        }
        return cVarArr;
    }

    private static void h(d0 d0Var) throws ParserException {
        int i10;
        int d10 = d0Var.d(6) + 1;
        for (int i11 = 0; i11 < d10; i11++) {
            if (d0Var.d(16) <= 2) {
                d0Var.e(24);
                d0Var.e(24);
                d0Var.e(24);
                int d11 = d0Var.d(6) + 1;
                d0Var.e(8);
                int[] iArr = new int[d11];
                for (int i12 = 0; i12 < d11; i12++) {
                    int d12 = d0Var.d(3);
                    if (d0Var.c()) {
                        i10 = d0Var.d(5);
                    } else {
                        i10 = 0;
                    }
                    iArr[i12] = (i10 * 8) + d12;
                }
                for (int i13 = 0; i13 < d11; i13++) {
                    for (int i14 = 0; i14 < 8; i14++) {
                        if ((iArr[i13] & (1 << i14)) != 0) {
                            d0Var.e(8);
                        }
                    }
                }
            } else {
                throw ParserException.b("residueType greater than 2 is not decodable", null);
            }
        }
    }

    public static b i(g0 g0Var) throws ParserException {
        return j(g0Var, true, true);
    }

    public static b j(g0 g0Var, boolean z10, boolean z11) throws ParserException {
        if (z10) {
            m(3, g0Var, false);
        }
        String A = g0Var.A((int) g0Var.t());
        int length = A.length();
        long t10 = g0Var.t();
        String[] strArr = new String[(int) t10];
        int i10 = length + 15;
        for (int i11 = 0; i11 < t10; i11++) {
            String A2 = g0Var.A((int) g0Var.t());
            strArr[i11] = A2;
            i10 = i10 + 4 + A2.length();
        }
        if (z11 && (g0Var.D() & 1) == 0) {
            throw ParserException.b("framing bit expected to be set", null);
        }
        return new b(A, strArr, i10 + 1);
    }

    public static d k(g0 g0Var) throws ParserException {
        boolean z10 = true;
        m(1, g0Var, false);
        int u10 = g0Var.u();
        int D = g0Var.D();
        int u11 = g0Var.u();
        int q10 = g0Var.q();
        if (q10 <= 0) {
            q10 = -1;
        }
        int q11 = g0Var.q();
        if (q11 <= 0) {
            q11 = -1;
        }
        int q12 = g0Var.q();
        if (q12 <= 0) {
            q12 = -1;
        }
        int D2 = g0Var.D();
        int pow = (int) Math.pow(2.0d, D2 & 15);
        int pow2 = (int) Math.pow(2.0d, (D2 & 240) >> 4);
        if ((g0Var.D() & 1) <= 0) {
            z10 = false;
        }
        return new d(u10, D, u11, q10, q11, q12, pow, pow2, z10, Arrays.copyOf(g0Var.d(), g0Var.f()));
    }

    public static c[] l(g0 g0Var, int i10) throws ParserException {
        m(5, g0Var, false);
        int D = g0Var.D() + 1;
        d0 d0Var = new d0(g0Var.d());
        d0Var.e(g0Var.e() * 8);
        for (int i11 = 0; i11 < D; i11++) {
            d(d0Var);
        }
        int d10 = d0Var.d(6) + 1;
        for (int i12 = 0; i12 < d10; i12++) {
            if (d0Var.d(16) != 0) {
                throw ParserException.b("placeholder of time domain transforms not zeroed out", null);
            }
        }
        e(d0Var);
        h(d0Var);
        f(i10, d0Var);
        c[] g10 = g(d0Var);
        if (d0Var.c()) {
            return g10;
        }
        throw ParserException.b("framing bit after modes not set as expected", null);
    }

    public static boolean m(int i10, g0 g0Var, boolean z10) throws ParserException {
        if (g0Var.a() < 7) {
            if (z10) {
                return false;
            }
            throw ParserException.b("too short header: " + g0Var.a(), null);
        } else if (g0Var.D() != i10) {
            if (z10) {
                return false;
            }
            throw ParserException.b("expected header type " + Integer.toHexString(i10), null);
        } else if (g0Var.D() == 118 && g0Var.D() == 111 && g0Var.D() == 114 && g0Var.D() == 98 && g0Var.D() == 105 && g0Var.D() == 115) {
            return true;
        } else {
            if (z10) {
                return false;
            }
            throw ParserException.b("expected characters 'vorbis'", null);
        }
    }
}
