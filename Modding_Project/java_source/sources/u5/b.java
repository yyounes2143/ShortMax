package u5;

import b7.s0;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.v0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import t5.b0;
import t5.d;
import t5.k;
import t5.l;
import t5.m;
import t5.p;
import t5.y;
import t5.z;
/* compiled from: AmrExtractor.java */
/* loaded from: classes4.dex */
public final class b implements k {

    /* renamed from: r  reason: collision with root package name */
    private static final int[] f67798r;

    /* renamed from: u  reason: collision with root package name */
    private static final int f67801u;

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f67802a;

    /* renamed from: b  reason: collision with root package name */
    private final int f67803b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f67804c;

    /* renamed from: d  reason: collision with root package name */
    private long f67805d;

    /* renamed from: e  reason: collision with root package name */
    private int f67806e;

    /* renamed from: f  reason: collision with root package name */
    private int f67807f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f67808g;

    /* renamed from: h  reason: collision with root package name */
    private long f67809h;

    /* renamed from: i  reason: collision with root package name */
    private int f67810i;

    /* renamed from: j  reason: collision with root package name */
    private int f67811j;

    /* renamed from: k  reason: collision with root package name */
    private long f67812k;

    /* renamed from: l  reason: collision with root package name */
    private m f67813l;

    /* renamed from: m  reason: collision with root package name */
    private b0 f67814m;

    /* renamed from: n  reason: collision with root package name */
    private z f67815n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f67816o;

    /* renamed from: p  reason: collision with root package name */
    public static final p f67796p = new p() { // from class: u5.a
        @Override // t5.p
        public final k[] createExtractors() {
            k[] l10;
            l10 = b.l();
            return l10;
        }
    };

    /* renamed from: q  reason: collision with root package name */
    private static final int[] f67797q = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* renamed from: s  reason: collision with root package name */
    private static final byte[] f67799s = s0.h0("#!AMR\n");

