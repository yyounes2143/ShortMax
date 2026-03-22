package bp;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import bn.a;
import cn.b0;
import cn.l;
import cn.m0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.zip.Inflater;
import yo.e;
import yo.r;
/* compiled from: PgsParser.java */
/* loaded from: classes8.dex */
public final class a implements r {

    /* renamed from: a  reason: collision with root package name */
    private final b0 f2780a = new b0();

    /* renamed from: b  reason: collision with root package name */
    private final b0 f2781b = new b0();

    /* renamed from: c  reason: collision with root package name */
    private final C0080a f2782c = new C0080a();
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Inflater f2783d;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PgsParser.java */
    /* renamed from: bp.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0080a {

        /* renamed from: a  reason: collision with root package name */
        private final b0 f2784a = new b0();

        /* renamed from: b  reason: collision with root package name */
        private final int[] f2785b = new int[256];

        /* renamed from: c  reason: collision with root package name */
        private boolean f2786c;

        /* renamed from: d  reason: collision with root package name */
        private int f2787d;

        /* renamed from: e  reason: collision with root package name */
        private int f2788e;

        /* renamed from: f  reason: collision with root package name */
        private int f2789f;

        /* renamed from: g  reason: collision with root package name */
        private int f2790g;

        /* renamed from: h  reason: collision with root package name */
        private int f2791h;

        /* renamed from: i  reason: collision with root package name */
        private int f2792i;

        /* JADX INFO: Access modifiers changed from: private */
        public void e(b0 b0Var, int i10) {
            boolean z10;
            int K;
            if (i10 < 4) {
                return;
            }
            b0Var.X(3);
            if ((b0Var.H() & 128) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            int i11 = i10 - 4;
            if (z10) {
                if (i11 < 7 || (K = b0Var.K()) < 4) {
                    return;
                }
                this.f2791h = b0Var.P();
                this.f2792i = b0Var.P();
                this.f2784a.S(K - 4);
                i11 = i10 - 11;
            }
            int f10 = this.f2784a.f();
            int g10 = this.f2784a.g();
            if (f10 < g10 && i11 > 0) {
                int min = Math.min(i11, g10 - f10);
                b0Var.l(this.f2784a.e(), f10, min);
                this.f2784a.W(f10 + min);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f(b0 b0Var, int i10) {
            if (i10 < 19) {
                return;
            }
            this.f2787d = b0Var.P();
            this.f2788e = b0Var.P();
            b0Var.X(11);
            this.f2789f = b0Var.P();
            this.f2790g = b0Var.P();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g(b0 b0Var, int i10) {
            if (i10 % 5 != 2) {
                return;
            }
            b0Var.X(2);
            Arrays.fill(this.f2785b, 0);
            int i11 = i10 / 5;
            for (int i12 = 0; i12 < i11; i12++) {
                int H = b0Var.H();
                int H2 = b0Var.H();
                int H3 = b0Var.H();
                int H4 = b0Var.H();
                double d10 = H2;
                double d11 = H3 - 128;
                double d12 = H4 - 128;
                this.f2785b[H] = (m0.p((int) ((d10 - (0.34414d * d12)) - (d11 * 0.71414d)), 0, 255) << 8) | (b0Var.H() << 24) | (m0.p((int) ((1.402d * d11) + d10), 0, 255) << 16) | m0.p((int) (d10 + (d12 * 1.772d)), 0, 255);
            }
            this.f2786c = true;
        }

        @Nullable
        public bn.a d() {
            int i10;
            int H;
            int i11;
            if (this.f2787d != 0 && this.f2788e != 0 && this.f2791h != 0 && this.f2792i != 0 && this.f2784a.g() != 0 && this.f2784a.f() == this.f2784a.g() && this.f2786c) {
                this.f2784a.W(0);
                int i12 = this.f2791h * this.f2792i;
                int[] iArr = new int[i12];
                int i13 = 0;
                while (i13 < i12) {
                    int H2 = this.f2784a.H();
                    if (H2 != 0) {
                        i10 = i13 + 1;
                        iArr[i13] = this.f2785b[H2];
                    } else {
                        int H3 = this.f2784a.H();
                        if (H3 != 0) {
                            if ((H3 & 64) == 0) {
                                H = H3 & 63;
                            } else {
                                H = ((H3 & 63) << 8) | this.f2784a.H();
                            }
                            if ((H3 & 128) == 0) {
                                i11 = this.f2785b[0];
                            } else {
                                i11 = this.f2785b[this.f2784a.H()];
                            }
                            i10 = H + i13;
                            Arrays.fill(iArr, i13, i10, i11);
                        }
                    }
                    i13 = i10;
                }
                return new a.b().f(Bitmap.createBitmap(iArr, this.f2791h, this.f2792i, Bitmap.Config.ARGB_8888)).k(this.f2789f / this.f2787d).l(0).h(this.f2790g / this.f2788e, 0).i(0).n(this.f2791h / this.f2787d).g(this.f2792i / this.f2788e).a();
            }
            return null;
        }

        public void h() {
            this.f2787d = 0;
            this.f2788e = 0;
            this.f2789f = 0;
            this.f2790g = 0;
            this.f2791h = 0;
            this.f2792i = 0;
            this.f2784a.S(0);
            this.f2786c = false;
        }
    }

    @Nullable
    private static bn.a d(b0 b0Var, C0080a c0080a) {
        int g10 = b0Var.g();
        int H = b0Var.H();
        int P = b0Var.P();
        int f10 = b0Var.f() + P;
        bn.a aVar = null;
        if (f10 > g10) {
            b0Var.W(g10);
            return null;
        }
        if (H != 128) {
            switch (H) {
                case 20:
                    c0080a.g(b0Var, P);
                    break;
                case 21:
                    c0080a.e(b0Var, P);
                    break;
                case 22:
                    c0080a.f(b0Var, P);
                    break;
            }
        } else {
            aVar = c0080a.d();
            c0080a.h();
        }
        b0Var.W(f10);
        return aVar;
    }

    @Override // yo.r
    public void a(byte[] bArr, int i10, int i11, r.b bVar, l<e> lVar) {
        this.f2780a.U(bArr, i11 + i10);
        this.f2780a.W(i10);
        if (this.f2783d == null) {
            this.f2783d = new Inflater();
        }
        if (m0.P0(this.f2780a, this.f2781b, this.f2783d)) {
            this.f2780a.U(this.f2781b.e(), this.f2781b.g());
        }
        this.f2782c.h();
        ArrayList arrayList = new ArrayList();
        while (this.f2780a.a() >= 3) {
            bn.a d10 = d(this.f2780a, this.f2782c);
            if (d10 != null) {
                arrayList.add(d10);
            }
        }
        lVar.accept(new e(arrayList, -9223372036854775807L, -9223372036854775807L));
    }

    @Override // yo.r
    public int b() {
        return 2;
    }
}
