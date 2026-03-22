package c6;

import b7.g0;
import com.google.android.exoplayer2.ParserException;
import java.io.IOException;
import t5.l;
import t5.n;
/* compiled from: OggPageHeader.java */
/* loaded from: classes4.dex */
final class f {

    /* renamed from: a  reason: collision with root package name */
    public int f3176a;

    /* renamed from: b  reason: collision with root package name */
    public int f3177b;

    /* renamed from: c  reason: collision with root package name */
    public long f3178c;

    /* renamed from: d  reason: collision with root package name */
    public long f3179d;

    /* renamed from: e  reason: collision with root package name */
    public long f3180e;

    /* renamed from: f  reason: collision with root package name */
    public long f3181f;

    /* renamed from: g  reason: collision with root package name */
    public int f3182g;

    /* renamed from: h  reason: collision with root package name */
    public int f3183h;

    /* renamed from: i  reason: collision with root package name */
    public int f3184i;

    /* renamed from: j  reason: collision with root package name */
    public final int[] f3185j = new int[255];

    /* renamed from: k  reason: collision with root package name */
    private final g0 f3186k = new g0(255);

    public boolean a(l lVar, boolean z10) throws IOException {
        b();
        this.f3186k.L(27);
        if (!n.b(lVar, this.f3186k.d(), 0, 27, z10) || this.f3186k.F() != 1332176723) {
            return false;
        }
        int D = this.f3186k.D();
        this.f3176a = D;
        if (D != 0) {
            if (z10) {
                return false;
            }
            throw ParserException.e("unsupported bit stream revision");
        }
        this.f3177b = this.f3186k.D();
        this.f3178c = this.f3186k.r();
        this.f3179d = this.f3186k.t();
        this.f3180e = this.f3186k.t();
        this.f3181f = this.f3186k.t();
        int D2 = this.f3186k.D();
        this.f3182g = D2;
        this.f3183h = D2 + 27;
        this.f3186k.L(D2);
        if (!n.b(lVar, this.f3186k.d(), 0, this.f3182g, z10)) {
            return false;
        }
        for (int i10 = 0; i10 < this.f3182g; i10++) {
            this.f3185j[i10] = this.f3186k.D();
            this.f3184i += this.f3185j[i10];
        }
        return true;
    }

    public void b() {
        this.f3176a = 0;
        this.f3177b = 0;
        this.f3178c = 0L;
        this.f3179d = 0L;
        this.f3180e = 0L;
        this.f3181f = 0L;
        this.f3182g = 0;
        this.f3183h = 0;
        this.f3184i = 0;
    }

    public boolean c(l lVar) throws IOException {
        return d(lVar, -1L);
    }

    public boolean d(l lVar, long j10) throws IOException {
        boolean z10;
        int i10;
        if (lVar.getPosition() == lVar.getPeekPosition()) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.a(z10);
        this.f3186k.L(4);
        while (true) {
            i10 = (j10 > (-1L) ? 1 : (j10 == (-1L) ? 0 : -1));
            if ((i10 == 0 || lVar.getPosition() + 4 < j10) && n.b(lVar, this.f3186k.d(), 0, 4, true)) {
                this.f3186k.P(0);
                if (this.f3186k.F() == 1332176723) {
                    lVar.resetPeekPosition();
                    return true;
                }
                lVar.skipFully(1);
            }
        }
        do {
            if (i10 != 0 && lVar.getPosition() >= j10) {
                break;
            }
        } while (lVar.skip(1) != -1);
        return false;
    }
}
