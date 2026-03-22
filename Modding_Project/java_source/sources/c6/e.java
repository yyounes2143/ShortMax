package c6;

import b7.g0;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.OggPageHeader;
import java.io.IOException;
import java.util.Arrays;
import t5.l;
import t5.n;
/* compiled from: OggPacket.java */
/* loaded from: classes4.dex */
final class e {

    /* renamed from: a  reason: collision with root package name */
    private final f f3171a = new f();

    /* renamed from: b  reason: collision with root package name */
    private final g0 f3172b = new g0(new byte[OggPageHeader.MAX_PAGE_PAYLOAD], 0);

    /* renamed from: c  reason: collision with root package name */
    private int f3173c = -1;

    /* renamed from: d  reason: collision with root package name */
    private int f3174d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f3175e;

    private int a(int i10) {
        int i11;
        int i12 = 0;
        this.f3174d = 0;
        do {
            int i13 = this.f3174d;
            int i14 = i10 + i13;
            f fVar = this.f3171a;
            if (i14 >= fVar.f3182g) {
                break;
            }
            int[] iArr = fVar.f3185j;
            this.f3174d = i13 + 1;
            i11 = iArr[i13 + i10];
            i12 += i11;
        } while (i11 == 255);
        return i12;
    }

    public f b() {
        return this.f3171a;
    }

    public g0 c() {
        return this.f3172b;
    }

    public boolean d(l lVar) throws IOException {
        boolean z10;
        boolean z11;
        int i10;
        if (lVar != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        if (this.f3175e) {
            this.f3175e = false;
            this.f3172b.L(0);
        }
        while (!this.f3175e) {
            if (this.f3173c < 0) {
                if (!this.f3171a.c(lVar) || !this.f3171a.a(lVar, true)) {
                    return false;
                }
                f fVar = this.f3171a;
                int i11 = fVar.f3183h;
                if ((fVar.f3177b & 1) == 1 && this.f3172b.f() == 0) {
                    i11 += a(0);
                    i10 = this.f3174d;
                } else {
                    i10 = 0;
                }
                if (!n.e(lVar, i11)) {
                    return false;
                }
                this.f3173c = i10;
            }
            int a10 = a(this.f3173c);
            int i12 = this.f3173c + this.f3174d;
            if (a10 > 0) {
                g0 g0Var = this.f3172b;
                g0Var.c(g0Var.f() + a10);
                if (!n.d(lVar, this.f3172b.d(), this.f3172b.f(), a10)) {
                    return false;
                }
                g0 g0Var2 = this.f3172b;
                g0Var2.O(g0Var2.f() + a10);
                if (this.f3171a.f3185j[i12 - 1] != 255) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                this.f3175e = z11;
            }
            if (i12 == this.f3171a.f3182g) {
                i12 = -1;
            }
            this.f3173c = i12;
        }
        return true;
    }

    public void e() {
        this.f3171a.b();
        this.f3172b.L(0);
        this.f3173c = -1;
        this.f3175e = false;
    }

    public void f() {
        if (this.f3172b.d().length == 65025) {
            return;
        }
        g0 g0Var = this.f3172b;
        g0Var.N(Arrays.copyOf(g0Var.d(), Math.max((int) OggPageHeader.MAX_PAGE_PAYLOAD, this.f3172b.f())), this.f3172b.f());
    }
}
