package gp;

import android.graphics.Bitmap;
import android.graphics.Rect;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import bn.a;
import cn.a0;
import cn.b0;
import cn.l;
import cn.m0;
import com.google.common.collect.ImmutableList;
import com.ss.texturerender.TextureRenderKeys;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;
import java.util.zip.Inflater;
import yo.e;
import yo.r;
/* compiled from: VobsubParser.java */
/* loaded from: classes8.dex */
public final class a implements r {

    /* renamed from: a  reason: collision with root package name */
    private final b0 f52495a = new b0();

    /* renamed from: b  reason: collision with root package name */
    private final b0 f52496b = new b0();

    /* renamed from: c  reason: collision with root package name */
    private final b f52497c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Inflater f52498d;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: VobsubParser.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: b  reason: collision with root package name */
        private boolean f52500b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f52501c;

        /* renamed from: d  reason: collision with root package name */
        private int[] f52502d;

        /* renamed from: e  reason: collision with root package name */
        private int f52503e;

        /* renamed from: f  reason: collision with root package name */
        private int f52504f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private Rect f52505g;

        /* renamed from: a  reason: collision with root package name */
        private final int[] f52499a = new int[4];

        /* renamed from: h  reason: collision with root package name */
        private int f52506h = -1;

        /* renamed from: i  reason: collision with root package name */
        private int f52507i = -1;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: VobsubParser.java */
        /* renamed from: gp.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public static final class C0761a {

            /* renamed from: a  reason: collision with root package name */
            public int f52508a;

            /* renamed from: b  reason: collision with root package name */
            public int f52509b;

