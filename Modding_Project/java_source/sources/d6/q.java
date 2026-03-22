package d6;

import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.v0;
import d6.i0;
import java.util.Collections;
import kotlin.jvm.internal.ByteCompanionObject;
/* compiled from: H265Reader.java */
/* loaded from: classes4.dex */
public final class q implements m {

    /* renamed from: a  reason: collision with root package name */
    private final d0 f50096a;

    /* renamed from: b  reason: collision with root package name */
    private String f50097b;

    /* renamed from: c  reason: collision with root package name */
    private t5.b0 f50098c;

    /* renamed from: d  reason: collision with root package name */
    private a f50099d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f50100e;

    /* renamed from: l  reason: collision with root package name */
    private long f50107l;

    /* renamed from: f  reason: collision with root package name */
    private final boolean[] f50101f = new boolean[3];

    /* renamed from: g  reason: collision with root package name */
    private final u f50102g = new u(32, 128);

    /* renamed from: h  reason: collision with root package name */
    private final u f50103h = new u(33, 128);

    /* renamed from: i  reason: collision with root package name */
    private final u f50104i = new u(34, 128);

    /* renamed from: j  reason: collision with root package name */
    private final u f50105j = new u(39, 128);

    /* renamed from: k  reason: collision with root package name */
    private final u f50106k = new u(40, 128);

    /* renamed from: m  reason: collision with root package name */
    private long f50108m = -9223372036854775807L;

    /* renamed from: n  reason: collision with root package name */
    private final b7.g0 f50109n = new b7.g0();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: H265Reader.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final t5.b0 f50110a;

        /* renamed from: b  reason: collision with root package name */
        private long f50111b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f50112c;

        /* renamed from: d  reason: collision with root package name */
        private int f50113d;

        /* renamed from: e  reason: collision with root package name */
        private long f50114e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f50115f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f50116g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f50117h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f50118i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f50119j;

        /* renamed from: k  reason: collision with root package name */
        private long f50120k;

        /* renamed from: l  reason: collision with root package name */
        private long f50121l;

        /* renamed from: m  reason: collision with root package name */
        private boolean f50122m;

        public a(t5.b0 b0Var) {
            this.f50110a = b0Var;
        }

        private static boolean b(int i10) {
            if ((32 <= i10 && i10 <= 35) || i10 == 39) {
                return true;
            }
            return false;
        }

        private static boolean c(int i10) {
            if (i10 >= 32 && i10 != 40) {
                return false;
            }
            return true;
        }

        private void d(int i10) {
            long j10 = this.f50121l;
            if (j10 == -9223372036854775807L) {
                return;
            }
            boolean z10 = this.f50122m;
            this.f50110a.e(j10, z10 ? 1 : 0, (int) (this.f50111b - this.f50120k), i10, null);
        }

        public void a(long j10, int i10, boolean z10) {
            if (this.f50119j && this.f50116g) {
                this.f50122m = this.f50112c;
                this.f50119j = false;
            } else if (this.f50117h || this.f50116g) {
                if (z10 && this.f50118i) {
                    d(i10 + ((int) (j10 - this.f50111b)));
                }
                this.f50120k = this.f50111b;
                this.f50121l = this.f50114e;
                this.f50122m = this.f50112c;
                this.f50118i = true;
            }
        }

        public void e(byte[] bArr, int i10, int i11) {
            boolean z10;
            if (this.f50115f) {
                int i12 = this.f50113d;
                int i13 = (i10 + 2) - i12;
                if (i13 < i11) {
                    if ((bArr[i13] & ByteCompanionObject.MIN_VALUE) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f50116g = z10;
                    this.f50115f = false;
                    return;
                }
                this.f50113d = i12 + (i11 - i10);
            }
        }

        public void f() {
            this.f50115f = false;
            this.f50116g = false;
            this.f50117h = false;
            this.f50118i = false;
            this.f50119j = false;
        }

        public void g(long j10, int i10, int i11, long j11, boolean z10) {
            boolean z11;
            boolean z12 = false;
            this.f50116g = false;
            this.f50117h = false;
            this.f50114e = j11;
            this.f50113d = 0;
            this.f50111b = j10;
            if (!c(i11)) {
                if (this.f50118i && !this.f50119j) {
                    if (z10) {
                        d(i10);
                    }
                    this.f50118i = false;
                }
                if (b(i11)) {
                    this.f50117h = !this.f50119j;
                    this.f50119j = true;
                }
            }
            if (i11 >= 16 && i11 <= 21) {
                z11 = true;
            } else {
                z11 = false;
            }
            this.f50112c = z11;
            if (z11 || i11 <= 9) {
                z12 = true;
            }
            this.f50115f = z12;
        }
    }

    public q(d0 d0Var) {
        this.f50096a = d0Var;
    }

    private void a() {
        b7.a.i(this.f50098c);
        s0.j(this.f50099d);
    }

