package zo;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import bn.a;
import cn.a0;
import cn.b0;
import cn.i;
import cn.r;
import io.bidmachine.media3.extractor.text.SubtitleDecoderException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import yo.k;
import yo.o;
import yo.p;
import zo.c;
/* compiled from: Cea708Decoder.java */
/* loaded from: classes8.dex */
public final class c extends e {

    /* renamed from: h  reason: collision with root package name */
    private final b0 f72276h = new b0();

    /* renamed from: i  reason: collision with root package name */
    private final a0 f72277i = new a0();

    /* renamed from: j  reason: collision with root package name */
    private int f72278j = -1;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f72279k;

    /* renamed from: l  reason: collision with root package name */
    private final int f72280l;

    /* renamed from: m  reason: collision with root package name */
    private final b[] f72281m;

    /* renamed from: n  reason: collision with root package name */
    private b f72282n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private List<bn.a> f72283o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private List<bn.a> f72284p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private C0992c f72285q;

    /* renamed from: r  reason: collision with root package name */
    private int f72286r;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Cea708Decoder.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: c  reason: collision with root package name */
        private static final Comparator<a> f72287c = new Comparator() { // from class: zo.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int c10;
                c10 = c.a.c((c.a) obj, (c.a) obj2);
                return c10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final bn.a f72288a;

        /* renamed from: b  reason: collision with root package name */
        public final int f72289b;

        public a(CharSequence charSequence, Layout.Alignment alignment, float f10, int i10, int i11, float f11, int i12, float f12, boolean z10, int i13, int i14) {
            a.b n10 = new a.b().o(charSequence).p(alignment).h(f10, i10).i(i11).k(f11).l(i12).n(f12);
            if (z10) {
                n10.s(i13);
            }
            this.f72288a = n10.a();
            this.f72289b = i14;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int c(a aVar, a aVar2) {
            return Integer.compare(aVar2.f72289b, aVar.f72289b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Cea708Decoder.java */
    /* loaded from: classes8.dex */
    public static final class b {
        private static final int[] A;
        private static final boolean[] B;
        private static final int[] C;
        private static final int[] D;
        private static final int[] E;
        private static final int[] F;

        /* renamed from: v  reason: collision with root package name */
        public static final int f72290v = h(2, 2, 2, 0);

        /* renamed from: w  reason: collision with root package name */
        public static final int f72291w;

        /* renamed from: x  reason: collision with root package name */
        public static final int f72292x;

        /* renamed from: y  reason: collision with root package name */
        private static final int[] f72293y;

        /* renamed from: z  reason: collision with root package name */
        private static final int[] f72294z;

        /* renamed from: a  reason: collision with root package name */
        private final List<SpannableString> f72295a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private final SpannableStringBuilder f72296b = new SpannableStringBuilder();

        /* renamed from: c  reason: collision with root package name */
        private boolean f72297c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f72298d;

        /* renamed from: e  reason: collision with root package name */
        private int f72299e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f72300f;

        /* renamed from: g  reason: collision with root package name */
        private int f72301g;

        /* renamed from: h  reason: collision with root package name */
        private int f72302h;

        /* renamed from: i  reason: collision with root package name */
        private int f72303i;

        /* renamed from: j  reason: collision with root package name */
        private int f72304j;

        /* renamed from: k  reason: collision with root package name */
        private int f72305k;

        /* renamed from: l  reason: collision with root package name */
        private int f72306l;

        /* renamed from: m  reason: collision with root package name */
        private int f72307m;

        /* renamed from: n  reason: collision with root package name */
        private int f72308n;

        /* renamed from: o  reason: collision with root package name */
        private int f72309o;

        /* renamed from: p  reason: collision with root package name */
        private int f72310p;

        /* renamed from: q  reason: collision with root package name */
        private int f72311q;

        /* renamed from: r  reason: collision with root package name */
        private int f72312r;

        /* renamed from: s  reason: collision with root package name */
        private int f72313s;

        /* renamed from: t  reason: collision with root package name */
        private int f72314t;

        /* renamed from: u  reason: collision with root package name */
        private int f72315u;

        static {
            int h10 = h(0, 0, 0, 0);
            f72291w = h10;
            int h11 = h(0, 0, 0, 3);
            f72292x = h11;
            f72293y = new int[]{0, 0, 0, 0, 0, 2, 0};
            f72294z = new int[]{0, 0, 0, 0, 0, 0, 2};
            A = new int[]{3, 3, 3, 3, 3, 3, 1};
            B = new boolean[]{false, false, false, true, true, true, false};
            C = new int[]{h10, h11, h10, h10, h11, h10, h10};
            D = new int[]{0, 1, 2, 3, 4, 3, 4};
            E = new int[]{0, 0, 0, 0, 0, 3, 3};
            F = new int[]{h10, h10, h10, h10, h10, h11, h11};
        }

        public b() {
            l();
        }

        public static int g(int i10, int i11, int i12) {
            return h(i10, i11, i12, 0);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0023  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0025  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0028  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x002a  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x002d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int h(int r4, int r5, int r6, int r7) {
            /*
                r0 = 0
                r1 = 4
                cn.a.c(r4, r0, r1)
                cn.a.c(r5, r0, r1)
                cn.a.c(r6, r0, r1)
                cn.a.c(r7, r0, r1)
                r1 = 1
                r2 = 255(0xff, float:3.57E-43)
                if (r7 == 0) goto L1b
                if (r7 == r1) goto L1b
                r3 = 2
                if (r7 == r3) goto L1f
                r3 = 3
                if (r7 == r3) goto L1d
            L1b:
                r7 = r2
                goto L21
            L1d:
                r7 = r0
                goto L21
            L1f:
                r7 = 127(0x7f, float:1.78E-43)
            L21:
                if (r4 <= r1) goto L25
                r4 = r2
                goto L26
            L25:
                r4 = r0
            L26:
                if (r5 <= r1) goto L2a
                r5 = r2
                goto L2b
            L2a:
                r5 = r0
            L2b:
                if (r6 <= r1) goto L2e
                r0 = r2
            L2e:
                int r4 = android.graphics.Color.argb(r7, r4, r5, r0)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: zo.c.b.h(int, int, int, int):int");
        }

        public void a(char c10) {
            if (c10 == '\n') {
                this.f72295a.add(d());
                this.f72296b.clear();
                if (this.f72309o != -1) {
                    this.f72309o = 0;
                }
                if (this.f72310p != -1) {
                    this.f72310p = 0;
                }
                if (this.f72311q != -1) {
                    this.f72311q = 0;
                }
                if (this.f72313s != -1) {
                    this.f72313s = 0;
                }
                while (true) {
                    if (this.f72295a.size() < this.f72304j && this.f72295a.size() < 15) {
                        this.f72315u = this.f72295a.size();
                        return;
                    }
                    this.f72295a.remove(0);
                }
            } else {
                this.f72296b.append(c10);
            }
        }

        public void b() {
            int length = this.f72296b.length();
            if (length > 0) {
                this.f72296b.delete(length - 1, length);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x0066  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0071  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0090  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0092  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x009d  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x009f  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00ab  */
        @androidx.annotation.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public zo.c.a c() {
            /*
                Method dump skipped, instructions count: 194
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: zo.c.b.c():zo.c$a");
        }

        public SpannableString d() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f72296b);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.f72309o != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.f72309o, length, 33);
                }
                if (this.f72310p != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.f72310p, length, 33);
                }
                if (this.f72311q != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.f72312r), this.f72311q, length, 33);
                }
                if (this.f72313s != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.f72314t), this.f72313s, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        public void e() {
            this.f72295a.clear();
            this.f72296b.clear();
            this.f72309o = -1;
            this.f72310p = -1;
            this.f72311q = -1;
            this.f72313s = -1;
            this.f72315u = 0;
        }

        public void f(boolean z10, int i10, boolean z11, int i11, int i12, int i13, int i14, int i15, int i16) {
            this.f72297c = true;
            this.f72298d = z10;
            this.f72299e = i10;
            this.f72300f = z11;
            this.f72301g = i11;
            this.f72302h = i12;
            this.f72303i = i14;
            int i17 = i13 + 1;
            if (this.f72304j != i17) {
                this.f72304j = i17;
                while (true) {
                    if (this.f72295a.size() < this.f72304j && this.f72295a.size() < 15) {
                        break;
                    }
                    this.f72295a.remove(0);
                }
            }
            if (i15 != 0 && this.f72306l != i15) {
                this.f72306l = i15;
                int i18 = i15 - 1;
                q(C[i18], f72292x, B[i18], 0, f72294z[i18], A[i18], f72293y[i18]);
            }
            if (i16 != 0 && this.f72307m != i16) {
                this.f72307m = i16;
                int i19 = i16 - 1;
                m(0, 1, 1, false, false, E[i19], D[i19]);
                n(f72290v, F[i19], f72291w);
            }
        }

        public boolean i() {
            return this.f72297c;
        }

        public boolean j() {
            if (i() && (!this.f72295a.isEmpty() || this.f72296b.length() != 0)) {
                return false;
            }
            return true;
        }

        public boolean k() {
            return this.f72298d;
        }

        public void l() {
            e();
            this.f72297c = false;
            this.f72298d = false;
            this.f72299e = 4;
            this.f72300f = false;
            this.f72301g = 0;
            this.f72302h = 0;
            this.f72303i = 0;
            this.f72304j = 15;
            this.f72305k = 0;
            this.f72306l = 0;
            this.f72307m = 0;
            int i10 = f72291w;
            this.f72308n = i10;
            this.f72312r = f72290v;
            this.f72314t = i10;
        }

        public void m(int i10, int i11, int i12, boolean z10, boolean z11, int i13, int i14) {
            if (this.f72309o != -1) {
                if (!z10) {
                    this.f72296b.setSpan(new StyleSpan(2), this.f72309o, this.f72296b.length(), 33);
                    this.f72309o = -1;
                }
            } else if (z10) {
                this.f72309o = this.f72296b.length();
            }
            if (this.f72310p != -1) {
                if (!z11) {
                    this.f72296b.setSpan(new UnderlineSpan(), this.f72310p, this.f72296b.length(), 33);
                    this.f72310p = -1;
                }
            } else if (z11) {
                this.f72310p = this.f72296b.length();
            }
        }

        public void n(int i10, int i11, int i12) {
            if (this.f72311q != -1 && this.f72312r != i10) {
                this.f72296b.setSpan(new ForegroundColorSpan(this.f72312r), this.f72311q, this.f72296b.length(), 33);
            }
            if (i10 != f72290v) {
                this.f72311q = this.f72296b.length();
                this.f72312r = i10;
            }
            if (this.f72313s != -1 && this.f72314t != i11) {
                this.f72296b.setSpan(new BackgroundColorSpan(this.f72314t), this.f72313s, this.f72296b.length(), 33);
            }
            if (i11 != f72291w) {
                this.f72313s = this.f72296b.length();
                this.f72314t = i11;
            }
        }

        public void o(int i10, int i11) {
            if (this.f72315u != i10) {
                a('\n');
            }
            this.f72315u = i10;
        }

        public void p(boolean z10) {
            this.f72298d = z10;
        }

        public void q(int i10, int i11, boolean z10, int i12, int i13, int i14, int i15) {
            this.f72308n = i10;
            this.f72305k = i15;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Cea708Decoder.java */
    /* renamed from: zo.c$c  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0992c {

        /* renamed from: a  reason: collision with root package name */
        public final int f72316a;

        /* renamed from: b  reason: collision with root package name */
        public final int f72317b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f72318c;

        /* renamed from: d  reason: collision with root package name */
        int f72319d = 0;

        public C0992c(int i10, int i11) {
            this.f72316a = i10;
            this.f72317b = i11;
            this.f72318c = new byte[(i11 * 2) - 1];
        }
    }

    public c(int i10, @Nullable List<byte[]> list) {
        boolean z10 = true;
        this.f72280l = i10 == -1 ? 1 : i10;
        this.f72279k = (list == null || !i.v(list)) ? false : z10;
        this.f72281m = new b[8];
        for (int i11 = 0; i11 < 8; i11++) {
            this.f72281m[i11] = new b();
        }
        this.f72282n = this.f72281m[0];
    }

    private void A() {
        int h10 = b.h(this.f72277i.h(2), this.f72277i.h(2), this.f72277i.h(2), this.f72277i.h(2));
        int h11 = this.f72277i.h(2);
        int g10 = b.g(this.f72277i.h(2), this.f72277i.h(2), this.f72277i.h(2));
        if (this.f72277i.g()) {
            h11 |= 4;
        }
        boolean g11 = this.f72277i.g();
        int h12 = this.f72277i.h(2);
        int h13 = this.f72277i.h(2);
        int h14 = this.f72277i.h(2);
        this.f72277i.r(8);
        this.f72282n.q(h10, g10, g11, h11, h12, h13, h14);
    }

    private void B() {
        C0992c c0992c = this.f72285q;
        if (c0992c.f72319d != (c0992c.f72317b * 2) - 1) {
            r.b("Cea708Decoder", "DtvCcPacket ended prematurely; size is " + ((this.f72285q.f72317b * 2) - 1) + ", but current index is " + this.f72285q.f72319d + " (sequence number " + this.f72285q.f72316a + ");");
        }
        a0 a0Var = this.f72277i;
        C0992c c0992c2 = this.f72285q;
        a0Var.o(c0992c2.f72318c, c0992c2.f72319d);
        boolean z10 = false;
        while (true) {
            if (this.f72277i.b() <= 0) {
                break;
            }
            int h10 = this.f72277i.h(3);
            int h11 = this.f72277i.h(5);
            if (h10 == 7) {
                this.f72277i.r(2);
                h10 = this.f72277i.h(6);
                if (h10 < 7) {
                    r.h("Cea708Decoder", "Invalid extended service number: " + h10);
                }
            }
            if (h11 == 0) {
                if (h10 != 0) {
                    r.h("Cea708Decoder", "serviceNumber is non-zero (" + h10 + ") when blockSize is 0");
                }
            } else if (h10 != this.f72280l) {
                this.f72277i.s(h11);
            } else {
                int e10 = this.f72277i.e() + (h11 * 8);
                while (this.f72277i.e() < e10) {
                    int h12 = this.f72277i.h(8);
                    if (h12 != 16) {
                        if (h12 <= 31) {
                            o(h12);
                        } else {
                            if (h12 <= 127) {
                                t(h12);
                            } else if (h12 <= 159) {
                                p(h12);
                            } else if (h12 <= 255) {
                                u(h12);
                            } else {
                                r.h("Cea708Decoder", "Invalid base command: " + h12);
                            }
                            z10 = true;
                        }
                    } else {
                        int h13 = this.f72277i.h(8);
                        if (h13 <= 31) {
                            q(h13);
                        } else {
                            if (h13 <= 127) {
                                v(h13);
                            } else if (h13 <= 159) {
                                r(h13);
                            } else if (h13 <= 255) {
                                w(h13);
                            } else {
                                r.h("Cea708Decoder", "Invalid extended command: " + h13);
                            }
                            z10 = true;
                        }
                    }
                }
            }
        }
        if (z10) {
            this.f72283o = n();
        }
    }

    private void C() {
        for (int i10 = 0; i10 < 8; i10++) {
            this.f72281m[i10].l();
        }
    }

    private void m() {
        if (this.f72285q == null) {
            return;
        }
        B();
        this.f72285q = null;
    }

    private List<bn.a> n() {
        a c10;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < 8; i10++) {
            if (!this.f72281m[i10].j() && this.f72281m[i10].k() && (c10 = this.f72281m[i10].c()) != null) {
                arrayList.add(c10);
            }
        }
        Collections.sort(arrayList, a.f72287c);
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            arrayList2.add(((a) arrayList.get(i11)).f72288a);
        }
        return Collections.unmodifiableList(arrayList2);
    }

    private void o(int i10) {
        if (i10 != 0) {
            if (i10 != 3) {
                if (i10 != 8) {
                    switch (i10) {
                        case 12:
                            C();
                            return;
                        case 13:
                            this.f72282n.a('\n');
                            return;
                        case 14:
                            return;
                        default:
                            if (i10 >= 17 && i10 <= 23) {
                                r.h("Cea708Decoder", "Currently unsupported COMMAND_EXT1 Command: " + i10);
                                this.f72277i.r(8);
                                return;
                            } else if (i10 >= 24 && i10 <= 31) {
                                r.h("Cea708Decoder", "Currently unsupported COMMAND_P16 Command: " + i10);
                                this.f72277i.r(16);
                                return;
                            } else {
                                r.h("Cea708Decoder", "Invalid C0 command: " + i10);
                                return;
                            }
                    }
                }
                this.f72282n.b();
                return;
            }
            this.f72283o = n();
        }
    }

    private void p(int i10) {
        b bVar;
        int i11 = 1;
        switch (i10) {
            case 128:
            case 129:
            case 130:
            case 131:
            case 132:
            case 133:
            case 134:
            case 135:
                int i12 = i10 - 128;
                if (this.f72286r != i12) {
                    this.f72286r = i12;
                    this.f72282n = this.f72281m[i12];
                    return;
                }
                return;
            case 136:
                while (i11 <= 8) {
                    if (this.f72277i.g()) {
                        this.f72281m[8 - i11].e();
                    }
                    i11++;
                }
                return;
            case 137:
                for (int i13 = 1; i13 <= 8; i13++) {
                    if (this.f72277i.g()) {
                        this.f72281m[8 - i13].p(true);
                    }
                }
                return;
            case 138:
                while (i11 <= 8) {
                    if (this.f72277i.g()) {
                        this.f72281m[8 - i11].p(false);
                    }
                    i11++;
                }
                return;
            case 139:
                for (int i14 = 1; i14 <= 8; i14++) {
                    if (this.f72277i.g()) {
                        this.f72281m[8 - i14].p(!bVar.k());
                    }
                }
                return;
            case 140:
                while (i11 <= 8) {
                    if (this.f72277i.g()) {
                        this.f72281m[8 - i11].l();
                    }
                    i11++;
                }
                return;
            case 141:
                this.f72277i.r(8);
                return;
            case 142:
                return;
            case 143:
                C();
                return;
            case 144:
                if (!this.f72282n.i()) {
                    this.f72277i.r(16);
                    return;
                } else {
                    x();
                    return;
                }
            case 145:
                if (!this.f72282n.i()) {
                    this.f72277i.r(24);
                    return;
                } else {
                    y();
                    return;
                }
            case 146:
                if (!this.f72282n.i()) {
                    this.f72277i.r(16);
                    return;
                } else {
                    z();
                    return;
                }
            case 147:
            case 148:
            case 149:
            case 150:
            default:
                r.h("Cea708Decoder", "Invalid C1 command: " + i10);
                return;
            case 151:
                if (!this.f72282n.i()) {
                    this.f72277i.r(32);
                    return;
                } else {
                    A();
                    return;
                }
            case 152:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
                int i15 = i10 - 152;
                s(i15);
                if (this.f72286r != i15) {
                    this.f72286r = i15;
                    this.f72282n = this.f72281m[i15];
                    return;
                }
                return;
        }
    }

    private void q(int i10) {
        if (i10 > 7) {
            if (i10 <= 15) {
                this.f72277i.r(8);
            } else if (i10 <= 23) {
                this.f72277i.r(16);
            } else if (i10 <= 31) {
                this.f72277i.r(24);
            }
        }
    }

    private void r(int i10) {
        if (i10 <= 135) {
            this.f72277i.r(32);
        } else if (i10 <= 143) {
            this.f72277i.r(40);
        } else if (i10 <= 159) {
            this.f72277i.r(2);
            this.f72277i.r(this.f72277i.h(6) * 8);
        }
    }

    private void s(int i10) {
        b bVar = this.f72281m[i10];
        this.f72277i.r(2);
        boolean g10 = this.f72277i.g();
        this.f72277i.r(2);
        int h10 = this.f72277i.h(3);
        boolean g11 = this.f72277i.g();
        int h11 = this.f72277i.h(7);
        int h12 = this.f72277i.h(8);
        int h13 = this.f72277i.h(4);
        int h14 = this.f72277i.h(4);
        this.f72277i.r(2);
        this.f72277i.r(6);
        this.f72277i.r(2);
        bVar.f(g10, h10, g11, h11, h12, h14, h13, this.f72277i.h(3), this.f72277i.h(3));
    }

    private void t(int i10) {
        if (i10 == 127) {
            this.f72282n.a((char) 9835);
        } else {
            this.f72282n.a((char) (i10 & 255));
        }
    }

    private void u(int i10) {
        this.f72282n.a((char) (i10 & 255));
    }

    private void v(int i10) {
        if (i10 != 32) {
            if (i10 != 33) {
                if (i10 != 37) {
                    if (i10 != 42) {
                        if (i10 != 44) {
                            if (i10 != 63) {
                                if (i10 != 57) {
                                    if (i10 != 58) {
                                        if (i10 != 60) {
                                            if (i10 != 61) {
                                                switch (i10) {
                                                    case 48:
                                                        this.f72282n.a((char) 9608);
                                                        return;
                                                    case 49:
                                                        this.f72282n.a((char) 8216);
                                                        return;
                                                    case 50:
                                                        this.f72282n.a((char) 8217);
                                                        return;
                                                    case 51:
                                                        this.f72282n.a((char) 8220);
                                                        return;
                                                    case 52:
                                                        this.f72282n.a((char) 8221);
                                                        return;
                                                    case 53:
                                                        this.f72282n.a((char) 8226);
                                                        return;
                                                    default:
                                                        switch (i10) {
                                                            case 118:
                                                                this.f72282n.a((char) 8539);
                                                                return;
                                                            case 119:
                                                                this.f72282n.a((char) 8540);
                                                                return;
                                                            case 120:
                                                                this.f72282n.a((char) 8541);
                                                                return;
                                                            case 121:
                                                                this.f72282n.a((char) 8542);
                                                                return;
                                                            case 122:
                                                                this.f72282n.a((char) 9474);
                                                                return;
                                                            case 123:
                                                                this.f72282n.a((char) 9488);
                                                                return;
                                                            case 124:
                                                                this.f72282n.a((char) 9492);
                                                                return;
                                                            case 125:
                                                                this.f72282n.a((char) 9472);
                                                                return;
                                                            case 126:
                                                                this.f72282n.a((char) 9496);
                                                                return;
                                                            case 127:
                                                                this.f72282n.a((char) 9484);
                                                                return;
                                                            default:
                                                                r.h("Cea708Decoder", "Invalid G2 character: " + i10);
                                                                return;
                                                        }
                                                }
                                            }
                                            this.f72282n.a((char) 8480);
                                            return;
                                        }
                                        this.f72282n.a((char) 339);
                                        return;
                                    }
                                    this.f72282n.a((char) 353);
                                    return;
                                }
                                this.f72282n.a((char) 8482);
                                return;
                            }
                            this.f72282n.a((char) 376);
                            return;
                        }
                        this.f72282n.a((char) 338);
                        return;
                    }
                    this.f72282n.a((char) 352);
                    return;
                }
                this.f72282n.a((char) 8230);
                return;
            }
            this.f72282n.a((char) 160);
            return;
        }
        this.f72282n.a(' ');
    }

    private void w(int i10) {
        if (i10 == 160) {
            this.f72282n.a((char) 13252);
            return;
        }
        r.h("Cea708Decoder", "Invalid G3 character: " + i10);
        this.f72282n.a('_');
    }

    private void x() {
        this.f72282n.m(this.f72277i.h(4), this.f72277i.h(2), this.f72277i.h(2), this.f72277i.g(), this.f72277i.g(), this.f72277i.h(3), this.f72277i.h(3));
    }

    private void y() {
        int h10 = b.h(this.f72277i.h(2), this.f72277i.h(2), this.f72277i.h(2), this.f72277i.h(2));
        int h11 = b.h(this.f72277i.h(2), this.f72277i.h(2), this.f72277i.h(2), this.f72277i.h(2));
        this.f72277i.r(2);
        this.f72282n.n(h10, h11, b.g(this.f72277i.h(2), this.f72277i.h(2), this.f72277i.h(2)));
    }

    private void z() {
        this.f72277i.r(4);
        int h10 = this.f72277i.h(4);
        this.f72277i.r(2);
        this.f72282n.o(h10, this.f72277i.h(6));
    }

    @Override // zo.e
    protected k c() {
        List<bn.a> list = this.f72283o;
        this.f72284p = list;
        return new f((List) cn.a.e(list));
    }

    @Override // zo.e
    protected void d(o oVar) {
        boolean z10;
        ByteBuffer byteBuffer = (ByteBuffer) cn.a.e(oVar.f55345d);
        this.f72276h.U(byteBuffer.array(), byteBuffer.limit());
        while (this.f72276h.a() >= 3) {
            int H = this.f72276h.H();
            int i10 = H & 3;
            boolean z11 = false;
            if ((H & 4) == 4) {
                z10 = true;
            } else {
                z10 = false;
            }
            byte H2 = (byte) this.f72276h.H();
            byte H3 = (byte) this.f72276h.H();
            if (i10 == 2 || i10 == 3) {
                if (z10) {
                    if (i10 == 3) {
                        m();
                        int i11 = (H2 & 192) >> 6;
                        int i12 = this.f72278j;
                        if (i12 != -1 && i11 != (i12 + 1) % 4) {
                            C();
                            r.h("Cea708Decoder", "Sequence number discontinuity. previous=" + this.f72278j + " current=" + i11);
                        }
                        this.f72278j = i11;
                        int i13 = H2 & 63;
                        if (i13 == 0) {
                            i13 = 64;
                        }
                        C0992c c0992c = new C0992c(i11, i13);
                        this.f72285q = c0992c;
                        byte[] bArr = c0992c.f72318c;
                        int i14 = c0992c.f72319d;
                        c0992c.f72319d = i14 + 1;
                        bArr[i14] = H3;
                    } else {
                        if (i10 == 2) {
                            z11 = true;
                        }
                        cn.a.a(z11);
                        C0992c c0992c2 = this.f72285q;
                        if (c0992c2 == null) {
                            r.c("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = c0992c2.f72318c;
                            int i15 = c0992c2.f72319d;
                            int i16 = i15 + 1;
                            c0992c2.f72319d = i16;
                            bArr2[i15] = H2;
                            c0992c2.f72319d = i15 + 2;
                            bArr2[i16] = H3;
                        }
                    }
                    C0992c c0992c3 = this.f72285q;
                    if (c0992c3.f72319d == (c0992c3.f72317b * 2) - 1) {
                        m();
                    }
                }
            }
        }
    }

    @Override // zo.e
    @Nullable
    public /* bridge */ /* synthetic */ o e() throws SubtitleDecoderException {
        return super.dequeueInputBuffer();
    }

    @Override // zo.e
    @Nullable
    public /* bridge */ /* synthetic */ p f() throws SubtitleDecoderException {
        return super.dequeueOutputBuffer();
    }

    @Override // zo.e, fn.d
    public void flush() {
        super.flush();
        this.f72283o = null;
        this.f72284p = null;
        this.f72286r = 0;
        this.f72282n = this.f72281m[0];
        C();
        this.f72285q = null;
    }

    @Override // zo.e
    protected boolean i() {
        if (this.f72283o != this.f72284p) {
            return true;
        }
        return false;
    }

    @Override // zo.e
    public /* bridge */ /* synthetic */ void j(o oVar) throws SubtitleDecoderException {
        super.queueInputBuffer(oVar);
    }

    @Override // zo.e, fn.d
    public /* bridge */ /* synthetic */ void release() {
        super.release();
    }

    @Override // zo.e, yo.l
    public /* bridge */ /* synthetic */ void setPositionUs(long j10) {
        super.setPositionUs(j10);
    }
}