            private C0761a() {
            }
        }

        private static int b(int[] iArr, int i10) {
            if (i10 >= 0 && i10 < iArr.length) {
                return iArr[i10];
            }
            return iArr[0];
        }

        private static int c(String str) {
            try {
                return Integer.parseInt(str, 16);
            } catch (RuntimeException unused) {
                return 0;
            }
        }

        private void d(int[] iArr, b0 b0Var, int i10) {
            while (b0Var.f() < i10 && b0Var.a() > 0) {
                switch (b0Var.H()) {
                    case 0:
                    case 1:
                    case 2:
                        break;
                    case 3:
                        if (g(iArr, b0Var)) {
                            break;
                        } else {
                            return;
                        }
                    case 4:
                        if (e(b0Var)) {
                            break;
                        } else {
                            return;
                        }
                    case 5:
                        if (f(b0Var)) {
                            break;
                        } else {
                            return;
                        }
                    case 6:
                        if (h(b0Var)) {
                            break;
                        } else {
                            return;
                        }
                    default:
                        return;
                }
            }
        }

        private boolean e(b0 b0Var) {
            if (b0Var.a() < 2 || !this.f52501c) {
                return false;
            }
            int H = b0Var.H();
            int H2 = b0Var.H();
            int[] iArr = this.f52499a;
            iArr[3] = n(iArr[3], H >> 4);
            int[] iArr2 = this.f52499a;
            iArr2[2] = n(iArr2[2], H & 15);
            int[] iArr3 = this.f52499a;
            iArr3[1] = n(iArr3[1], H2 >> 4);
            int[] iArr4 = this.f52499a;
            iArr4[0] = n(iArr4[0], H2 & 15);
            return true;
        }

        private boolean f(b0 b0Var) {
            if (b0Var.a() < 6) {
                return false;
            }
            int H = b0Var.H();
            int H2 = b0Var.H();
            int i10 = (H << 4) | (H2 >> 4);
            int H3 = ((H2 & 15) << 8) | b0Var.H();
            int H4 = b0Var.H();
            int H5 = b0Var.H();
            this.f52505g = new Rect(i10, (H4 << 4) | (H5 >> 4), H3 + 1, (b0Var.H() | ((H5 & 15) << 8)) + 1);
            return true;
        }

        private boolean g(int[] iArr, b0 b0Var) {
            if (b0Var.a() < 2) {
                return false;
            }
            int H = b0Var.H();
            int H2 = b0Var.H();
            this.f52499a[3] = b(iArr, H >> 4);
            this.f52499a[2] = b(iArr, H & 15);
            this.f52499a[1] = b(iArr, H2 >> 4);
            this.f52499a[0] = b(iArr, H2 & 15);
            this.f52501c = true;
            return true;
        }

        private boolean h(b0 b0Var) {
            if (b0Var.a() < 4) {
                return false;
            }
            this.f52506h = b0Var.P();
            this.f52507i = b0Var.P();
            return true;
        }

        private void j(a0 a0Var, boolean z10, Rect rect, int[] iArr) {
            int width = rect.width();
            int height = rect.height();
            int i10 = !z10 ? 1 : 0;
            int i11 = i10 * width;
            C0761a c0761a = new C0761a();
            while (true) {
                int i12 = 0;
                do {
                    k(a0Var, width, c0761a);
                    int min = Math.min(c0761a.f52509b, width - i12);
                    if (min > 0) {
                        int i13 = i11 + min;
                        Arrays.fill(iArr, i11, i13, this.f52499a[c0761a.f52508a]);
                        i12 += min;
                        i11 = i13;
                        continue;
                    }
                } while (i12 < width);
                i10 += 2;
                if (i10 >= height) {
                    return;
                }
                i11 = i10 * width;
                a0Var.c();
            }
        }

        private static void k(a0 a0Var, int i10, C0761a c0761a) {
            int i11 = 0;
            for (int i12 = 1; i11 < i12 && i12 <= 64; i12 <<= 2) {
                if (a0Var.b() < 4) {
                    c0761a.f52508a = -1;
                    c0761a.f52509b = 0;
                    return;
                }
                i11 = (i11 << 4) | a0Var.h(4);
            }
            c0761a.f52508a = i11 & 3;
            if (i11 >= 4) {
                i10 = i11 >> 2;
            }
            c0761a.f52509b = i10;
        }

        private static int n(int i10, int i11) {
            return (i10 & ViewCompat.MEASURED_SIZE_MASK) | ((i11 * 17) << 24);
        }

        @Nullable
        public bn.a a(b0 b0Var) {
            Rect rect;
            if (this.f52502d != null && this.f52500b && this.f52501c && (rect = this.f52505g) != null && this.f52506h != -1 && this.f52507i != -1 && rect.width() >= 2 && this.f52505g.height() >= 2) {
                Rect rect2 = this.f52505g;
                int[] iArr = new int[rect2.width() * rect2.height()];
                a0 a0Var = new a0();
                b0Var.W(this.f52506h);
                a0Var.m(b0Var);
                j(a0Var, true, rect2, iArr);
                b0Var.W(this.f52507i);
                a0Var.m(b0Var);
                j(a0Var, false, rect2, iArr);
                return new a.b().f(Bitmap.createBitmap(iArr, rect2.width(), rect2.height(), Bitmap.Config.ARGB_8888)).k(rect2.left / this.f52503e).l(0).h(rect2.top / this.f52504f, 0).i(0).n(rect2.width() / this.f52503e).g(rect2.height() / this.f52504f).a();
            }
            return null;
        }

        public void i(String str) {
            String[] m12;
            for (String str2 : m0.m1(str.trim(), "\\r?\\n")) {
                if (str2.startsWith("palette: ")) {
                    String[] m13 = m0.m1(str2.substring(9), ",");
                    this.f52502d = new int[m13.length];
                    for (int i10 = 0; i10 < m13.length; i10++) {
                        this.f52502d[i10] = c(m13[i10].trim());
                    }
                } else if (str2.startsWith("size: ")) {
                    String[] m14 = m0.m1(str2.substring(6).trim(), TextureRenderKeys.KEY_IS_X);
                    if (m14.length == 2) {
                        try {
                            this.f52503e = Integer.parseInt(m14[0]);
                            this.f52504f = Integer.parseInt(m14[1]);
                            this.f52500b = true;
                        } catch (RuntimeException e10) {
                            cn.r.i("VobsubParser", "Parsing IDX failed", e10);
                        }
                    }
                }
            }
        }

        public void l(b0 b0Var) {
            int[] iArr = this.f52502d;
            if (iArr != null && this.f52500b) {
                b0Var.X(b0Var.P() - 2);
                d(iArr, b0Var, b0Var.P());
            }
        }

        public void m() {
            this.f52501c = false;
            this.f52505g = null;
            this.f52506h = -1;
            this.f52507i = -1;
        }
    }

    public a(List<byte[]> list) {
        b bVar = new b();
        this.f52497c = bVar;
        bVar.i(new String(list.get(0), StandardCharsets.UTF_8));
    }

    @Nullable
    private bn.a d() {
        if (this.f52498d == null) {
            this.f52498d = new Inflater();
        }
        if (m0.P0(this.f52495a, this.f52496b, this.f52498d)) {
            this.f52495a.U(this.f52496b.e(), this.f52496b.g());
        }
        this.f52497c.m();
        int a10 = this.f52495a.a();
        if (a10 >= 2 && this.f52495a.P() == a10) {
            this.f52497c.l(this.f52495a);
            return this.f52497c.a(this.f52495a);
        }
        return null;
    }

    @Override // yo.r
    public void a(byte[] bArr, int i10, int i11, r.b bVar, l<e> lVar) {
        ImmutableList A;
        this.f52495a.U(bArr, i11 + i10);
        this.f52495a.W(i10);
        bn.a d10 = d();
        if (d10 != null) {
            A = ImmutableList.B(d10);
        } else {
            A = ImmutableList.A();
        }
        lVar.accept(new e(A, -9223372036854775807L, 5000000L));
    }

    @Override // yo.r
    public int b() {
        return 2;
    }
}
