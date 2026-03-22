package q6;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import b7.f0;
import b7.g0;
import b7.q;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import p6.b;
import p6.i;
import p6.m;
import p6.n;
import q6.c;
/* compiled from: Cea708Decoder.java */
/* loaded from: classes4.dex */
public final class c extends e {

    /* renamed from: g  reason: collision with root package name */
    private final g0 f65158g = new g0();

    /* renamed from: h  reason: collision with root package name */
    private final f0 f65159h = new f0();

    /* renamed from: i  reason: collision with root package name */
    private int f65160i = -1;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f65161j;

    /* renamed from: k  reason: collision with root package name */
    private final int f65162k;

    /* renamed from: l  reason: collision with root package name */
    private final b[] f65163l;

    /* renamed from: m  reason: collision with root package name */
    private b f65164m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private List<p6.b> f65165n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private List<p6.b> f65166o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private C0907c f65167p;

    /* renamed from: q  reason: collision with root package name */
    private int f65168q;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Cea708Decoder.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: c  reason: collision with root package name */
        private static final Comparator<a> f65169c = new Comparator() { // from class: q6.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int c10;
                c10 = c.a.c((c.a) obj, (c.a) obj2);
                return c10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final p6.b f65170a;

        /* renamed from: b  reason: collision with root package name */
        public final int f65171b;

        public a(CharSequence charSequence, Layout.Alignment alignment, float f10, int i10, int i11, float f11, int i12, float f12, boolean z10, int i13, int i14) {
            b.C0897b n10 = new b.C0897b().o(charSequence).p(alignment).h(f10, i10).i(i11).k(f11).l(i12).n(f12);
            if (z10) {
                n10.s(i13);
            }
            this.f65170a = n10.a();
            this.f65171b = i14;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int c(a aVar, a aVar2) {
            return Integer.compare(aVar2.f65171b, aVar.f65171b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Cea708Decoder.java */
    /* loaded from: classes4.dex */
    public static final class b {
        private static final int[] A;
        private static final int[] B;
        private static final boolean[] C;
        private static final int[] D;
        private static final int[] E;
        private static final int[] F;
        private static final int[] G;

        /* renamed from: w  reason: collision with root package name */
        public static final int f65172w = h(2, 2, 2, 0);

        /* renamed from: x  reason: collision with root package name */
        public static final int f65173x;

        /* renamed from: y  reason: collision with root package name */
        public static final int f65174y;

        /* renamed from: z  reason: collision with root package name */
        private static final int[] f65175z;

        /* renamed from: a  reason: collision with root package name */
        private final List<SpannableString> f65176a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private final SpannableStringBuilder f65177b = new SpannableStringBuilder();

        /* renamed from: c  reason: collision with root package name */
        private boolean f65178c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f65179d;

        /* renamed from: e  reason: collision with root package name */
        private int f65180e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f65181f;

        /* renamed from: g  reason: collision with root package name */
        private int f65182g;

        /* renamed from: h  reason: collision with root package name */
        private int f65183h;

        /* renamed from: i  reason: collision with root package name */
        private int f65184i;

        /* renamed from: j  reason: collision with root package name */
        private int f65185j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f65186k;

        /* renamed from: l  reason: collision with root package name */
        private int f65187l;

        /* renamed from: m  reason: collision with root package name */
        private int f65188m;

        /* renamed from: n  reason: collision with root package name */
        private int f65189n;

        /* renamed from: o  reason: collision with root package name */
        private int f65190o;

        /* renamed from: p  reason: collision with root package name */
        private int f65191p;

        /* renamed from: q  reason: collision with root package name */
        private int f65192q;

        /* renamed from: r  reason: collision with root package name */
        private int f65193r;

        /* renamed from: s  reason: collision with root package name */
        private int f65194s;

        /* renamed from: t  reason: collision with root package name */
        private int f65195t;

        /* renamed from: u  reason: collision with root package name */
        private int f65196u;

        /* renamed from: v  reason: collision with root package name */
        private int f65197v;

        static {
            int h10 = h(0, 0, 0, 0);
            f65173x = h10;
            int h11 = h(0, 0, 0, 3);
            f65174y = h11;
            f65175z = new int[]{0, 0, 0, 0, 0, 2, 0};
            A = new int[]{0, 0, 0, 0, 0, 0, 2};
            B = new int[]{3, 3, 3, 3, 3, 3, 1};
            C = new boolean[]{false, false, false, true, true, true, false};
            D = new int[]{h10, h11, h10, h10, h11, h10, h10};
            E = new int[]{0, 1, 2, 3, 4, 3, 4};
            F = new int[]{0, 0, 0, 0, 0, 3, 3};
            G = new int[]{h10, h10, h10, h10, h10, h11, h11};
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
                b7.a.c(r4, r0, r1)
                b7.a.c(r5, r0, r1)
                b7.a.c(r6, r0, r1)
                b7.a.c(r7, r0, r1)
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
            throw new UnsupportedOperationException("Method not decompiled: q6.c.b.h(int, int, int, int):int");
        }

        public void a(char c10) {
            if (c10 == '\n') {
                this.f65176a.add(d());
                this.f65177b.clear();
                if (this.f65191p != -1) {
                    this.f65191p = 0;
                }
                if (this.f65192q != -1) {
                    this.f65192q = 0;
                }
                if (this.f65193r != -1) {
                    this.f65193r = 0;
                }
                if (this.f65195t != -1) {
                    this.f65195t = 0;
                }
                while (true) {
                    if ((this.f65186k && this.f65176a.size() >= this.f65185j) || this.f65176a.size() >= 15) {
                        this.f65176a.remove(0);
                    } else {
                        return;
                    }
                }
            } else {
                this.f65177b.append(c10);
            }
        }

        public void b() {
            int length = this.f65177b.length();
            if (length > 0) {
                this.f65177b.delete(length - 1, length);
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
        public q6.c.a c() {
            /*
                Method dump skipped, instructions count: 194
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: q6.c.b.c():q6.c$a");
        }

        public SpannableString d() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f65177b);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.f65191p != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.f65191p, length, 33);
                }
                if (this.f65192q != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.f65192q, length, 33);
                }
                if (this.f65193r != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.f65194s), this.f65193r, length, 33);
                }
                if (this.f65195t != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.f65196u), this.f65195t, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        public void e() {
            this.f65176a.clear();
            this.f65177b.clear();
            this.f65191p = -1;
            this.f65192q = -1;
            this.f65193r = -1;
            this.f65195t = -1;
            this.f65197v = 0;
        }

        public void f(boolean z10, boolean z11, boolean z12, int i10, boolean z13, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            this.f65178c = true;
            this.f65179d = z10;
            this.f65186k = z11;
            this.f65180e = i10;
            this.f65181f = z13;
            this.f65182g = i11;
            this.f65183h = i12;
            this.f65184i = i15;
            int i18 = i13 + 1;
            if (this.f65185j != i18) {
                this.f65185j = i18;
                while (true) {
                    if ((!z11 || this.f65176a.size() < this.f65185j) && this.f65176a.size() < 15) {
                        break;
                    }
                    this.f65176a.remove(0);
                }
            }
            if (i16 != 0 && this.f65188m != i16) {
                this.f65188m = i16;
                int i19 = i16 - 1;
                q(D[i19], f65174y, C[i19], 0, A[i19], B[i19], f65175z[i19]);
            }
            if (i17 != 0 && this.f65189n != i17) {
                this.f65189n = i17;
                int i20 = i17 - 1;
                m(0, 1, 1, false, false, F[i20], E[i20]);
                n(f65172w, G[i20], f65173x);
            }
        }

        public boolean i() {
            return this.f65178c;
        }

        public boolean j() {
            if (i() && (!this.f65176a.isEmpty() || this.f65177b.length() != 0)) {
                return false;
            }
            return true;
        }

        public boolean k() {
            return this.f65179d;
        }

        public void l() {
            e();
            this.f65178c = false;
            this.f65179d = false;
            this.f65180e = 4;
            this.f65181f = false;
            this.f65182g = 0;
            this.f65183h = 0;
            this.f65184i = 0;
            this.f65185j = 15;
            this.f65186k = true;
            this.f65187l = 0;
            this.f65188m = 0;
            this.f65189n = 0;
            int i10 = f65173x;
            this.f65190o = i10;
            this.f65194s = f65172w;
            this.f65196u = i10;
        }

        public void m(int i10, int i11, int i12, boolean z10, boolean z11, int i13, int i14) {
            if (this.f65191p != -1) {
                if (!z10) {
                    this.f65177b.setSpan(new StyleSpan(2), this.f65191p, this.f65177b.length(), 33);
                    this.f65191p = -1;
                }
            } else if (z10) {
                this.f65191p = this.f65177b.length();
            }
            if (this.f65192q != -1) {
                if (!z11) {
                    this.f65177b.setSpan(new UnderlineSpan(), this.f65192q, this.f65177b.length(), 33);
                    this.f65192q = -1;
                }
            } else if (z11) {
                this.f65192q = this.f65177b.length();
            }
        }

        public void n(int i10, int i11, int i12) {
            if (this.f65193r != -1 && this.f65194s != i10) {
                this.f65177b.setSpan(new ForegroundColorSpan(this.f65194s), this.f65193r, this.f65177b.length(), 33);
            }
            if (i10 != f65172w) {
                this.f65193r = this.f65177b.length();
                this.f65194s = i10;
            }
            if (this.f65195t != -1 && this.f65196u != i11) {
                this.f65177b.setSpan(new BackgroundColorSpan(this.f65196u), this.f65195t, this.f65177b.length(), 33);
            }
            if (i11 != f65173x) {
                this.f65195t = this.f65177b.length();
                this.f65196u = i11;
            }
        }

        public void o(int i10, int i11) {
            if (this.f65197v != i10) {
                a('\n');
            }
            this.f65197v = i10;
        }

        public void p(boolean z10) {
            this.f65179d = z10;
        }

        public void q(int i10, int i11, boolean z10, int i12, int i13, int i14, int i15) {
            this.f65190o = i10;
            this.f65187l = i15;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Cea708Decoder.java */
    /* renamed from: q6.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0907c {

        /* renamed from: a  reason: collision with root package name */
        public final int f65198a;

        /* renamed from: b  reason: collision with root package name */
        public final int f65199b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f65200c;

        /* renamed from: d  reason: collision with root package name */
        int f65201d = 0;

        public C0907c(int i10, int i11) {
            this.f65198a = i10;
            this.f65199b = i11;
            this.f65200c = new byte[(i11 * 2) - 1];
        }
    }

    public c(int i10, @Nullable List<byte[]> list) {
        boolean z10 = true;
        this.f65162k = i10 == -1 ? 1 : i10;
        this.f65161j = (list == null || !b7.e.f(list)) ? false : z10;
        this.f65163l = new b[8];
        for (int i11 = 0; i11 < 8; i11++) {
            this.f65163l[i11] = new b();
        }
        this.f65164m = this.f65163l[0];
    }

    private void A() {
        for (int i10 = 0; i10 < 8; i10++) {
            this.f65163l[i10].l();
        }
    }

    private void k() {
        if (this.f65167p == null) {
            return;
        }
        z();
        this.f65167p = null;
    }

    private List<p6.b> l() {
        a c10;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < 8; i10++) {
            if (!this.f65163l[i10].j() && this.f65163l[i10].k() && (c10 = this.f65163l[i10].c()) != null) {
                arrayList.add(c10);
            }
        }
        Collections.sort(arrayList, a.f65169c);
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            arrayList2.add(((a) arrayList.get(i11)).f65170a);
        }
        return Collections.unmodifiableList(arrayList2);
    }

    private void m(int i10) {
        if (i10 != 0) {
            if (i10 != 3) {
                if (i10 != 8) {
                    switch (i10) {
                        case 12:
                            A();
                            return;
                        case 13:
                            this.f65164m.a('\n');
                            return;
                        case 14:
                            return;
                        default:
                            if (i10 >= 17 && i10 <= 23) {
                                q.i("Cea708Decoder", "Currently unsupported COMMAND_EXT1 Command: " + i10);
                                this.f65159h.r(8);
                                return;
                            } else if (i10 >= 24 && i10 <= 31) {
                                q.i("Cea708Decoder", "Currently unsupported COMMAND_P16 Command: " + i10);
                                this.f65159h.r(16);
                                return;
                            } else {
                                q.i("Cea708Decoder", "Invalid C0 command: " + i10);
                                return;
                            }
                    }
                }
                this.f65164m.b();
                return;
            }
            this.f65165n = l();
        }
    }

    private void n(int i10) {
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
                if (this.f65168q != i12) {
                    this.f65168q = i12;
                    this.f65164m = this.f65163l[i12];
                    return;
                }
                return;
            case 136:
                while (i11 <= 8) {
                    if (this.f65159h.g()) {
                        this.f65163l[8 - i11].e();
                    }
                    i11++;
                }
                return;
            case 137:
                for (int i13 = 1; i13 <= 8; i13++) {
                    if (this.f65159h.g()) {
                        this.f65163l[8 - i13].p(true);
                    }
                }
                return;
            case 138:
                while (i11 <= 8) {
                    if (this.f65159h.g()) {
                        this.f65163l[8 - i11].p(false);
                    }
                    i11++;
                }
                return;
            case 139:
                for (int i14 = 1; i14 <= 8; i14++) {
                    if (this.f65159h.g()) {
                        this.f65163l[8 - i14].p(!bVar.k());
                    }
                }
                return;
            case 140:
                while (i11 <= 8) {
                    if (this.f65159h.g()) {
                        this.f65163l[8 - i11].l();
                    }
                    i11++;
                }
                return;
            case 141:
                this.f65159h.r(8);
                return;
            case 142:
                return;
            case 143:
                A();
                return;
            case 144:
                if (!this.f65164m.i()) {
                    this.f65159h.r(16);
                    return;
                } else {
                    v();
                    return;
                }
            case 145:
                if (!this.f65164m.i()) {
                    this.f65159h.r(24);
                    return;
                } else {
                    w();
                    return;
                }
            case 146:
                if (!this.f65164m.i()) {
                    this.f65159h.r(16);
                    return;
                } else {
                    x();
                    return;
                }
            case 147:
            case 148:
            case 149:
            case 150:
            default:
                q.i("Cea708Decoder", "Invalid C1 command: " + i10);
                return;
            case 151:
                if (!this.f65164m.i()) {
                    this.f65159h.r(32);
                    return;
                } else {
                    y();
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
                q(i15);
                if (this.f65168q != i15) {
                    this.f65168q = i15;
                    this.f65164m = this.f65163l[i15];
                    return;
                }
                return;
        }
    }

    private void o(int i10) {
        if (i10 > 7) {
            if (i10 <= 15) {
                this.f65159h.r(8);
            } else if (i10 <= 23) {
                this.f65159h.r(16);
            } else if (i10 <= 31) {
                this.f65159h.r(24);
            }
        }
    }

    private void p(int i10) {
        if (i10 <= 135) {
            this.f65159h.r(32);
        } else if (i10 <= 143) {
            this.f65159h.r(40);
        } else if (i10 <= 159) {
            this.f65159h.r(2);
            this.f65159h.r(this.f65159h.h(6) * 8);
        }
    }

    private void q(int i10) {
        b bVar = this.f65163l[i10];
        this.f65159h.r(2);
        boolean g10 = this.f65159h.g();
        boolean g11 = this.f65159h.g();
        boolean g12 = this.f65159h.g();
        int h10 = this.f65159h.h(3);
        boolean g13 = this.f65159h.g();
        int h11 = this.f65159h.h(7);
        int h12 = this.f65159h.h(8);
        int h13 = this.f65159h.h(4);
        int h14 = this.f65159h.h(4);
        this.f65159h.r(2);
        int h15 = this.f65159h.h(6);
        this.f65159h.r(2);
        bVar.f(g10, g11, g12, h10, g13, h11, h12, h14, h15, h13, this.f65159h.h(3), this.f65159h.h(3));
    }

    private void r(int i10) {
        if (i10 == 127) {
            this.f65164m.a((char) 9835);
        } else {
            this.f65164m.a((char) (i10 & 255));
        }
    }

    private void s(int i10) {
        this.f65164m.a((char) (i10 & 255));
    }

    private void t(int i10) {
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
                                                        this.f65164m.a((char) 9608);
                                                        return;
                                                    case 49:
                                                        this.f65164m.a((char) 8216);
                                                        return;
                                                    case 50:
                                                        this.f65164m.a((char) 8217);
                                                        return;
                                                    case 51:
                                                        this.f65164m.a((char) 8220);
                                                        return;
                                                    case 52:
                                                        this.f65164m.a((char) 8221);
                                                        return;
                                                    case 53:
                                                        this.f65164m.a((char) 8226);
                                                        return;
                                                    default:
                                                        switch (i10) {
                                                            case 118:
                                                                this.f65164m.a((char) 8539);
                                                                return;
                                                            case 119:
                                                                this.f65164m.a((char) 8540);
                                                                return;
                                                            case 120:
                                                                this.f65164m.a((char) 8541);
                                                                return;
                                                            case 121:
                                                                this.f65164m.a((char) 8542);
                                                                return;
                                                            case 122:
                                                                this.f65164m.a((char) 9474);
                                                                return;
                                                            case 123:
                                                                this.f65164m.a((char) 9488);
                                                                return;
                                                            case 124:
                                                                this.f65164m.a((char) 9492);
                                                                return;
                                                            case 125:
                                                                this.f65164m.a((char) 9472);
                                                                return;
                                                            case 126:
                                                                this.f65164m.a((char) 9496);
                                                                return;
                                                            case 127:
                                                                this.f65164m.a((char) 9484);
                                                                return;
                                                            default:
                                                                q.i("Cea708Decoder", "Invalid G2 character: " + i10);
                                                                return;
                                                        }
                                                }
                                            }
                                            this.f65164m.a((char) 8480);
                                            return;
                                        }
                                        this.f65164m.a((char) 339);
                                        return;
                                    }
                                    this.f65164m.a((char) 353);
                                    return;
                                }
                                this.f65164m.a((char) 8482);
                                return;
                            }
                            this.f65164m.a((char) 376);
                            return;
                        }
                        this.f65164m.a((char) 338);
                        return;
                    }
                    this.f65164m.a((char) 352);
                    return;
                }
                this.f65164m.a((char) 8230);
                return;
            }
            this.f65164m.a((char) 160);
            return;
        }
        this.f65164m.a(' ');
    }

    private void u(int i10) {
        if (i10 == 160) {
            this.f65164m.a((char) 13252);
            return;
        }
        q.i("Cea708Decoder", "Invalid G3 character: " + i10);
        this.f65164m.a('_');
    }

    private void v() {
        this.f65164m.m(this.f65159h.h(4), this.f65159h.h(2), this.f65159h.h(2), this.f65159h.g(), this.f65159h.g(), this.f65159h.h(3), this.f65159h.h(3));
    }

    private void w() {
        int h10 = b.h(this.f65159h.h(2), this.f65159h.h(2), this.f65159h.h(2), this.f65159h.h(2));
        int h11 = b.h(this.f65159h.h(2), this.f65159h.h(2), this.f65159h.h(2), this.f65159h.h(2));
        this.f65159h.r(2);
        this.f65164m.n(h10, h11, b.g(this.f65159h.h(2), this.f65159h.h(2), this.f65159h.h(2)));
    }

    private void x() {
        this.f65159h.r(4);
        int h10 = this.f65159h.h(4);
        this.f65159h.r(2);
        this.f65164m.o(h10, this.f65159h.h(6));
    }

    private void y() {
        int h10 = b.h(this.f65159h.h(2), this.f65159h.h(2), this.f65159h.h(2), this.f65159h.h(2));
        int h11 = this.f65159h.h(2);
        int g10 = b.g(this.f65159h.h(2), this.f65159h.h(2), this.f65159h.h(2));
        if (this.f65159h.g()) {
            h11 |= 4;
        }
        boolean g11 = this.f65159h.g();
        int h12 = this.f65159h.h(2);
        int h13 = this.f65159h.h(2);
        int h14 = this.f65159h.h(2);
        this.f65159h.r(8);
        this.f65164m.q(h10, g10, g11, h11, h12, h13, h14);
    }

    private void z() {
        C0907c c0907c = this.f65167p;
        if (c0907c.f65201d != (c0907c.f65199b * 2) - 1) {
            q.b("Cea708Decoder", "DtvCcPacket ended prematurely; size is " + ((this.f65167p.f65199b * 2) - 1) + ", but current index is " + this.f65167p.f65201d + " (sequence number " + this.f65167p.f65198a + ");");
        }
        f0 f0Var = this.f65159h;
        C0907c c0907c2 = this.f65167p;
        f0Var.o(c0907c2.f65200c, c0907c2.f65201d);
        boolean z10 = false;
        while (true) {
            if (this.f65159h.b() <= 0) {
                break;
            }
            int h10 = this.f65159h.h(3);
            int h11 = this.f65159h.h(5);
            if (h10 == 7) {
                this.f65159h.r(2);
                h10 = this.f65159h.h(6);
                if (h10 < 7) {
                    q.i("Cea708Decoder", "Invalid extended service number: " + h10);
                }
            }
            if (h11 == 0) {
                if (h10 != 0) {
                    q.i("Cea708Decoder", "serviceNumber is non-zero (" + h10 + ") when blockSize is 0");
                }
            } else if (h10 != this.f65162k) {
                this.f65159h.s(h11);
            } else {
                int e10 = this.f65159h.e() + (h11 * 8);
                while (this.f65159h.e() < e10) {
                    int h12 = this.f65159h.h(8);
                    if (h12 != 16) {
                        if (h12 <= 31) {
                            m(h12);
                        } else {
                            if (h12 <= 127) {
                                r(h12);
                            } else if (h12 <= 159) {
                                n(h12);
                            } else if (h12 <= 255) {
                                s(h12);
                            } else {
                                q.i("Cea708Decoder", "Invalid base command: " + h12);
                            }
                            z10 = true;
                        }
                    } else {
                        int h13 = this.f65159h.h(8);
                        if (h13 <= 31) {
                            o(h13);
                        } else {
                            if (h13 <= 127) {
                                t(h13);
                            } else if (h13 <= 159) {
                                p(h13);
                            } else if (h13 <= 255) {
                                u(h13);
                            } else {
                                q.i("Cea708Decoder", "Invalid extended command: " + h13);
                            }
                            z10 = true;
                        }
                    }
                }
            }
        }
        if (z10) {
            this.f65165n = l();
        }
    }

    @Override // q6.e
    protected i a() {
        List<p6.b> list = this.f65165n;
        this.f65166o = list;
        return new f((List) b7.a.e(list));
    }

    @Override // q6.e
    protected void b(m mVar) {
        boolean z10;
        ByteBuffer byteBuffer = (ByteBuffer) b7.a.e(mVar.f17473c);
        this.f65158g.N(byteBuffer.array(), byteBuffer.limit());
        while (this.f65158g.a() >= 3) {
            int D = this.f65158g.D();
            int i10 = D & 3;
            boolean z11 = false;
            if ((D & 4) == 4) {
                z10 = true;
            } else {
                z10 = false;
            }
            byte D2 = (byte) this.f65158g.D();
            byte D3 = (byte) this.f65158g.D();
            if (i10 == 2 || i10 == 3) {
                if (z10) {
                    if (i10 == 3) {
                        k();
                        int i11 = (D2 & 192) >> 6;
                        int i12 = this.f65160i;
                        if (i12 != -1 && i11 != (i12 + 1) % 4) {
                            A();
                            q.i("Cea708Decoder", "Sequence number discontinuity. previous=" + this.f65160i + " current=" + i11);
                        }
                        this.f65160i = i11;
                        int i13 = D2 & 63;
                        if (i13 == 0) {
                            i13 = 64;
                        }
                        C0907c c0907c = new C0907c(i11, i13);
                        this.f65167p = c0907c;
                        byte[] bArr = c0907c.f65200c;
                        int i14 = c0907c.f65201d;
                        c0907c.f65201d = i14 + 1;
                        bArr[i14] = D3;
                    } else {
                        if (i10 == 2) {
                            z11 = true;
                        }
                        b7.a.a(z11);
                        C0907c c0907c2 = this.f65167p;
                        if (c0907c2 == null) {
                            q.c("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = c0907c2.f65200c;
                            int i15 = c0907c2.f65201d;
                            int i16 = i15 + 1;
                            c0907c2.f65201d = i16;
                            bArr2[i15] = D2;
                            c0907c2.f65201d = i15 + 2;
                            bArr2[i16] = D3;
                        }
                    }
                    C0907c c0907c3 = this.f65167p;
                    if (c0907c3.f65201d == (c0907c3.f65199b * 2) - 1) {
                        k();
                    }
                }
            }
        }
    }

    @Override // q6.e
    @Nullable
    public /* bridge */ /* synthetic */ m c() throws SubtitleDecoderException {
        return super.dequeueInputBuffer();
    }

    @Override // q6.e
    @Nullable
    public /* bridge */ /* synthetic */ n d() throws SubtitleDecoderException {
        return super.dequeueOutputBuffer();
    }

    @Override // q6.e, r5.d
    public void flush() {
        super.flush();
        this.f65165n = null;
        this.f65166o = null;
        this.f65168q = 0;
        this.f65164m = this.f65163l[0];
        A();
        this.f65167p = null;
    }

    @Override // q6.e
    protected boolean g() {
        if (this.f65165n != this.f65166o) {
            return true;
        }
        return false;
    }

    @Override // q6.e
    public /* bridge */ /* synthetic */ void h(m mVar) throws SubtitleDecoderException {
        super.queueInputBuffer(mVar);
    }

    @Override // q6.e, r5.d
    public /* bridge */ /* synthetic */ void release() {
        super.release();
    }

    @Override // q6.e, p6.j
    public /* bridge */ /* synthetic */ void setPositionUs(long j10) {
        super.setPositionUs(j10);
    }
}
