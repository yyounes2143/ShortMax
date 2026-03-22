package s6;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import b7.g0;
import b7.s0;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.zip.Inflater;
import p6.b;
import p6.h;
import p6.i;
/* compiled from: PgsDecoder.java */
/* loaded from: classes4.dex */
public final class a extends h {

    /* renamed from: o  reason: collision with root package name */
    private final g0 f66328o;

    /* renamed from: p  reason: collision with root package name */
    private final g0 f66329p;

    /* renamed from: q  reason: collision with root package name */
    private final C0920a f66330q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private Inflater f66331r;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PgsDecoder.java */
    /* renamed from: s6.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0920a {

        /* renamed from: a  reason: collision with root package name */
        private final g0 f66332a = new g0();

        /* renamed from: b  reason: collision with root package name */
        private final int[] f66333b = new int[256];

        /* renamed from: c  reason: collision with root package name */
        private boolean f66334c;

        /* renamed from: d  reason: collision with root package name */
        private int f66335d;

        /* renamed from: e  reason: collision with root package name */
        private int f66336e;

        /* renamed from: f  reason: collision with root package name */
        private int f66337f;

        /* renamed from: g  reason: collision with root package name */
        private int f66338g;

        /* renamed from: h  reason: collision with root package name */
        private int f66339h;

        /* renamed from: i  reason: collision with root package name */
        private int f66340i;

        /* JADX INFO: Access modifiers changed from: private */
        public void e(g0 g0Var, int i10) {
            boolean z10;
            int G;
            if (i10 < 4) {
                return;
            }
            g0Var.Q(3);
            if ((g0Var.D() & 128) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            int i11 = i10 - 4;
            if (z10) {
                if (i11 < 7 || (G = g0Var.G()) < 4) {
                    return;
                }
                this.f66339h = g0Var.J();
                this.f66340i = g0Var.J();
                this.f66332a.L(G - 4);
                i11 = i10 - 11;
            }
            int e10 = this.f66332a.e();
            int f10 = this.f66332a.f();
            if (e10 < f10 && i11 > 0) {
                int min = Math.min(i11, f10 - e10);
                g0Var.j(this.f66332a.d(), e10, min);
                this.f66332a.P(e10 + min);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f(g0 g0Var, int i10) {
            if (i10 < 19) {
                return;
            }
            this.f66335d = g0Var.J();
            this.f66336e = g0Var.J();
            g0Var.Q(11);
            this.f66337f = g0Var.J();
            this.f66338g = g0Var.J();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g(g0 g0Var, int i10) {
            if (i10 % 5 != 2) {
                return;
            }
            g0Var.Q(2);
            Arrays.fill(this.f66333b, 0);
            int i11 = i10 / 5;
            for (int i12 = 0; i12 < i11; i12++) {
                int D = g0Var.D();
                int D2 = g0Var.D();
                int D3 = g0Var.D();
                int D4 = g0Var.D();
                double d10 = D2;
                double d11 = D3 - 128;
                double d12 = D4 - 128;
                this.f66333b[D] = (s0.p((int) ((d10 - (0.34414d * d12)) - (d11 * 0.71414d)), 0, 255) << 8) | (g0Var.D() << 24) | (s0.p((int) ((1.402d * d11) + d10), 0, 255) << 16) | s0.p((int) (d10 + (d12 * 1.772d)), 0, 255);
            }
            this.f66334c = true;
        }

        @Nullable
        public p6.b d() {
            int i10;
            int D;
            int i11;
            if (this.f66335d != 0 && this.f66336e != 0 && this.f66339h != 0 && this.f66340i != 0 && this.f66332a.f() != 0 && this.f66332a.e() == this.f66332a.f() && this.f66334c) {
                this.f66332a.P(0);
                int i12 = this.f66339h * this.f66340i;
                int[] iArr = new int[i12];
                int i13 = 0;
                while (i13 < i12) {
                    int D2 = this.f66332a.D();
                    if (D2 != 0) {
                        i10 = i13 + 1;
                        iArr[i13] = this.f66333b[D2];
                    } else {
                        int D3 = this.f66332a.D();
                        if (D3 != 0) {
                            if ((D3 & 64) == 0) {
                                D = D3 & 63;
                            } else {
                                D = ((D3 & 63) << 8) | this.f66332a.D();
                            }
                            if ((D3 & 128) == 0) {
                                i11 = 0;
                            } else {
                                i11 = this.f66333b[this.f66332a.D()];
                            }
                            i10 = D + i13;
                            Arrays.fill(iArr, i13, i10, i11);
                        }
                    }
                    i13 = i10;
                }
                return new b.C0897b().f(Bitmap.createBitmap(iArr, this.f66339h, this.f66340i, Bitmap.Config.ARGB_8888)).k(this.f66337f / this.f66335d).l(0).h(this.f66338g / this.f66336e, 0).i(0).n(this.f66339h / this.f66335d).g(this.f66340i / this.f66336e).a();
            }
            return null;
        }

        public void h() {
            this.f66335d = 0;
            this.f66336e = 0;
            this.f66337f = 0;
            this.f66338g = 0;
            this.f66339h = 0;
            this.f66340i = 0;
            this.f66332a.L(0);
            this.f66334c = false;
        }
    }

    public a() {
        super("PgsDecoder");
        this.f66328o = new g0();
        this.f66329p = new g0();
        this.f66330q = new C0920a();
    }

    private void x(g0 g0Var) {
        if (g0Var.a() > 0 && g0Var.h() == 120) {
            if (this.f66331r == null) {
                this.f66331r = new Inflater();
            }
            if (s0.l0(g0Var, this.f66329p, this.f66331r)) {
                g0Var.N(this.f66329p.d(), this.f66329p.f());
            }
        }
    }

    @Nullable
    private static p6.b y(g0 g0Var, C0920a c0920a) {
        int f10 = g0Var.f();
        int D = g0Var.D();
        int J = g0Var.J();
        int e10 = g0Var.e() + J;
        p6.b bVar = null;
        if (e10 > f10) {
            g0Var.P(f10);
            return null;
        }
        if (D != 128) {
            switch (D) {
                case 20:
                    c0920a.g(g0Var, J);
                    break;
                case 21:
                    c0920a.e(g0Var, J);
                    break;
                case 22:
                    c0920a.f(g0Var, J);
                    break;
            }
        } else {
            bVar = c0920a.d();
            c0920a.h();
        }
        g0Var.P(e10);
        return bVar;
    }

    @Override // p6.h
    protected i w(byte[] bArr, int i10, boolean z10) throws SubtitleDecoderException {
        this.f66328o.N(bArr, i10);
        x(this.f66328o);
        this.f66330q.h();
        ArrayList arrayList = new ArrayList();
        while (this.f66328o.a() >= 3) {
            p6.b y10 = y(this.f66328o, this.f66330q);
            if (y10 != null) {
                arrayList.add(y10);
            }
        }
        return new b(Collections.unmodifiableList(arrayList));
    }
}