    private void e(long j10, int i10, int i11, long j11) {
        this.f50099d.a(j10, i10, this.f50100e);
        if (!this.f50100e) {
            this.f50102g.b(i11);
            this.f50103h.b(i11);
            this.f50104i.b(i11);
            if (this.f50102g.c() && this.f50103h.c() && this.f50104i.c()) {
                this.f50098c.b(g(this.f50097b, this.f50102g, this.f50103h, this.f50104i));
                this.f50100e = true;
            }
        }
        if (this.f50105j.b(i11)) {
            u uVar = this.f50105j;
            this.f50109n.N(this.f50105j.f50165d, b7.v.q(uVar.f50165d, uVar.f50166e));
            this.f50109n.Q(5);
            this.f50096a.a(j11, this.f50109n);
        }
        if (this.f50106k.b(i11)) {
            u uVar2 = this.f50106k;
            this.f50109n.N(this.f50106k.f50165d, b7.v.q(uVar2.f50165d, uVar2.f50166e));
            this.f50109n.Q(5);
            this.f50096a.a(j11, this.f50109n);
        }
    }

    private void f(byte[] bArr, int i10, int i11) {
        this.f50099d.e(bArr, i10, i11);
        if (!this.f50100e) {
            this.f50102g.a(bArr, i10, i11);
            this.f50103h.a(bArr, i10, i11);
            this.f50104i.a(bArr, i10, i11);
        }
        this.f50105j.a(bArr, i10, i11);
        this.f50106k.a(bArr, i10, i11);
    }

    private static v0 g(@Nullable String str, u uVar, u uVar2, u uVar3) {
        int i10;
        int i11;
        int i12;
        int i13 = uVar.f50166e;
        byte[] bArr = new byte[uVar2.f50166e + i13 + uVar3.f50166e];
        int i14 = 0;
        System.arraycopy(uVar.f50165d, 0, bArr, 0, i13);
        System.arraycopy(uVar2.f50165d, 0, bArr, uVar.f50166e, uVar2.f50166e);
        System.arraycopy(uVar3.f50165d, 0, bArr, uVar.f50166e + uVar2.f50166e, uVar3.f50166e);
        b7.h0 h0Var = new b7.h0(uVar2.f50165d, 0, uVar2.f50166e);
        h0Var.l(44);
        int e10 = h0Var.e(3);
        h0Var.k();
        int e11 = h0Var.e(2);
        boolean d10 = h0Var.d();
        int e12 = h0Var.e(5);
        int i15 = 0;
        int i16 = 0;
        while (true) {
            i10 = 1;
            if (i16 >= 32) {
                break;
            }
            if (h0Var.d()) {
                i15 |= 1 << i16;
            }
            i16++;
        }
        int[] iArr = new int[6];
        for (int i17 = 0; i17 < 6; i17++) {
            iArr[i17] = h0Var.e(8);
        }
        int e13 = h0Var.e(8);
        for (int i18 = 0; i18 < e10; i18++) {
            if (h0Var.d()) {
                i14 += 89;
            }
            if (h0Var.d()) {
                i14 += 8;
            }
        }
        h0Var.l(i14);
        if (e10 > 0) {
            h0Var.l((8 - e10) * 2);
        }
        h0Var.h();
        int h10 = h0Var.h();
        if (h10 == 3) {
            h0Var.k();
        }
        int h11 = h0Var.h();
        int h12 = h0Var.h();
        if (h0Var.d()) {
            int h13 = h0Var.h();
            int h14 = h0Var.h();
            int h15 = h0Var.h();
            int h16 = h0Var.h();
            if (h10 != 1 && h10 != 2) {
                i12 = 1;
            } else {
                i12 = 2;
            }
            if (h10 == 1) {
                i10 = 2;
            }
            h11 -= i12 * (h13 + h14);
            h12 -= i10 * (h15 + h16);
        }
        h0Var.h();
        h0Var.h();
        int h17 = h0Var.h();
        if (h0Var.d()) {
            i11 = 0;
        } else {
            i11 = e10;
        }
        while (i11 <= e10) {
            h0Var.h();
            h0Var.h();
            h0Var.h();
            i11++;
        }
        h0Var.h();
        h0Var.h();
        h0Var.h();
        h0Var.h();
        h0Var.h();
        h0Var.h();
        if (h0Var.d() && h0Var.d()) {
            h(h0Var);
        }
        h0Var.l(2);
        if (h0Var.d()) {
            h0Var.l(8);
            h0Var.h();
            h0Var.h();
            h0Var.k();
        }
        i(h0Var);
        if (h0Var.d()) {
            for (int i19 = 0; i19 < h0Var.h(); i19++) {
                h0Var.l(h17 + 5);
            }
        }
        h0Var.l(2);
        float f10 = 1.0f;
        if (h0Var.d()) {
            if (h0Var.d()) {
                int e14 = h0Var.e(8);
                if (e14 == 255) {
                    int e15 = h0Var.e(16);
                    int e16 = h0Var.e(16);
                    if (e15 != 0 && e16 != 0) {
                        f10 = e15 / e16;
                    }
                } else {
                    float[] fArr = b7.v.f2529b;
                    if (e14 < fArr.length) {
                        f10 = fArr[e14];
                    } else {
                        b7.q.i("H265Reader", "Unexpected aspect_ratio_idc value: " + e14);
                    }
                }
            }
            if (h0Var.d()) {
                h0Var.k();
            }
            if (h0Var.d()) {
                h0Var.l(4);
                if (h0Var.d()) {
                    h0Var.l(24);
                }
            }
            if (h0Var.d()) {
                h0Var.h();
                h0Var.h();
            }
            h0Var.k();
            if (h0Var.d()) {
                h12 *= 2;
            }
        }
        return new v0.b().S(str).e0("video/hevc").I(b7.e.c(e11, d10, e12, i15, iArr, e13)).j0(h11).Q(h12).a0(f10).T(Collections.singletonList(bArr)).E();
    }

