package wo;

import ao.q;
import ao.s;
import cn.b0;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.OggPageHeader;
import java.io.IOException;
import java.util.Arrays;
/* compiled from: OggPacket.java */
/* loaded from: classes8.dex */
final class e {

    /* renamed from: a  reason: collision with root package name */
    private final f f70057a = new f();

    /* renamed from: b  reason: collision with root package name */
    private final b0 f70058b = new b0(new byte[OggPageHeader.MAX_PAGE_PAYLOAD], 0);

    /* renamed from: c  reason: collision with root package name */
    private int f70059c = -1;

    /* renamed from: d  reason: collision with root package name */
    private int f70060d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f70061e;

    private int a(int i10) {
        int i11;
        int i12 = 0;
        this.f70060d = 0;
        do {
            int i13 = this.f70060d;
            int i14 = i10 + i13;
            f fVar = this.f70057a;
            if (i14 >= fVar.f70068g) {
                break;
            }
            int[] iArr = fVar.f70071j;
            this.f70060d = i13 + 1;
            i11 = iArr[i13 + i10];
            i12 += i11;
        } while (i11 == 255);
        return i12;
    }

    public f b() {
        return this.f70057a;
    }

    public b0 c() {
        return this.f70058b;
    }

    public boolean d(q qVar) throws IOException {
        boolean z10;
        boolean z11;
        int i10;
        if (qVar != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        if (this.f70061e) {
            this.f70061e = false;
            this.f70058b.S(0);
        }
        while (!this.f70061e) {
            if (this.f70059c < 0) {
                if (!this.f70057a.c(qVar) || !this.f70057a.a(qVar, true)) {
                    return false;
                }
                f fVar = this.f70057a;
                int i11 = fVar.f70069h;
                if ((fVar.f70063b & 1) == 1 && this.f70058b.g() == 0) {
                    i11 += a(0);
                    i10 = this.f70060d;
                } else {
                    i10 = 0;
                }
                if (!s.e(qVar, i11)) {
                    return false;
                }
                this.f70059c = i10;
            }
            int a10 = a(this.f70059c);
            int i12 = this.f70059c + this.f70060d;
            if (a10 > 0) {
                b0 b0Var = this.f70058b;
                b0Var.c(b0Var.g() + a10);
                if (!s.d(qVar, this.f70058b.e(), this.f70058b.g(), a10)) {
                    return false;
                }
                b0 b0Var2 = this.f70058b;
                b0Var2.V(b0Var2.g() + a10);
                if (this.f70057a.f70071j[i12 - 1] != 255) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                this.f70061e = z11;
            }
            if (i12 == this.f70057a.f70068g) {
                i12 = -1;
            }
            this.f70059c = i12;
        }
        return true;
    }

    public void e() {
        this.f70057a.b();
        this.f70058b.S(0);
        this.f70059c = -1;
        this.f70061e = false;
    }

    public void f() {
        if (this.f70058b.e().length == 65025) {
            return;
        }
        b0 b0Var = this.f70058b;
        b0Var.U(Arrays.copyOf(b0Var.e(), Math.max((int) OggPageHeader.MAX_PAGE_PAYLOAD, this.f70058b.g())), this.f70058b.g());
    }
}
