package ip;

import ao.j0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import io.bidmachine.media3.common.ParserException;
import ip.l0;
import java.io.EOFException;
import java.io.IOException;
/* compiled from: AdtsExtractor.java */
/* loaded from: classes8.dex */
public final class h implements ao.p {

    /* renamed from: m  reason: collision with root package name */
    public static final ao.u f59723m = new ao.u() { // from class: ip.g
        @Override // ao.u
        public final ao.p[] createExtractors() {
            ao.p[] j10;
            j10 = h.j();
            return j10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f59724a;

    /* renamed from: b  reason: collision with root package name */
    private final i f59725b;

    /* renamed from: c  reason: collision with root package name */
    private final cn.b0 f59726c;

    /* renamed from: d  reason: collision with root package name */
    private final cn.b0 f59727d;

    /* renamed from: e  reason: collision with root package name */
    private final cn.a0 f59728e;

    /* renamed from: f  reason: collision with root package name */
    private ao.r f59729f;

    /* renamed from: g  reason: collision with root package name */
    private long f59730g;

    /* renamed from: h  reason: collision with root package name */
    private long f59731h;

    /* renamed from: i  reason: collision with root package name */
    private int f59732i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f59733j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f59734k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f59735l;

    public h() {
        this(0);
    }

    private void g(ao.q qVar) throws IOException {
        int h10;
        if (this.f59733j) {
            return;
        }
        this.f59732i = -1;
        qVar.resetPeekPosition();
        long j10 = 0;
        if (qVar.getPosition() == 0) {
            l(qVar);
        }
        int i10 = 0;
        int i11 = 0;
        do {
            try {
                if (!qVar.peekFully(this.f59727d.e(), 0, 2, true)) {
                    break;
                }
                this.f59727d.W(0);
                if (!i.l(this.f59727d.P())) {
                    break;
                } else if (!qVar.peekFully(this.f59727d.e(), 0, 4, true)) {
                    break;
                } else {
                    this.f59728e.p(14);
                    h10 = this.f59728e.h(13);
                    if (h10 > 6) {
                        j10 += h10;
                        i11++;
                        if (i11 == 1000) {
                            break;
                        }
                    } else {
                        this.f59733j = true;
                        throw ParserException.b("Malformed ADTS stream", null);
                    }
                }
            } catch (EOFException unused) {
            }
        } while (qVar.advancePeekPosition(h10 - 6, true));
        i10 = i11;
        qVar.resetPeekPosition();
        if (i10 > 0) {
            this.f59732i = (int) (j10 / i10);
        } else {
            this.f59732i = -1;
        }
        this.f59733j = true;
    }

    private static int h(int i10, long j10) {
        return (int) ((i10 * 8000000) / j10);
    }

    private ao.j0 i(long j10, boolean z10) {
        return new ao.h(j10, this.f59731h, h(this.f59732i, this.f59725b.j()), this.f59732i, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ao.p[] j() {
        return new ao.p[]{new h()};
    }

    private void k(long j10, boolean z10) {
        boolean z11;
        if (this.f59735l) {
            return;
        }
        boolean z12 = false;
        if ((this.f59724a & 1) != 0 && this.f59732i > 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z11 && this.f59725b.j() == -9223372036854775807L && !z10) {
            return;
        }
        if (z11 && this.f59725b.j() != -9223372036854775807L) {
            ao.r rVar = this.f59729f;
            if ((this.f59724a & 2) != 0) {
                z12 = true;
            }
            rVar.d(i(j10, z12));
        } else {
            this.f59729f.d(new j0.b(-9223372036854775807L));
        }
        this.f59735l = true;
    }

    private int l(ao.q qVar) throws IOException {
        int i10 = 0;
        while (true) {
            qVar.peekFully(this.f59727d.e(), 0, 10);
            this.f59727d.W(0);
            if (this.f59727d.K() != 4801587) {
                break;
            }
            this.f59727d.X(3);
            int G = this.f59727d.G();
            i10 += G + 10;
            qVar.advancePeekPosition(G);
        }
        qVar.resetPeekPosition();
        qVar.advancePeekPosition(i10);
        if (this.f59731h == -1) {
            this.f59731h = i10;
        }
        return i10;
    }

    @Override // ao.p
    public void b(ao.r rVar) {
        this.f59729f = rVar;
        this.f59725b.b(rVar, new l0.d(0, 1));
        rVar.endTracks();
    }

    @Override // ao.p
    public boolean e(ao.q qVar) throws IOException {
        int l10 = l(qVar);
        int i10 = l10;
        int i11 = 0;
        int i12 = 0;
        do {
            qVar.peekFully(this.f59727d.e(), 0, 2);
            this.f59727d.W(0);
            if (!i.l(this.f59727d.P())) {
                i10++;
                qVar.resetPeekPosition();
                qVar.advancePeekPosition(i10);
            } else {
                i11++;
                if (i11 >= 4 && i12 > 188) {
                    return true;
                }
                qVar.peekFully(this.f59727d.e(), 0, 4);
                this.f59728e.p(14);
                int h10 = this.f59728e.h(13);
                if (h10 <= 6) {
                    i10++;
                    qVar.resetPeekPosition();
                    qVar.advancePeekPosition(i10);
                } else {
                    qVar.advancePeekPosition(h10 - 6);
                    i12 += h10;
                }
            }
            i11 = 0;
            i12 = 0;
        } while (i10 - l10 < 8192);
        return false;
    }

    @Override // ao.p
    public int f(ao.q qVar, ao.i0 i0Var) throws IOException {
        boolean z10;
        cn.a.i(this.f59729f);
        long length = qVar.getLength();
        int i10 = this.f59724a;
        if ((i10 & 2) != 0 || ((i10 & 1) != 0 && length != -1)) {
            g(qVar);
        }
        int read = qVar.read(this.f59726c.e(), 0, 2048);
        if (read == -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        k(length, z10);
        if (z10) {
            return -1;
        }
        this.f59726c.W(0);
        this.f59726c.V(read);
        if (!this.f59734k) {
            this.f59725b.c(this.f59730g, 4);
            this.f59734k = true;
        }
        this.f59725b.a(this.f59726c);
        return 0;
    }

    @Override // ao.p
    public void seek(long j10, long j11) {
        this.f59734k = false;
        this.f59725b.seek();
        this.f59730g = j11;
    }

    public h(int i10) {
        this.f59724a = (i10 & 2) != 0 ? i10 | 1 : i10;
        this.f59725b = new i(true, MimeTypes.AUDIO_AAC);
        this.f59726c = new cn.b0(2048);
        this.f59732i = -1;
        this.f59731h = -1L;
        cn.b0 b0Var = new cn.b0(10);
        this.f59727d = b0Var;
        this.f59728e = new cn.a0(b0Var.e());
    }

    @Override // ao.p
    public void release() {
    }
}