    private static void h(b7.h0 h0Var) {
        for (int i10 = 0; i10 < 4; i10++) {
            int i11 = 0;
            while (i11 < 6) {
                int i12 = 1;
                if (!h0Var.d()) {
                    h0Var.h();
                } else {
                    int min = Math.min(64, 1 << ((i10 << 1) + 4));
                    if (i10 > 1) {
                        h0Var.g();
                    }
                    for (int i13 = 0; i13 < min; i13++) {
                        h0Var.g();
                    }
                }
                if (i10 == 3) {
                    i12 = 3;
                }
                i11 += i12;
            }
        }
    }

    private static void i(b7.h0 h0Var) {
        int h10 = h0Var.h();
        boolean z10 = false;
        int i10 = 0;
        for (int i11 = 0; i11 < h10; i11++) {
            if (i11 != 0) {
                z10 = h0Var.d();
            }
            if (z10) {
                h0Var.k();
                h0Var.h();
                for (int i12 = 0; i12 <= i10; i12++) {
                    if (h0Var.d()) {
                        h0Var.k();
                    }
                }
            } else {
                int h11 = h0Var.h();
                int h12 = h0Var.h();
                int i13 = h11 + h12;
                for (int i14 = 0; i14 < h11; i14++) {
                    h0Var.h();
                    h0Var.k();
                }
                for (int i15 = 0; i15 < h12; i15++) {
                    h0Var.h();
                    h0Var.k();
                }
                i10 = i13;
            }
        }
    }

    private void j(long j10, int i10, int i11, long j11) {
        this.f50099d.g(j10, i10, i11, j11, this.f50100e);
        if (!this.f50100e) {
            this.f50102g.e(i11);
            this.f50103h.e(i11);
            this.f50104i.e(i11);
        }
        this.f50105j.e(i11);
        this.f50106k.e(i11);
    }

    @Override // d6.m
    public void b(b7.g0 g0Var) {
        int i10;
        a();
        while (g0Var.a() > 0) {
            int e10 = g0Var.e();
            int f10 = g0Var.f();
            byte[] d10 = g0Var.d();
            this.f50107l += g0Var.a();
            this.f50098c.a(g0Var, g0Var.a());
            while (e10 < f10) {
                int c10 = b7.v.c(d10, e10, f10, this.f50101f);
                if (c10 == f10) {
                    f(d10, e10, f10);
                    return;
                }
                int e11 = b7.v.e(d10, c10);
                int i11 = c10 - e10;
                if (i11 > 0) {
                    f(d10, e10, c10);
                }
                int i12 = f10 - c10;
                long j10 = this.f50107l - i12;
                if (i11 < 0) {
                    i10 = -i11;
                } else {
                    i10 = 0;
                }
                e(j10, i12, i10, this.f50108m);
                j(j10, i12, e11, this.f50108m);
                e10 = c10 + 3;
            }
        }
    }

    @Override // d6.m
    public void c(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f50108m = j10;
        }
    }

    @Override // d6.m
    public void d(t5.m mVar, i0.d dVar) {
        dVar.a();
        this.f50097b = dVar.b();
        t5.b0 track = mVar.track(dVar.c(), 2);
        this.f50098c = track;
        this.f50099d = new a(track);
        this.f50096a.b(mVar, dVar);
    }

    @Override // d6.m
    public void seek() {
        this.f50107l = 0L;
        this.f50108m = -9223372036854775807L;
        b7.v.a(this.f50101f);
        this.f50102g.d();
        this.f50103h.d();
        this.f50104i.d();
        this.f50105j.d();
        this.f50106k.d();
        a aVar = this.f50099d;
        if (aVar != null) {
            aVar.f();
        }
    }

    @Override // d6.m
    public void packetFinished() {
    }
}
