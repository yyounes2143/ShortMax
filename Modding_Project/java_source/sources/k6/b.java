package k6;

import androidx.annotation.Nullable;
import b7.f0;
import b7.g0;
import b7.q;
import b7.s0;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.metadata.id3.BinaryFrame;
import com.google.android.exoplayer2.metadata.id3.ChapterFrame;
import com.google.android.exoplayer2.metadata.id3.ChapterTocFrame;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.GeobFrame;
import com.google.android.exoplayer2.metadata.id3.Id3Frame;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import com.google.android.exoplayer2.metadata.id3.PrivFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.metadata.id3.UrlLinkFrame;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g6.c;
import g6.e;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
/* compiled from: Id3Decoder.java */
/* loaded from: classes4.dex */
public final class b extends e {

    /* renamed from: b  reason: collision with root package name */
    public static final a f60671b = new a() { // from class: k6.a
        @Override // k6.b.a
        public final boolean evaluate(int i10, int i11, int i12, int i13, int i14) {
            boolean z10;
            z10 = b.z(i10, i11, i12, i13, i14);
            return z10;
        }
    };
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final a f60672a;

    /* compiled from: Id3Decoder.java */
    /* loaded from: classes4.dex */
    public interface a {
        boolean evaluate(int i10, int i11, int i12, int i13, int i14);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Id3Decoder.java */
    /* renamed from: k6.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0844b {

        /* renamed from: a  reason: collision with root package name */
        private final int f60673a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f60674b;

        /* renamed from: c  reason: collision with root package name */
        private final int f60675c;

        public C0844b(int i10, boolean z10, int i11) {
            this.f60673a = i10;
            this.f60674b = z10;
            this.f60675c = i11;
        }
    }

    public b() {
        this(null);
    }

