package d6;

import com.google.android.exoplayer2.ParserException;
import d6.i0;
import java.io.EOFException;
import java.io.IOException;
import t5.z;
/* compiled from: AdtsExtractor.java */
/* loaded from: classes4.dex */
public final class h implements t5.k {

    /* renamed from: m  reason: collision with root package name */
    public static final t5.p f49904m = new t5.p() { // from class: d6.g
        @Override // t5.p
        public final t5.k[] createExtractors() {
            t5.k[] h10;
            h10 = h.h();
            return h10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f49905a;

    /* renamed from: b  reason: collision with root package name */
    private final i f49906b;

    /* renamed from: c  reason: collision with root package name */
    private final b7.g0 f49907c;

    /* renamed from: d  reason: collision with root package name */
    private final b7.g0 f49908d;

    /* renamed from: e  reason: collision with root package name */
    private final b7.f0 f49909e;

    /* renamed from: f  reason: collision with root package name */
    private t5.m f49910f;

    /* renamed from: g  reason: collision with root package name */
    private long f49911g;

    /* renamed from: h  reason: collision with root package name */
    private long f49912h;

    /* renamed from: i  reason: collision with root package name */
    private int f49913i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f49914j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f49915k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f49916l;

    public h() {
        this(0);
    }

    private void e(t5.l lVar) throws IOException {
        int h10;
        if (this.f49914j) {
            return;
        }
        this.f49913i = -1;
        lVar.resetPeekPosition();
        long j10 = 0;
        if (lVar.getPosition() == 0) {
            j(lVar);
        }
        int i10 = 0;
        int i11 = 0;
        do {
            try {
                if (!lVar.peekFully(this.f49908d.d(), 0, 2, true)) {
                    break;
                }
                this.f49908d.P(0);
                if (!i.k(this.f49908d.J())) {
                    break;
                } else if (!lVar.peekFully(this.f49908d.d(), 0, 4, true)) {
                    break;
                } else {
                    this.f49909e.p(14);
                    h10 = this.f49909e.h(13);
                    if (h10 > 6) {
                        j10 += h10;
                        i11++;
                        if (i11 == 1000) {
                            break;
                        }
                    } else {
                        this.f49914j = true;
                        throw ParserException.b("Malformed ADTS stream", null);
                    }
                }
            } catch (EOFException unused) {
            }
        } while (lVar.advancePeekPosition(h10 - 6, true));
        i10 = i11;
        lVar.resetPeekPosition();
        if (i10 > 0) {
            this.f49913i = (int) (j10 / i10);
        } else {
            this.f49913i = -1;
        }
        this.f49914j = true;
    }

    private static int f(int i10, long j10) {
        return (int) ((i10 * 8000000) / j10);
    }

    private t5.z g(long j10, boolean z10) {
        return new t5.d(j10, this.f49912h, f(this.f49913i, this.f49906b.i()), this.f49913i, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ t5.k[] h() {
        return new t5.k[]{new h()};
    }

    private void i(long j10, boolean z10) {
        boolean z11;
        if (this.f49916l) {
            return;
        }
        boolean z12 = false;
        if ((this.f49905a & 1) != 0 && this.f49913i > 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z11 && this.f49906b.i() == -9223372036854775807L && !z10) {
            return;
        }
        if (z11 && this.f49906b.i() != -9223372036854775807L) {
            t5.m mVar = this.f49910f;
            if ((this.f49905a & 2) != 0) {
                z12 = true;
            }
            mVar.c(g(j10, z12));
        } else {
            this.f49910f.c(new z.b(-9223372036854775807L));
        }
        this.f49916l = true;
    }

    private int j(t5.l lVar) throws IOException {
        int i10 = 0;
        while (true) {
            lVar.peekFully(this.f49908d.d(), 0, 10);
            this.f49908d.P(0);
            if (this.f49908d.G() != 4801587) {
                break;
            }
            this.f49908d.Q(3);
            int C = this.f49908d.C();
            i10 += C + 10;
            lVar.advancePeekPosition(C);
        }
        lVar.resetPeekPosition();
        lVar.advancePeekPosition(i10);
        if (this.f49912h == -1) {
            this.f49912h = i10;
        }
        return i10;
    }

    @Override // t5.k
    public int b(t5.l lVar, t5.y yVar) throws IOException {
        boolean z10;
        b7.a.i(this.f49910f);
        long length = lVar.getLength();
        int i10 = this.f49905a;
        if ((i10 & 2) != 0 || ((i10 & 1) != 0 && length != -1)) {
            e(lVar);
        }
        int read = lVar.read(this.f49907c.d(), 0, 2048);
        if (read == -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        i(length, z10);
        if (z10) {
            return -1;
        }
        this.f49907c.P(0);
        this.f49907c.O(read);
        if (!this.f49915k) {
            this.f49906b.c(this.f49911g, 4);
            this.f49915k = true;
        }
        this.f49906b.b(this.f49907c);
        return 0;
    }

    @Override // t5.k
    public boolean c(t5.l lVar) throws IOException {
        int j10 = j(lVar);
        int i10 = j10;
        int i11 = 0;
        int i12 = 0;
        do {
            lVar.peekFully(this.f49908d.d(), 0, 2);
            this.f49908d.P(0);
            if (!i.k(this.f49908d.J())) {
                i10++;
                lVar.resetPeekPosition();
                lVar.advancePeekPosition(i10);
            } else {
                i11++;
                if (i11 >= 4 && i12 > 188) {
                    return true;
                }
                lVar.peekFully(this.f49908d.d(), 0, 4);
                this.f49909e.p(14);
                int h10 = this.f49909e.h(13);
                if (h10 <= 6) {
                    i10++;
                    lVar.resetPeekPosition();
                    lVar.advancePeekPosition(i10);
                } else {
                    lVar.advancePeekPosition(h10 - 6);
                    i12 += h10;
                }
            }
            i11 = 0;
            i12 = 0;
        } while (i10 - j10 < 8192);
        return false;
    }

    @Override // t5.k
    public void d(t5.m mVar) {
        this.f49910f = mVar;
        this.f49906b.d(mVar, new i0.d(0, 1));
        mVar.endTracks();
    }

    @Override // t5.k
    public void seek(long j10, long j11) {
        this.f49915k = false;
        this.f49906b.seek();
        this.f49911g = j11;
    }

    public h(int i10) {
        this.f49905a = (i10 & 2) != 0 ? i10 | 1 : i10;
        this.f49906b = new i(true);
        this.f49907c = new b7.g0(2048);
        this.f49913i = -1;
        this.f49912h = -1L;
        b7.g0 g0Var = new b7.g0(10);
        this.f49908d = g0Var;
        this.f49909e = new b7.f0(g0Var.d());
    }

    @Override // t5.k
    public void release() {
    }
}
