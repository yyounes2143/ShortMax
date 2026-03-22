package wo;

import ao.q;
import ao.s;
import cn.b0;
import io.bidmachine.media3.common.ParserException;
import java.io.IOException;
/* compiled from: OggPageHeader.java */
/* loaded from: classes8.dex */
final class f {

    /* renamed from: a  reason: collision with root package name */
    public int f70062a;

    /* renamed from: b  reason: collision with root package name */
    public int f70063b;

    /* renamed from: c  reason: collision with root package name */
    public long f70064c;

    /* renamed from: d  reason: collision with root package name */
    public long f70065d;

    /* renamed from: e  reason: collision with root package name */
    public long f70066e;

    /* renamed from: f  reason: collision with root package name */
    public long f70067f;

    /* renamed from: g  reason: collision with root package name */
    public int f70068g;

    /* renamed from: h  reason: collision with root package name */
    public int f70069h;

    /* renamed from: i  reason: collision with root package name */
    public int f70070i;

    /* renamed from: j  reason: collision with root package name */
    public final int[] f70071j = new int[255];

    /* renamed from: k  reason: collision with root package name */
    private final b0 f70072k = new b0(255);

    public boolean a(q qVar, boolean z10) throws IOException {
        b();
        this.f70072k.S(27);
        if (!s.b(qVar, this.f70072k.e(), 0, 27, z10) || this.f70072k.J() != 1332176723) {
            return false;
        }
        int H = this.f70072k.H();
        this.f70062a = H;
        if (H != 0) {
            if (z10) {
                return false;
            }
            throw ParserException.f("unsupported bit stream revision");
        }
        this.f70063b = this.f70072k.H();
        this.f70064c = this.f70072k.v();
        this.f70065d = this.f70072k.x();
        this.f70066e = this.f70072k.x();
        this.f70067f = this.f70072k.x();
        int H2 = this.f70072k.H();
        this.f70068g = H2;
        this.f70069h = H2 + 27;
        this.f70072k.S(H2);
        if (!s.b(qVar, this.f70072k.e(), 0, this.f70068g, z10)) {
            return false;
        }
        for (int i10 = 0; i10 < this.f70068g; i10++) {
            this.f70071j[i10] = this.f70072k.H();
            this.f70070i += this.f70071j[i10];
        }
        return true;
    }

    public void b() {
        this.f70062a = 0;
        this.f70063b = 0;
        this.f70064c = 0L;
        this.f70065d = 0L;
        this.f70066e = 0L;
        this.f70067f = 0L;
        this.f70068g = 0;
        this.f70069h = 0;
        this.f70070i = 0;
    }

    public boolean c(q qVar) throws IOException {
        return d(qVar, -1L);
    }

    public boolean d(q qVar, long j10) throws IOException {
        boolean z10;
        int i10;
        if (qVar.getPosition() == qVar.getPeekPosition()) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        this.f70072k.S(4);
        while (true) {
            i10 = (j10 > (-1L) ? 1 : (j10 == (-1L) ? 0 : -1));
            if ((i10 == 0 || qVar.getPosition() + 4 < j10) && s.b(qVar, this.f70072k.e(), 0, 4, true)) {
                this.f70072k.W(0);
                if (this.f70072k.J() == 1332176723) {
                    qVar.resetPeekPosition();
                    return true;
                }
                qVar.skipFully(1);
            }
        }
        do {
            if (i10 != 0 && qVar.getPosition() >= j10) {
                break;
            }
        } while (qVar.skip(1) != -1);
        return false;
    }
}