    private static int A(g0 g0Var, int i10) {
        byte[] d10 = g0Var.d();
        int e10 = g0Var.e();
        int i11 = e10;
        while (true) {
            int i12 = i11 + 1;
            if (i12 < e10 + i10) {
                if ((d10[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) == 255 && d10[i12] == 0) {
                    System.arraycopy(d10, i11 + 2, d10, i12, (i10 - (i11 - e10)) - 2);
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
    private static boolean B(b7.g0 r18, int r19, int r20, boolean r21) {
        /*
            r1 = r18
            r0 = r19
            int r2 = r18.e()
        L8:
            int r3 = r18.a()     // Catch: java.lang.Throwable -> L22
            r4 = 1
            r5 = r20
            if (r3 < r5) goto Lae
            r3 = 3
            r6 = 0
            if (r0 < r3) goto L25
            int r7 = r18.n()     // Catch: java.lang.Throwable -> L22
            long r8 = r18.F()     // Catch: java.lang.Throwable -> L22
            int r10 = r18.J()     // Catch: java.lang.Throwable -> L22
            goto L2f
        L22:
            r0 = move-exception
            goto Lb2
        L25:
            int r7 = r18.G()     // Catch: java.lang.Throwable -> L22
            int r8 = r18.G()     // Catch: java.lang.Throwable -> L22
            long r8 = (long) r8
            r10 = r6
        L2f:
            r11 = 0
            if (r7 != 0) goto L3d
            int r7 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1))
            if (r7 != 0) goto L3d
            if (r10 != 0) goto L3d
            r1.P(r2)
            return r4
        L3d:
            r7 = 4
            if (r0 != r7) goto L6e
            if (r21 != 0) goto L6e
            r13 = 8421504(0x808080, double:4.160776E-317)
            long r13 = r13 & r8
            int r11 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1))
            if (r11 == 0) goto L4e
            r1.P(r2)
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
            r1.P(r2)
            return r6
        L9b:
            int r3 = r18.a()     // Catch: java.lang.Throwable -> L22
            long r3 = (long) r3
            int r3 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r3 >= 0) goto La8
            r1.P(r2)
            return r6
        La8:
            int r3 = (int) r8
            r1.Q(r3)     // Catch: java.lang.Throwable -> L22
            goto L8
        Lae:
            r1.P(r2)
            return r4
        Lb2:
            r1.P(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k6.b.B(b7.g0, int, int, boolean):boolean");
    }

    private static byte[] d(byte[] bArr, int i10, int i11) {
        if (i11 <= i10) {
            return s0.f2511f;
        }
        return Arrays.copyOfRange(bArr, i10, i11);
    }

    private static ApicFrame f(g0 g0Var, int i10, int i11) throws UnsupportedEncodingException {
        int y10;
        String e10;
        int D = g0Var.D();
        String v10 = v(D);
        int i12 = i10 - 1;
        byte[] bArr = new byte[i12];
        g0Var.j(bArr, 0, i12);
        if (i11 == 2) {
            e10 = "image/" + h7.a.e(new String(bArr, 0, 3, "ISO-8859-1"));
            if ("image/jpg".equals(e10)) {
                e10 = "image/jpeg";
            }
            y10 = 2;
        } else {
            y10 = y(bArr, 0);
            e10 = h7.a.e(new String(bArr, 0, y10, "ISO-8859-1"));
            if (e10.indexOf(47) == -1) {
                e10 = "image/" + e10;
            }
        }
        int i13 = bArr[y10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        int i14 = y10 + 2;
        int x10 = x(bArr, i14, D);
        return new ApicFrame(e10, new String(bArr, i14, x10 - i14, v10), i13, d(bArr, x10 + u(D), i12));
    }

    private static BinaryFrame g(g0 g0Var, int i10, String str) {
        byte[] bArr = new byte[i10];
        g0Var.j(bArr, 0, i10);
        return new BinaryFrame(str, bArr);
    }

    private static ChapterFrame h(g0 g0Var, int i10, int i11, boolean z10, int i12, @Nullable a aVar) throws UnsupportedEncodingException {
        long j10;
        long j11;
        int e10 = g0Var.e();
        int y10 = y(g0Var.d(), e10);
        String str = new String(g0Var.d(), e10, y10 - e10, "ISO-8859-1");
        g0Var.P(y10 + 1);
        int n10 = g0Var.n();
        int n11 = g0Var.n();
        long F = g0Var.F();
        if (F == 4294967295L) {
            j10 = -1;
        } else {
            j10 = F;
        }
        long F2 = g0Var.F();
        if (F2 == 4294967295L) {
            j11 = -1;
        } else {
            j11 = F2;
        }
        ArrayList arrayList = new ArrayList();
        int i13 = e10 + i10;
        while (g0Var.e() < i13) {
            Id3Frame k10 = k(i11, g0Var, z10, i12, aVar);
            if (k10 != null) {
                arrayList.add(k10);
            }
        }
        return new ChapterFrame(str, n10, n11, j10, j11, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    private static ChapterTocFrame i(g0 g0Var, int i10, int i11, boolean z10, int i12, @Nullable a aVar) throws UnsupportedEncodingException {
        boolean z11;
        boolean z12;
        int e10 = g0Var.e();
        int y10 = y(g0Var.d(), e10);
        String str = new String(g0Var.d(), e10, y10 - e10, "ISO-8859-1");
        g0Var.P(y10 + 1);
        int D = g0Var.D();
        if ((D & 2) != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if ((D & 1) != 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        int D2 = g0Var.D();
        String[] strArr = new String[D2];
        for (int i13 = 0; i13 < D2; i13++) {
            int e11 = g0Var.e();
            int y11 = y(g0Var.d(), e11);
            strArr[i13] = new String(g0Var.d(), e11, y11 - e11, "ISO-8859-1");
            g0Var.P(y11 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i14 = e10 + i10;
        while (g0Var.e() < i14) {
            Id3Frame k10 = k(i11, g0Var, z10, i12, aVar);
            if (k10 != null) {
                arrayList.add(k10);
            }
        }
        return new ChapterTocFrame(str, z11, z12, strArr, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    @Nullable
    private static CommentFrame j(g0 g0Var, int i10) throws UnsupportedEncodingException {
        if (i10 < 4) {
            return null;
        }
        int D = g0Var.D();
        String v10 = v(D);
        byte[] bArr = new byte[3];
        g0Var.j(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i11 = i10 - 4;
        byte[] bArr2 = new byte[i11];
        g0Var.j(bArr2, 0, i11);
        int x10 = x(bArr2, 0, D);
        String str2 = new String(bArr2, 0, x10, v10);
        int u10 = x10 + u(D);
        return new CommentFrame(str, str2, p(bArr2, u10, x(bArr2, u10, D), v10));
    }

    /* JADX WARN: Code restructure failed: missing block: B:131:0x0190, code lost:
        if (r13 == 67) goto L98;
     */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.exoplayer2.metadata.id3.Id3Frame k(int r19, b7.g0 r20, boolean r21, int r22, @androidx.annotation.Nullable k6.b.a r23) {
        /*
            Method dump skipped, instructions count: 558
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k6.b.k(int, b7.g0, boolean, int, k6.b$a):com.google.android.exoplayer2.metadata.id3.Id3Frame");
    }

    private static GeobFrame l(g0 g0Var, int i10) throws UnsupportedEncodingException {
        int D = g0Var.D();
        String v10 = v(D);
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        g0Var.j(bArr, 0, i11);
        int y10 = y(bArr, 0);
        String str = new String(bArr, 0, y10, "ISO-8859-1");
        int i12 = y10 + 1;
        int x10 = x(bArr, i12, D);
        String p10 = p(bArr, i12, x10, v10);
        int u10 = x10 + u(D);
        int x11 = x(bArr, u10, D);
        return new GeobFrame(str, p10, p(bArr, u10, x11, v10), d(bArr, x11 + u(D), i11));
    }

    @Nullable
    private static C0844b m(g0 g0Var) {
        int G;
        if (g0Var.a() < 10) {
            q.i("Id3Decoder", "Data too short to be an ID3 tag");
            return null;
        }
        if (g0Var.G() != 4801587) {
            q.i("Id3Decoder", "Unexpected first three bytes of ID3 tag header: 0x" + String.format("%06X", Integer.valueOf(G)));
            return null;
        }
        int D = g0Var.D();
        boolean z10 = true;
        g0Var.Q(1);
        int D2 = g0Var.D();
        int C = g0Var.C();
        if (D == 2) {
            if ((D2 & 64) != 0) {
                q.i("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                return null;
            }
        } else if (D == 3) {
            if ((D2 & 64) != 0) {
                int n10 = g0Var.n();
                g0Var.Q(n10);
                C -= n10 + 4;
            }
        } else if (D == 4) {
            if ((D2 & 64) != 0) {
                int C2 = g0Var.C();
                g0Var.Q(C2 - 4);
                C -= C2;
            }
            if ((D2 & 16) != 0) {
                C -= 10;
            }
        } else {
            q.i("Id3Decoder", "Skipped ID3 tag with unsupported majorVersion=" + D);
            return null;
        }
        return new C0844b(D, (D >= 4 || (D2 & 128) == 0) ? false : false, C);
    }

    private static MlltFrame n(g0 g0Var, int i10) {
        int J = g0Var.J();
        int G = g0Var.G();
        int G2 = g0Var.G();
        int D = g0Var.D();
        int D2 = g0Var.D();
        f0 f0Var = new f0();
        f0Var.m(g0Var);
        int i11 = ((i10 - 10) * 8) / (D + D2);
        int[] iArr = new int[i11];
        int[] iArr2 = new int[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            int h10 = f0Var.h(D);
            int h11 = f0Var.h(D2);
            iArr[i12] = h10;
            iArr2[i12] = h11;
        }
        return new MlltFrame(J, G, G2, iArr, iArr2);
    }

    private static PrivFrame o(g0 g0Var, int i10) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i10];
        g0Var.j(bArr, 0, i10);
        int y10 = y(bArr, 0);
        return new PrivFrame(new String(bArr, 0, y10, "ISO-8859-1"), d(bArr, y10 + 1, i10));
    }

    private static String p(byte[] bArr, int i10, int i11, String str) throws UnsupportedEncodingException {
        if (i11 > i10 && i11 <= bArr.length) {
            return new String(bArr, i10, i11 - i10, str);
        }
        return "";
    }

    @Nullable
    private static TextInformationFrame q(g0 g0Var, int i10, String str) throws UnsupportedEncodingException {
        if (i10 < 1) {
            return null;
        }
        int D = g0Var.D();
        String v10 = v(D);
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        g0Var.j(bArr, 0, i11);
        return new TextInformationFrame(str, null, new String(bArr, 0, x(bArr, 0, D), v10));
    }

    @Nullable
    private static TextInformationFrame r(g0 g0Var, int i10) throws UnsupportedEncodingException {
        if (i10 < 1) {
            return null;
        }
        int D = g0Var.D();
        String v10 = v(D);
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        g0Var.j(bArr, 0, i11);
        int x10 = x(bArr, 0, D);
        String str = new String(bArr, 0, x10, v10);
        int u10 = x10 + u(D);
        return new TextInformationFrame("TXXX", str, p(bArr, u10, x(bArr, u10, D), v10));
    }

    private static UrlLinkFrame s(g0 g0Var, int i10, String str) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i10];
        g0Var.j(bArr, 0, i10);
        return new UrlLinkFrame(str, null, new String(bArr, 0, y(bArr, 0), "ISO-8859-1"));
    }

    @Nullable
    private static UrlLinkFrame t(g0 g0Var, int i10) throws UnsupportedEncodingException {
        if (i10 < 1) {
            return null;
        }
        int D = g0Var.D();
        String v10 = v(D);
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        g0Var.j(bArr, 0, i11);
        int x10 = x(bArr, 0, D);
        String str = new String(bArr, 0, x10, v10);
        int u10 = x10 + u(D);
        return new UrlLinkFrame("WXXX", str, p(bArr, u10, y(bArr, u10), "ISO-8859-1"));
    }

    private static int u(int i10) {
        if (i10 != 0 && i10 != 3) {
            return 2;
        }
        return 1;
    }

    private static String v(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return "ISO-8859-1";
                }
                return "UTF-8";
            }
            return "UTF-16BE";
        }
        return C.UTF16_NAME;
    }

    private static String w(int i10, int i11, int i12, int i13, int i14) {
        if (i10 == 2) {
            return String.format(Locale.US, "%c%c%c", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13));
        }
        return String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14));
    }

    private static int x(byte[] bArr, int i10, int i11) {
        int y10 = y(bArr, i10);
        if (i11 != 0 && i11 != 3) {
            while (y10 < bArr.length - 1) {
                if ((y10 - i10) % 2 == 0 && bArr[y10 + 1] == 0) {
                    return y10;
                }
                y10 = y(bArr, y10 + 1);
            }
            return bArr.length;
        }
        return y10;
    }

    private static int y(byte[] bArr, int i10) {
        while (i10 < bArr.length) {
            if (bArr[i10] == 0) {
                return i10;
            }
            i10++;
        }
        return bArr.length;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean z(int i10, int i11, int i12, int i13, int i14) {
        return false;
    }

    @Override // g6.e
    @Nullable
    protected Metadata b(c cVar, ByteBuffer byteBuffer) {
        return e(byteBuffer.array(), byteBuffer.limit());
    }

    @Nullable
    public Metadata e(byte[] bArr, int i10) {
        int i11;
        ArrayList arrayList = new ArrayList();
        g0 g0Var = new g0(bArr, i10);
        C0844b m10 = m(g0Var);
        if (m10 == null) {
            return null;
        }
        int e10 = g0Var.e();
        if (m10.f60673a == 2) {
            i11 = 6;
        } else {
            i11 = 10;
        }
        int i12 = m10.f60675c;
        if (m10.f60674b) {
            i12 = A(g0Var, m10.f60675c);
        }
        g0Var.O(e10 + i12);
        boolean z10 = false;
        if (!B(g0Var, m10.f60673a, i11, false)) {
            if (m10.f60673a == 4 && B(g0Var, 4, i11, true)) {
                z10 = true;
            } else {
                q.i("Id3Decoder", "Failed to validate ID3 tag with majorVersion=" + m10.f60673a);
                return null;
            }
        }
        while (g0Var.a() >= i11) {
            Id3Frame k10 = k(m10.f60673a, g0Var, z10, i11, this.f60672a);
            if (k10 != null) {
                arrayList.add(k10);
            }
        }
        return new Metadata(arrayList);
    }

    public b(@Nullable a aVar) {
        this.f60672a = aVar;
    }
}