    /* renamed from: t  reason: collision with root package name */
    private static final byte[] f67800t = s0.h0("#!AMR-WB\n");

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        f67798r = iArr;
        f67801u = iArr[8];
    }

    public b() {
        this(0);
    }

    private void e() {
        b7.a.i(this.f67814m);
        s0.j(this.f67813l);
    }

    private static int f(int i10, long j10) {
        return (int) ((i10 * 8000000) / j10);
    }

    private z g(long j10, boolean z10) {
        return new d(j10, this.f67809h, f(this.f67810i, 20000L), this.f67810i, z10);
    }

    private int h(int i10) throws ParserException {
        String str;
        if (!j(i10)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Illegal AMR ");
            if (this.f67804c) {
                str = "WB";
            } else {
                str = "NB";
            }
            sb2.append(str);
            sb2.append(" frame type ");
            sb2.append(i10);
            throw ParserException.b(sb2.toString(), null);
        } else if (this.f67804c) {
            return f67798r[i10];
        } else {
            return f67797q[i10];
        }
    }

    private boolean i(int i10) {
        if (!this.f67804c && (i10 < 12 || i10 > 14)) {
            return true;
        }
        return false;
    }

    private boolean j(int i10) {
        if (i10 >= 0 && i10 <= 15 && (k(i10) || i(i10))) {
            return true;
        }
        return false;
    }

    private boolean k(int i10) {
        if (this.f67804c && (i10 < 10 || i10 > 13)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k[] l() {
        return new k[]{new b()};
    }

    private void m() {
        String str;
        int i10;
        if (!this.f67816o) {
            this.f67816o = true;
            boolean z10 = this.f67804c;
            if (z10) {
                str = MimeTypes.AUDIO_AMR_WB;
            } else {
                str = MimeTypes.AUDIO_AMR_NB;
            }
            if (z10) {
                i10 = 16000;
            } else {
                i10 = 8000;
            }
            this.f67814m.b(new v0.b().e0(str).W(f67801u).H(1).f0(i10).E());
        }
    }

    private void n(long j10, int i10) {
        int i11;
        boolean z10;
        if (this.f67808g) {
            return;
        }
        int i12 = this.f67803b;
        if ((i12 & 1) != 0 && j10 != -1 && ((i11 = this.f67810i) == -1 || i11 == this.f67806e)) {
            if (this.f67811j >= 20 || i10 == -1) {
                if ((i12 & 2) != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                z g10 = g(j10, z10);
                this.f67815n = g10;
                this.f67813l.c(g10);
                this.f67808g = true;
                return;
            }
            return;
        }
        z.b bVar = new z.b(-9223372036854775807L);
        this.f67815n = bVar;
        this.f67813l.c(bVar);
        this.f67808g = true;
    }

    private static boolean o(l lVar, byte[] bArr) throws IOException {
        lVar.resetPeekPosition();
        byte[] bArr2 = new byte[bArr.length];
        lVar.peekFully(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    private int p(l lVar) throws IOException {
        lVar.resetPeekPosition();
        lVar.peekFully(this.f67802a, 0, 1);
        byte b10 = this.f67802a[0];
        if ((b10 & 131) <= 0) {
            return h((b10 >> 3) & 15);
        }
        throw ParserException.b("Invalid padding bits for frame header " + ((int) b10), null);
    }

    private boolean q(l lVar) throws IOException {
        byte[] bArr = f67799s;
        if (o(lVar, bArr)) {
            this.f67804c = false;
            lVar.skipFully(bArr.length);
            return true;
        }
        byte[] bArr2 = f67800t;
        if (!o(lVar, bArr2)) {
            return false;
        }
        this.f67804c = true;
        lVar.skipFully(bArr2.length);
        return true;
    }

    private int r(l lVar) throws IOException {
        if (this.f67807f == 0) {
            try {
                int p10 = p(lVar);
                this.f67806e = p10;
                this.f67807f = p10;
                if (this.f67810i == -1) {
                    this.f67809h = lVar.getPosition();
                    this.f67810i = this.f67806e;
                }
                if (this.f67810i == this.f67806e) {
                    this.f67811j++;
                }
            } catch (EOFException unused) {
                return -1;
            }
        }
        int f10 = this.f67814m.f(lVar, this.f67807f, true);
        if (f10 == -1) {
            return -1;
        }
        int i10 = this.f67807f - f10;
        this.f67807f = i10;
        if (i10 > 0) {
            return 0;
        }
        this.f67814m.e(this.f67812k + this.f67805d, 1, this.f67806e, 0, null);
        this.f67805d += 20000;
        return 0;
    }

    @Override // t5.k
    public int b(l lVar, y yVar) throws IOException {
        e();
        if (lVar.getPosition() == 0 && !q(lVar)) {
            throw ParserException.b("Could not find AMR header.", null);
        }
        m();
        int r10 = r(lVar);
        n(lVar.getLength(), r10);
        return r10;
    }

    @Override // t5.k
    public boolean c(l lVar) throws IOException {
        return q(lVar);
    }

    @Override // t5.k
    public void d(m mVar) {
        this.f67813l = mVar;
        this.f67814m = mVar.track(0, 1);
        mVar.endTracks();
    }

    @Override // t5.k
    public void seek(long j10, long j11) {
        this.f67805d = 0L;
        this.f67806e = 0;
        this.f67807f = 0;
        if (j10 != 0) {
            z zVar = this.f67815n;
            if (zVar instanceof d) {
                this.f67812k = ((d) zVar).c(j10);
                return;
            }
        }
        this.f67812k = 0L;
    }

    public b(int i10) {
        this.f67803b = (i10 & 2) != 0 ? i10 | 1 : i10;
        this.f67802a = new byte[1];
        this.f67810i = -1;
    }

    @Override // t5.k
    public void release() {
    }
}
