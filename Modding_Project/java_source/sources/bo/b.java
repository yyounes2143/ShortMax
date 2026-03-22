package bo;

import ao.e0;
import ao.h;
import ao.i0;
import ao.j0;
import ao.m;
import ao.o0;
import ao.p;
import ao.q;
import ao.r;
import ao.u;
import cn.m0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.a;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
/* compiled from: AmrExtractor.java */
/* loaded from: classes8.dex */
public final class b implements p {

    /* renamed from: s  reason: collision with root package name */
    public static final u f2756s = new u() { // from class: bo.a
        @Override // ao.u
        public final p[] createExtractors() {
            p[] o10;
            o10 = b.o();
            return o10;
        }
    };

    /* renamed from: t  reason: collision with root package name */
    private static final int[] f2757t = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* renamed from: u  reason: collision with root package name */
    private static final int[] f2758u = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};

    /* renamed from: v  reason: collision with root package name */
    private static final byte[] f2759v = m0.u0("#!AMR\n");

    /* renamed from: w  reason: collision with root package name */
    private static final byte[] f2760w = m0.u0("#!AMR-WB\n");

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f2761a;

    /* renamed from: b  reason: collision with root package name */
    private final int f2762b;

    /* renamed from: c  reason: collision with root package name */
    private final o0 f2763c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f2764d;

    /* renamed from: e  reason: collision with root package name */
    private long f2765e;

    /* renamed from: f  reason: collision with root package name */
    private int f2766f;

    /* renamed from: g  reason: collision with root package name */
    private int f2767g;

    /* renamed from: h  reason: collision with root package name */
    private long f2768h;

    /* renamed from: i  reason: collision with root package name */
    private int f2769i;

    /* renamed from: j  reason: collision with root package name */
    private int f2770j;

    /* renamed from: k  reason: collision with root package name */
    private long f2771k;

    /* renamed from: l  reason: collision with root package name */
    private r f2772l;

    /* renamed from: m  reason: collision with root package name */
    private o0 f2773m;

    /* renamed from: n  reason: collision with root package name */
    private o0 f2774n;

    /* renamed from: o  reason: collision with root package name */
    private j0 f2775o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f2776p;

    /* renamed from: q  reason: collision with root package name */
    private long f2777q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f2778r;

    public b() {
        this(0);
    }

    private void g() {
        cn.a.i(this.f2773m);
        m0.i(this.f2772l);
    }

    private static int h(int i10, long j10) {
        return (int) ((i10 * 8000000) / j10);
    }

    private j0 i(long j10, boolean z10) {
        return new h(j10, this.f2768h, h(this.f2769i, 20000L), this.f2769i, z10);
    }

    private int j(int i10) throws ParserException {
        String str;
        if (!m(i10)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Illegal AMR ");
            if (this.f2764d) {
                str = "WB";
            } else {
                str = "NB";
            }
            sb2.append(str);
            sb2.append(" frame type ");
            sb2.append(i10);
            throw ParserException.b(sb2.toString(), null);
        } else if (this.f2764d) {
            return f2758u[i10];
        } else {
            return f2757t[i10];
        }
    }

    private boolean k(int i10) {
        if (!this.f2764d && (i10 < 12 || i10 > 14)) {
            return true;
        }
        return false;
    }

    private boolean l(long j10, long j11) {
        if (Math.abs(j11 - j10) < 20000) {
            return true;
        }
        return false;
    }

    private boolean m(int i10) {
        if (i10 >= 0 && i10 <= 15 && (n(i10) || k(i10))) {
            return true;
        }
        return false;
    }

    private boolean n(int i10) {
        if (this.f2764d && (i10 < 10 || i10 > 13)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ p[] o() {
        return new p[]{new b()};
    }

    private void p() {
        String str;
        int i10;
        int i11;
        if (!this.f2778r) {
            this.f2778r = true;
            boolean z10 = this.f2764d;
            String str2 = MimeTypes.AUDIO_AMR_WB;
            if (z10) {
                str = MimeTypes.AUDIO_AMR_WB;
            } else {
                str = "audio/amr";
            }
            if (!z10) {
                str2 = MimeTypes.AUDIO_AMR_NB;
            }
            if (z10) {
                i10 = 16000;
            } else {
                i10 = 8000;
            }
            if (z10) {
                i11 = f2758u[8];
            } else {
                i11 = f2757t[7];
            }
            this.f2773m.g(new a.b().U(str).u0(str2).k0(i11).R(1).v0(i10).N());
        }
    }

    private void q(long j10, int i10) {
        int i11;
        boolean z10 = false;
        if (this.f2775o != null) {
            return;
        }
        int i12 = this.f2762b;
        if ((i12 & 4) != 0) {
            this.f2775o = new e0(new long[]{this.f2768h}, new long[]{0}, -9223372036854775807L);
        } else if ((i12 & 1) != 0 && ((i11 = this.f2769i) == -1 || i11 == this.f2766f)) {
            if (this.f2770j >= 20 || i10 == -1) {
                if ((i12 & 2) != 0) {
                    z10 = true;
                }
                j0 i13 = i(j10, z10);
                this.f2775o = i13;
                this.f2773m.d(i13.getDurationUs());
            }
        } else {
            this.f2775o = new j0.b(-9223372036854775807L);
        }
        j0 j0Var = this.f2775o;
        if (j0Var != null) {
            this.f2772l.d(j0Var);
        }
    }

    private static boolean r(q qVar, byte[] bArr) throws IOException {
        qVar.resetPeekPosition();
        byte[] bArr2 = new byte[bArr.length];
        qVar.peekFully(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    private int s(q qVar) throws IOException {
        qVar.resetPeekPosition();
        qVar.peekFully(this.f2761a, 0, 1);
        byte b10 = this.f2761a[0];
        if ((b10 & 131) <= 0) {
            return j((b10 >> 3) & 15);
        }
        throw ParserException.b("Invalid padding bits for frame header " + ((int) b10), null);
    }

    private boolean t(q qVar) throws IOException {
        byte[] bArr = f2759v;
        if (r(qVar, bArr)) {
            this.f2764d = false;
            qVar.skipFully(bArr.length);
            return true;
        }
        byte[] bArr2 = f2760w;
        if (!r(qVar, bArr2)) {
            return false;
        }
        this.f2764d = true;
        qVar.skipFully(bArr2.length);
        return true;
    }

    private int u(q qVar) throws IOException {
        if (this.f2767g == 0) {
            try {
                int s10 = s(qVar);
                this.f2766f = s10;
                this.f2767g = s10;
                if (this.f2769i == -1) {
                    this.f2768h = qVar.getPosition();
                    this.f2769i = this.f2766f;
                }
                if (this.f2769i == this.f2766f) {
                    this.f2770j++;
                }
                j0 j0Var = this.f2775o;
                if (j0Var instanceof e0) {
                    e0 e0Var = (e0) j0Var;
                    long j10 = this.f2771k + this.f2765e + 20000;
                    long position = qVar.getPosition() + this.f2766f;
                    if (!e0Var.c(j10, 100000L)) {
                        e0Var.b(j10, position);
                    }
                    if (this.f2776p && l(j10, this.f2777q)) {
                        this.f2776p = false;
                        this.f2774n = this.f2773m;
                    }
                }
            } catch (EOFException unused) {
                return -1;
            }
        }
        int b10 = this.f2774n.b(qVar, this.f2767g, true);
        if (b10 == -1) {
            return -1;
        }
        int i10 = this.f2767g - b10;
        this.f2767g = i10;
        if (i10 > 0) {
            return 0;
        }
        this.f2774n.c(this.f2771k + this.f2765e, 1, this.f2766f, 0, null);
        this.f2765e += 20000;
        return 0;
    }

    @Override // ao.p
    public void b(r rVar) {
        this.f2772l = rVar;
        o0 track = rVar.track(0, 1);
        this.f2773m = track;
        this.f2774n = track;
        rVar.endTracks();
    }

    @Override // ao.p
    public boolean e(q qVar) throws IOException {
        return t(qVar);
    }

    @Override // ao.p
    public int f(q qVar, i0 i0Var) throws IOException {
        g();
        if (qVar.getPosition() == 0 && !t(qVar)) {
            throw ParserException.b("Could not find AMR header.", null);
        }
        p();
        int u10 = u(qVar);
        q(qVar.getLength(), u10);
        if (u10 == -1) {
            j0 j0Var = this.f2775o;
            if (j0Var instanceof e0) {
                long j10 = this.f2771k + this.f2765e;
                ((e0) j0Var).d(j10);
                this.f2772l.d(this.f2775o);
                this.f2773m.d(j10);
            }
        }
        return u10;
    }

    @Override // ao.p
    public void seek(long j10, long j11) {
        this.f2765e = 0L;
        this.f2766f = 0;
        this.f2767g = 0;
        this.f2777q = j11;
        j0 j0Var = this.f2775o;
        if (j0Var instanceof e0) {
            long timeUs = ((e0) j0Var).getTimeUs(j10);
            this.f2771k = timeUs;
            if (!l(timeUs, this.f2777q)) {
                this.f2776p = true;
                this.f2774n = this.f2763c;
            }
        } else if (j10 != 0 && (j0Var instanceof h)) {
            this.f2771k = ((h) j0Var).c(j10);
        } else {
            this.f2771k = 0L;
        }
    }

    public b(int i10) {
        this.f2762b = (i10 & 2) != 0 ? i10 | 1 : i10;
        this.f2761a = new byte[1];
        this.f2769i = -1;
        m mVar = new m();
        this.f2763c = mVar;
        this.f2774n = mVar;
    }

    @Override // ao.p
    public void release() {
    }
}
