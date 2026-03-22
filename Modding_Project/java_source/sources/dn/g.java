package dn;

import androidx.annotation.Nullable;
import com.google.common.collect.ImmutableList;
import java.lang.reflect.Array;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import zm.u;
/* compiled from: NalUnitUtil.java */
/* loaded from: classes8.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f50462a = {0, 0, 0, 1};

    /* renamed from: b  reason: collision with root package name */
    public static final float[] f50463b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* renamed from: c  reason: collision with root package name */
    private static final Object f50464c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static int[] f50465d = new int[10];

    /* compiled from: NalUnitUtil.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f50466a;

        /* renamed from: b  reason: collision with root package name */
        public final int f50467b;

        public a(int i10, int i11) {
            this.f50466a = i10;
            this.f50467b = i11;
        }
    }

    /* compiled from: NalUnitUtil.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f50468a;

        /* renamed from: b  reason: collision with root package name */
        public final int f50469b;

        /* renamed from: c  reason: collision with root package name */
        public final int f50470c;

        public b(int i10, int i11, int i12) {
            this.f50468a = i10;
            this.f50469b = i11;
            this.f50470c = i12;
        }
    }

    /* compiled from: NalUnitUtil.java */
    /* loaded from: classes8.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f50471a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f50472b;

        /* renamed from: c  reason: collision with root package name */
        public final int f50473c;

        /* renamed from: d  reason: collision with root package name */
        public final int f50474d;

        /* renamed from: e  reason: collision with root package name */
        public final int[] f50475e;

        /* renamed from: f  reason: collision with root package name */
        public final int f50476f;

        public c(int i10, boolean z10, int i11, int i12, int[] iArr, int i13) {
            this.f50471a = i10;
            this.f50472b = z10;
            this.f50473c = i11;
            this.f50474d = i12;
            this.f50475e = iArr;
            this.f50476f = i13;
        }
    }

    /* compiled from: NalUnitUtil.java */
    /* loaded from: classes8.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final ImmutableList<c> f50477a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f50478b;

        public d(List<c> list, int[] iArr) {
            this.f50477a = ImmutableList.u(list);
            this.f50478b = iArr;
        }
    }

    /* compiled from: NalUnitUtil.java */
    /* loaded from: classes8.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final int f50479a;

        /* renamed from: b  reason: collision with root package name */
        public final int f50480b;

        /* renamed from: c  reason: collision with root package name */
        public final int f50481c;

        /* renamed from: d  reason: collision with root package name */
        public final int f50482d;

        /* renamed from: e  reason: collision with root package name */
        public final int f50483e;

        public e(int i10, int i11, int i12, int i13, int i14) {
            this.f50479a = i10;
            this.f50480b = i11;
            this.f50481c = i12;
            this.f50482d = i13;
            this.f50483e = i14;
        }
    }

    /* compiled from: NalUnitUtil.java */
    /* loaded from: classes8.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public final ImmutableList<e> f50484a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f50485b;

        public f(List<e> list, int[] iArr) {
            this.f50484a = ImmutableList.u(list);
            this.f50485b = iArr;
        }
    }

    /* compiled from: NalUnitUtil.java */
    /* renamed from: dn.g$g  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0707g {

        /* renamed from: a  reason: collision with root package name */
        public final int f50486a;

        /* renamed from: b  reason: collision with root package name */
        public final int f50487b;

        /* renamed from: c  reason: collision with root package name */
        public final int f50488c;

        /* renamed from: d  reason: collision with root package name */
        public final int f50489d;

        /* renamed from: e  reason: collision with root package name */
        public final int f50490e;

        /* renamed from: f  reason: collision with root package name */
        public final int f50491f;

        /* renamed from: g  reason: collision with root package name */
        public final int f50492g;

        /* renamed from: h  reason: collision with root package name */
        public final int f50493h;

        /* renamed from: i  reason: collision with root package name */
        public final int f50494i;

        public C0707g(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
            this.f50486a = i10;
            this.f50487b = i11;
            this.f50488c = i12;
            this.f50489d = i13;
            this.f50490e = i14;
            this.f50491f = i15;
            this.f50492g = i16;
            this.f50493h = i17;
            this.f50494i = i18;
        }
    }

    /* compiled from: NalUnitUtil.java */
    /* loaded from: classes8.dex */
    public static final class h {

        /* renamed from: a  reason: collision with root package name */
        public final b f50495a;

        /* renamed from: b  reason: collision with root package name */
        public final int f50496b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final c f50497c;

        /* renamed from: d  reason: collision with root package name */
        public final int f50498d;

        /* renamed from: e  reason: collision with root package name */
        public final int f50499e;

        /* renamed from: f  reason: collision with root package name */
        public final int f50500f;

        /* renamed from: g  reason: collision with root package name */
        public final int f50501g;

        /* renamed from: h  reason: collision with root package name */
        public final int f50502h;

        /* renamed from: i  reason: collision with root package name */
        public final int f50503i;

        /* renamed from: j  reason: collision with root package name */
        public final float f50504j;

        /* renamed from: k  reason: collision with root package name */
        public final int f50505k;

        /* renamed from: l  reason: collision with root package name */
        public final int f50506l;

        /* renamed from: m  reason: collision with root package name */
        public final int f50507m;

        /* renamed from: n  reason: collision with root package name */
        public final int f50508n;

        public h(b bVar, int i10, @Nullable c cVar, int i11, int i12, int i13, int i14, int i15, int i16, float f10, int i17, int i18, int i19, int i20) {
            this.f50495a = bVar;
            this.f50496b = i10;
            this.f50497c = cVar;
            this.f50498d = i11;
            this.f50499e = i12;
            this.f50500f = i13;
            this.f50501g = i14;
            this.f50502h = i15;
            this.f50503i = i16;
            this.f50504j = f10;
            this.f50505k = i17;
            this.f50506l = i18;
            this.f50507m = i19;
            this.f50508n = i20;
        }
    }

    /* compiled from: NalUnitUtil.java */
    /* loaded from: classes8.dex */
    public static final class i {

        /* renamed from: a  reason: collision with root package name */
        public final int f50509a;

        /* renamed from: b  reason: collision with root package name */
        public final int f50510b;

        /* renamed from: c  reason: collision with root package name */
        public final int f50511c;

        public i(int i10, int i11, int i12) {
            this.f50509a = i10;
            this.f50510b = i11;
            this.f50511c = i12;
        }
    }

    /* compiled from: NalUnitUtil.java */
    /* loaded from: classes8.dex */
    public static final class j {

        /* renamed from: a  reason: collision with root package name */
        public final ImmutableList<i> f50512a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f50513b;

        public j(List<i> list, int[] iArr) {
            this.f50512a = ImmutableList.u(list);
            this.f50513b = iArr;
        }
    }

    /* compiled from: NalUnitUtil.java */
    /* loaded from: classes8.dex */
    public static final class k {

        /* renamed from: a  reason: collision with root package name */
        public final b f50514a;

        /* renamed from: b  reason: collision with root package name */
        public final ImmutableList<a> f50515b;

        /* renamed from: c  reason: collision with root package name */
        public final d f50516c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final f f50517d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public final j f50518e;

        public k(b bVar, @Nullable List<a> list, d dVar, @Nullable f fVar, @Nullable j jVar) {
            ImmutableList<a> A;
            this.f50514a = bVar;
            if (list != null) {
                A = ImmutableList.u(list);
            } else {
                A = ImmutableList.A();
            }
            this.f50515b = A;
            this.f50516c = dVar;
            this.f50517d = fVar;
            this.f50518e = jVar;
        }
    }

    /* compiled from: NalUnitUtil.java */
    /* loaded from: classes8.dex */
    public static final class l {

        /* renamed from: a  reason: collision with root package name */
        public final int f50519a;

        /* renamed from: b  reason: collision with root package name */
        public final int f50520b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f50521c;

        public l(int i10, int i11, boolean z10) {
            this.f50519a = i10;
            this.f50520b = i11;
            this.f50521c = z10;
        }
    }

    /* compiled from: NalUnitUtil.java */
    /* loaded from: classes8.dex */
    public static final class m {

        /* renamed from: a  reason: collision with root package name */
        public final int f50522a;

        /* renamed from: b  reason: collision with root package name */
        public final int f50523b;

        /* renamed from: c  reason: collision with root package name */
        public final int f50524c;

        /* renamed from: d  reason: collision with root package name */
        public final int f50525d;

        /* renamed from: e  reason: collision with root package name */
        public final int f50526e;

        /* renamed from: f  reason: collision with root package name */
        public final int f50527f;

        /* renamed from: g  reason: collision with root package name */
        public final int f50528g;

        /* renamed from: h  reason: collision with root package name */
        public final float f50529h;

        /* renamed from: i  reason: collision with root package name */
        public final int f50530i;

        /* renamed from: j  reason: collision with root package name */
        public final int f50531j;

        /* renamed from: k  reason: collision with root package name */
        public final boolean f50532k;

        /* renamed from: l  reason: collision with root package name */
        public final boolean f50533l;

        /* renamed from: m  reason: collision with root package name */
        public final int f50534m;

        /* renamed from: n  reason: collision with root package name */
        public final int f50535n;

        /* renamed from: o  reason: collision with root package name */
        public final int f50536o;

        /* renamed from: p  reason: collision with root package name */
        public final boolean f50537p;

        /* renamed from: q  reason: collision with root package name */
        public final int f50538q;

        /* renamed from: r  reason: collision with root package name */
        public final int f50539r;

        /* renamed from: s  reason: collision with root package name */
        public final int f50540s;

        /* renamed from: t  reason: collision with root package name */
        public final int f50541t;

        public m(int i10, int i11, int i12, int i13, int i14, int i15, int i16, float f10, int i17, int i18, boolean z10, boolean z11, int i19, int i20, int i21, boolean z12, int i22, int i23, int i24, int i25) {
            this.f50522a = i10;
            this.f50523b = i11;
            this.f50524c = i12;
            this.f50525d = i13;
            this.f50526e = i14;
            this.f50527f = i15;
            this.f50528g = i16;
            this.f50529h = f10;
            this.f50530i = i17;
            this.f50531j = i18;
            this.f50532k = z10;
            this.f50533l = z11;
            this.f50534m = i19;
            this.f50535n = i20;
            this.f50536o = i21;
            this.f50537p = z12;
            this.f50538q = i22;
            this.f50539r = i23;
            this.f50540s = i24;
            this.f50541t = i25;
        }
    }

    public static l A(byte[] bArr, int i10, int i11) {
        return B(bArr, i10 + 1, i11);
    }

    public static l B(byte[] bArr, int i10, int i11) {
        dn.h hVar = new dn.h(bArr, i10, i11);
        int i12 = hVar.i();
        int i13 = hVar.i();
        hVar.l();
        return new l(i12, i13, hVar.e());
    }

    public static m C(byte[] bArr, int i10, int i11) {
        return D(bArr, i10 + 1, i11);
    }

    /* JADX WARN: Removed duplicated region for block: B:127:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0158  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static dn.g.m D(byte[] r32, int r33, int r34) {
        /*
            Method dump skipped, instructions count: 588
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dn.g.D(byte[], int, int):dn.g$m");
    }

    private static void E(dn.h hVar, int i10, int[] iArr, int[] iArr2, boolean[][] zArr) {
        boolean z10;
        for (int i11 = 1; i11 < i10; i11++) {
            boolean e10 = hVar.e();
            for (int i12 = 0; i12 < iArr[i11]; i12++) {
                if (i12 > 0 && e10) {
                    z10 = hVar.e();
                } else if (i12 == 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10) {
                    for (int i13 = 0; i13 < iArr2[i11]; i13++) {
                        if (zArr[i11][i13]) {
                            hVar.i();
                        }
                    }
                    hVar.i();
                    hVar.i();
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    private static void F(dn.h hVar, boolean z10, int i10) {
        int i11;
        int i12;
        boolean z11;
        boolean e10;
        int i13;
        if (z10) {
            boolean e11 = hVar.e();
            boolean e12 = hVar.e();
            if (!e11 && !e12) {
                z11 = false;
                i12 = e12;
                i11 = e11;
            } else {
                z11 = hVar.e();
                if (z11) {
                    hVar.m(19);
                }
                hVar.m(8);
                if (z11) {
                    hVar.m(4);
                }
                hVar.m(15);
                i12 = e12;
                i11 = e11;
            }
        } else {
            i11 = 0;
            i12 = 0;
            z11 = false;
        }
        for (int i14 = 0; i14 <= i10; i14++) {
            boolean e13 = hVar.e();
            if (!e13) {
                e13 = hVar.e();
            }
            if (e13) {
                hVar.i();
                e10 = false;
            } else {
                e10 = hVar.e();
            }
            if (!e10) {
                i13 = hVar.i();
            } else {
                i13 = 0;
            }
            int i15 = i11 + i12;
            for (int i16 = 0; i16 < i15; i16++) {
                for (int i17 = 0; i17 <= i13; i17++) {
                    hVar.i();
                    hVar.i();
                    if (z11) {
                        hVar.i();
                        hVar.i();
                    }
                    hVar.l();
                }
            }
        }
    }

    private static void G(dn.h hVar) {
        for (int i10 = 0; i10 < 4; i10++) {
            int i11 = 0;
            while (i11 < 6) {
                int i12 = 1;
                if (!hVar.e()) {
                    hVar.i();
                } else {
                    int min = Math.min(64, 1 << ((i10 << 1) + 4));
                    if (i10 > 1) {
                        hVar.h();
                    }
                    for (int i13 = 0; i13 < min; i13++) {
                        hVar.h();
                    }
                }
                if (i10 == 3) {
                    i12 = 3;
                }
                i11 += i12;
            }
        }
    }

    private static void H(dn.h hVar) {
        int i10;
        int i11;
        int i12 = hVar.i();
        int[] iArr = new int[0];
        int[] iArr2 = new int[0];
        int i13 = -1;
        int i14 = -1;
        for (int i15 = 0; i15 < i12; i15++) {
            if (i15 != 0 && hVar.e()) {
                int i16 = i13 + i14;
                int i17 = (1 - ((hVar.e() ? 1 : 0) * 2)) * (hVar.i() + 1);
                int i18 = i16 + 1;
                boolean[] zArr = new boolean[i18];
                for (int i19 = 0; i19 <= i16; i19++) {
                    if (!hVar.e()) {
                        zArr[i19] = hVar.e();
                    } else {
                        zArr[i19] = true;
                    }
                }
                int[] iArr3 = new int[i18];
                int[] iArr4 = new int[i18];
                int i20 = 0;
                for (int i21 = i14 - 1; i21 >= 0; i21--) {
                    int i22 = iArr2[i21] + i17;
                    if (i22 < 0 && zArr[i13 + i21]) {
                        iArr3[i20] = i22;
                        i20++;
                    }
                }
                if (i17 < 0 && zArr[i16]) {
                    iArr3[i20] = i17;
                    i20++;
                }
                for (int i23 = 0; i23 < i13; i23++) {
                    int i24 = iArr[i23] + i17;
                    if (i24 < 0 && zArr[i23]) {
                        iArr3[i20] = i24;
                        i20++;
                    }
                }
                int[] copyOf = Arrays.copyOf(iArr3, i20);
                int i25 = 0;
                for (int i26 = i13 - 1; i26 >= 0; i26--) {
                    int i27 = iArr[i26] + i17;
                    if (i27 > 0 && zArr[i26]) {
                        iArr4[i25] = i27;
                        i25++;
                    }
                }
                if (i17 > 0 && zArr[i16]) {
                    iArr4[i25] = i17;
                    i25++;
                }
                for (int i28 = 0; i28 < i14; i28++) {
                    int i29 = iArr2[i28] + i17;
                    if (i29 > 0 && zArr[i13 + i28]) {
                        iArr4[i25] = i29;
                        i25++;
                    }
                }
                iArr2 = Arrays.copyOf(iArr4, i25);
                iArr = copyOf;
                i13 = i20;
                i14 = i25;
            } else {
                int i30 = hVar.i();
                int i31 = hVar.i();
                int[] iArr5 = new int[i30];
                for (int i32 = 0; i32 < i30; i32++) {
                    if (i32 > 0) {
                        i11 = iArr5[i32 - 1];
                    } else {
                        i11 = 0;
                    }
                    iArr5[i32] = i11 - (hVar.i() + 1);
                    hVar.l();
                }
                int[] iArr6 = new int[i31];
                for (int i33 = 0; i33 < i31; i33++) {
                    if (i33 > 0) {
                        i10 = iArr6[i33 - 1];
                    } else {
                        i10 = 0;
                    }
                    iArr6[i33] = i10 + hVar.i() + 1;
                    hVar.l();
                }
                i13 = i30;
                iArr = iArr5;
                i14 = i31;
                iArr2 = iArr6;
            }
        }
    }

    private static void I(dn.h hVar) {
        int i10 = hVar.i() + 1;
        hVar.m(8);
        for (int i11 = 0; i11 < i10; i11++) {
            hVar.i();
            hVar.i();
            hVar.l();
        }
        hVar.m(20);
    }

    private static void J(dn.h hVar, int i10) {
        int i11 = 8;
        int i12 = 8;
        for (int i13 = 0; i13 < i10; i13++) {
            if (i11 != 0) {
                i11 = ((hVar.h() + i12) + 256) % 256;
            }
            if (i11 != 0) {
                i12 = i11;
            }
        }
    }

    private static void K(dn.h hVar, int i10, boolean[][] zArr) {
        int i11 = hVar.i() + 2;
        if (hVar.e()) {
            hVar.m(i11);
        } else {
            for (int i12 = 1; i12 < i10; i12++) {
                for (int i13 = 0; i13 < i12; i13++) {
                    if (zArr[i12][i13]) {
                        hVar.m(i11);
                    }
                }
            }
        }
        int i14 = hVar.i();
        for (int i15 = 1; i15 <= i14; i15++) {
            hVar.m(8);
        }
    }

    public static int L(byte[] bArr, int i10) {
        int i11;
        synchronized (f50464c) {
            int i12 = 0;
            int i13 = 0;
            while (i12 < i10) {
                try {
                    i12 = g(bArr, i12, i10);
                    if (i12 < i10) {
                        int[] iArr = f50465d;
                        if (iArr.length <= i13) {
                            f50465d = Arrays.copyOf(iArr, iArr.length * 2);
                        }
                        f50465d[i13] = i12;
                        i12 += 3;
                        i13++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            i11 = i10 - i13;
            int i14 = 0;
            int i15 = 0;
            for (int i16 = 0; i16 < i13; i16++) {
                int i17 = f50465d[i16] - i15;
                System.arraycopy(bArr, i15, bArr, i14, i17);
                int i18 = i14 + i17;
                int i19 = i18 + 1;
                bArr[i18] = 0;
                i14 = i18 + 2;
                bArr[i19] = 0;
                i15 += i17 + 3;
            }
            System.arraycopy(bArr, i15, bArr, i14, i11 - i14);
        }
        return i11;
    }

    private static int a(int i10, int i11, int i12, int i13) {
        int i14 = 1;
        if (i11 == 1) {
            i14 = 2;
        }
        return i10 - (i14 * (i12 + i13));
    }

    private static int b(int i10, int i11, int i12, int i13) {
        int i14 = 2;
        if (i11 != 1 && i11 != 2) {
            i14 = 1;
        }
        return i10 - (i14 * (i12 + i13));
    }

    public static void c(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    @Nullable
    private static String d(dn.h hVar) {
        hVar.m(4);
        int f10 = hVar.f(3);
        hVar.l();
        c q10 = q(hVar, true, f10, null);
        return cn.i.f(q10.f50471a, q10.f50472b, q10.f50473c, q10.f50474d, q10.f50475e, q10.f50476f);
    }

    public static int e(byte[] bArr, int i10, int i11, boolean[] zArr) {
        boolean z10;
        boolean z11;
        boolean z12;
        int i12 = i11 - i10;
        boolean z13 = false;
        if (i12 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        if (i12 == 0) {
            return i11;
        }
        if (zArr[0]) {
            c(zArr);
            return i10 - 3;
        } else if (i12 > 1 && zArr[1] && bArr[i10] == 1) {
            c(zArr);
            return i10 - 2;
        } else if (i12 > 2 && zArr[2] && bArr[i10] == 0 && bArr[i10 + 1] == 1) {
            c(zArr);
            return i10 - 1;
        } else {
            int i13 = i11 - 1;
            int i14 = i10 + 2;
            while (i14 < i13) {
                byte b10 = bArr[i14];
                if ((b10 & 254) == 0) {
                    int i15 = i14 - 2;
                    if (bArr[i15] == 0 && bArr[i14 - 1] == 0 && b10 == 1) {
                        c(zArr);
                        return i15;
                    }
                    i14 -= 2;
                }
                i14 += 3;
            }
            if (i12 <= 2 ? !(i12 != 2 ? !zArr[1] || bArr[i13] != 1 : !zArr[2] || bArr[i11 - 2] != 0 || bArr[i13] != 1) : !(bArr[i11 - 3] != 0 || bArr[i11 - 2] != 0 || bArr[i13] != 1)) {
                z11 = true;
            } else {
                z11 = false;
            }
            zArr[0] = z11;
            if (i12 <= 1 ? !(!zArr[2] || bArr[i13] != 0) : !(bArr[i11 - 2] != 0 || bArr[i13] != 0)) {
                z12 = true;
            } else {
                z12 = false;
            }
            zArr[1] = z12;
            if (bArr[i13] == 0) {
                z13 = true;
            }
            zArr[2] = z13;
            return i11;
        }
    }

    private static ImmutableList<Integer> f(byte[] bArr) {
        boolean[] zArr = new boolean[3];
        ImmutableList.a r10 = ImmutableList.r();
        int i10 = 0;
        while (i10 < bArr.length) {
            int e10 = e(bArr, i10, bArr.length, zArr);
            if (e10 != bArr.length) {
                r10.a(Integer.valueOf(e10));
            }
            i10 = e10 + 3;
        }
        return r10.k();
    }

    private static int g(byte[] bArr, int i10, int i11) {
        while (i10 < i11 - 2) {
            if (bArr[i10] == 0 && bArr[i10 + 1] == 0 && bArr[i10 + 2] == 3) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    @Nullable
    public static String h(List<byte[]> list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            byte[] bArr = list.get(i10);
            int length = bArr.length;
            if (length > 3) {
                ImmutableList<Integer> f10 = f(bArr);
                for (int i11 = 0; i11 < f10.size(); i11++) {
                    if (f10.get(i11).intValue() + 3 < length) {
                        dn.h hVar = new dn.h(bArr, f10.get(i11).intValue() + 3, length);
                        b p10 = p(hVar);
                        if (p10.f50468a == 33 && p10.f50469b == 0) {
                            return d(hVar);
                        }
                    }
                }
                continue;
            }
        }
        return null;
    }

    public static int i(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & 126) >> 1;
    }

    public static int j(byte[] bArr, int i10) {
        return bArr[i10 + 3] & 31;
    }

    public static boolean k(byte[] bArr, int i10, int i11, io.bidmachine.media3.common.a aVar) {
        if (Objects.equals(aVar.f55174o, "video/avc")) {
            return l(bArr[i10]);
        }
        if (Objects.equals(aVar.f55174o, "video/hevc")) {
            return m(bArr, i10, i11, aVar);
        }
        return true;
    }

    public static boolean l(byte b10) {
        if (((b10 & 96) >> 5) != 0) {
            return true;
        }
        int i10 = b10 & 31;
        if (i10 != 1 && i10 != 9 && i10 != 14) {
            return true;
        }
        return false;
    }

    private static boolean m(byte[] bArr, int i10, int i11, io.bidmachine.media3.common.a aVar) {
        b p10 = p(new dn.h(bArr, i10, i11 + i10));
        int i12 = p10.f50468a;
        if (i12 == 35) {
            return false;
        }
        if (i12 <= 14 && i12 % 2 == 0 && p10.f50470c == aVar.D - 1) {
            return false;
        }
        return true;
    }

    public static boolean n(io.bidmachine.media3.common.a aVar, byte b10) {
        if ((Objects.equals(aVar.f55174o, "video/avc") || u.b(aVar.f55170k, "video/avc")) && (b10 & 31) == 6) {
            return true;
        }
        if ((Objects.equals(aVar.f55174o, "video/hevc") || u.b(aVar.f55170k, "video/hevc")) && ((b10 & 126) >> 1) == 39) {
            return true;
        }
        return false;
    }

    public static int o(io.bidmachine.media3.common.a aVar) {
        if (Objects.equals(aVar.f55174o, "video/avc")) {
            return 1;
        }
        if (!Objects.equals(aVar.f55174o, "video/hevc") && !u.b(aVar.f55170k, "video/hevc")) {
            return 0;
        }
        return 2;
    }

    private static b p(dn.h hVar) {
        hVar.l();
        return new b(hVar.f(6), hVar.f(6), hVar.f(3) - 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static dn.g.c q(dn.h r19, boolean r20, int r21, @androidx.annotation.Nullable dn.g.c r22) {
        /*
            r0 = r19
            r1 = r21
            r2 = r22
            r3 = 6
            int[] r4 = new int[r3]
            r5 = 2
            r6 = 8
            r7 = 0
            if (r20 == 0) goto L42
            int r2 = r0.f(r5)
            boolean r8 = r19.e()
            r9 = 5
            int r9 = r0.f(r9)
            r10 = r7
            r11 = r10
        L1e:
            r12 = 32
            if (r10 >= r12) goto L2e
            boolean r12 = r19.e()
            if (r12 == 0) goto L2b
            r12 = 1
            int r12 = r12 << r10
            r11 = r11 | r12
        L2b:
            int r10 = r10 + 1
            goto L1e
        L2e:
            r10 = r7
        L2f:
            if (r10 >= r3) goto L3a
            int r12 = r0.f(r6)
            r4[r10] = r12
            int r10 = r10 + 1
            goto L2f
        L3a:
            r13 = r2
        L3b:
            r17 = r4
            r14 = r8
            r15 = r9
            r16 = r11
            goto L57
        L42:
            if (r2 == 0) goto L50
            int r3 = r2.f50471a
            boolean r8 = r2.f50472b
            int r9 = r2.f50473c
            int r11 = r2.f50474d
            int[] r4 = r2.f50475e
            r13 = r3
            goto L3b
        L50:
            r17 = r4
            r13 = r7
            r14 = r13
            r15 = r14
            r16 = r15
        L57:
            int r18 = r0.f(r6)
            r2 = r7
        L5c:
            if (r7 >= r1) goto L71
            boolean r3 = r19.e()
            if (r3 == 0) goto L66
            int r2 = r2 + 88
        L66:
            boolean r3 = r19.e()
            if (r3 == 0) goto L6e
            int r2 = r2 + 8
        L6e:
            int r7 = r7 + 1
            goto L5c
        L71:
            r0.m(r2)
            if (r1 <= 0) goto L7b
            int r6 = r6 - r1
            int r6 = r6 * r5
            r0.m(r6)
        L7b:
            dn.g$c r0 = new dn.g$c
            r12 = r0
            r12.<init>(r13, r14, r15, r16, r17, r18)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: dn.g.q(dn.h, boolean, int, dn.g$c):dn.g$c");
    }

    private static e r(dn.h hVar) {
        int i10;
        int i11;
        int i12;
        int f10 = hVar.f(16);
        int f11 = hVar.f(16);
        if (hVar.e()) {
            int f12 = hVar.f(2);
            if (f12 == 3) {
                hVar.l();
            }
            int f13 = hVar.f(4);
            i12 = hVar.f(4);
            i11 = f13;
            i10 = f12;
        } else {
            i10 = 0;
            i11 = 0;
            i12 = 0;
        }
        if (hVar.e()) {
            int i13 = hVar.i();
            int i14 = hVar.i();
            int i15 = hVar.i();
            int i16 = hVar.i();
            f10 = b(f10, i10, i13, i14);
            f11 = a(f11, i10, i15, i16);
        }
        return new e(i10, i11, i12, f10, f11);
    }

    private static f s(dn.h hVar, int i10) {
        int i11 = hVar.i();
        int i12 = i11 + 1;
        ImmutableList.a s10 = ImmutableList.s(i12);
        int[] iArr = new int[i10];
        for (int i13 = 0; i13 < i12; i13++) {
            s10.a(r(hVar));
        }
        int i14 = 1;
        if (i12 > 1 && hVar.e()) {
            int d10 = j7.b.d(i12, RoundingMode.CEILING);
            while (i14 < i10) {
                iArr[i14] = hVar.f(d10);
                i14++;
            }
        } else {
            while (i14 < i10) {
                iArr[i14] = Math.min(i14, i11);
                i14++;
            }
        }
        return new f(s10.k(), iArr);
    }

    @Nullable
    public static C0707g t(byte[] bArr, int i10, int i11) {
        byte b10;
        int i12;
        int max;
        int max2;
        int i13 = i10 + 2;
        while (true) {
            i11--;
            b10 = bArr[i11];
            if (b10 != 0 || i11 <= i13) {
                break;
            }
        }
        if (b10 != 0 && i11 > i13) {
            dn.h hVar = new dn.h(bArr, i13, i11 + 1);
            while (hVar.c(16)) {
                int f10 = hVar.f(8);
                int i14 = 0;
                while (f10 == 255) {
                    i14 += 255;
                    f10 = hVar.f(8);
                }
                int i15 = i14 + f10;
                int f11 = hVar.f(8);
                int i16 = 0;
                while (f11 == 255) {
                    i16 += 255;
                    f11 = hVar.f(8);
                }
                int i17 = i16 + f11;
                if (i17 == 0 || !hVar.c(i17)) {
                    break;
                } else if (i15 == 176) {
                    int i18 = hVar.i();
                    boolean e10 = hVar.e();
                    if (e10) {
                        i12 = hVar.i();
                    } else {
                        i12 = 0;
                    }
                    int i19 = hVar.i();
                    int i20 = -1;
                    int i21 = -1;
                    int i22 = -1;
                    int i23 = -1;
                    int i24 = -1;
                    int i25 = -1;
                    for (int i26 = 0; i26 <= i19; i26++) {
                        i20 = hVar.i();
                        i21 = hVar.i();
                        i22 = hVar.f(6);
                        if (i22 == 63) {
                            return null;
                        }
                        if (i22 == 0) {
                            max = Math.max(0, i18 - 30);
                        } else {
                            max = Math.max(0, (i22 + i18) - 31);
                        }
                        i23 = hVar.f(max);
                        if (e10) {
                            i24 = hVar.f(6);
                            if (i24 == 63) {
                                return null;
                            }
                            if (i24 == 0) {
                                max2 = Math.max(0, i12 - 30);
                            } else {
                                max2 = Math.max(0, (i24 + i12) - 31);
                            }
                            i25 = hVar.f(max2);
                        }
                        if (hVar.e()) {
                            hVar.m(10);
                        }
                    }
                    return new C0707g(i18, i12, i19 + 1, i20, i21, i22, i23, i24, i25);
                }
            }
        }
        return null;
    }

    public static h u(byte[] bArr, int i10, int i11, @Nullable k kVar) {
        return v(bArr, i10 + 2, i11, p(new dn.h(bArr, i10, i11)), kVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x023a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static dn.g.h v(byte[] r22, int r23, int r24, dn.g.b r25, @androidx.annotation.Nullable dn.g.k r26) {
        /*
            Method dump skipped, instructions count: 617
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dn.g.v(byte[], int, int, dn.g$b, dn.g$k):dn.g$h");
    }

    private static i w(dn.h hVar) {
        int i10;
        hVar.m(3);
        if (hVar.e()) {
            i10 = 1;
        } else {
            i10 = 2;
        }
        int j10 = zm.g.j(hVar.f(8));
        int k10 = zm.g.k(hVar.f(8));
        hVar.m(8);
        return new i(j10, i10, k10);
    }

    private static j x(dn.h hVar, int i10, int i11, int[] iArr) {
        boolean z10;
        boolean z11;
        boolean z12;
        int i12;
        if (!hVar.e()) {
            z10 = hVar.e();
        } else {
            z10 = true;
        }
        if (z10) {
            hVar.l();
        }
        boolean e10 = hVar.e();
        boolean e11 = hVar.e();
        if (e10 || e11) {
            for (int i13 = 0; i13 < i11; i13++) {
                for (int i14 = 0; i14 < iArr[i13]; i14++) {
                    if (e10) {
                        z11 = hVar.e();
                    } else {
                        z11 = false;
                    }
                    if (e11) {
                        z12 = hVar.e();
                    } else {
                        z12 = false;
                    }
                    if (z11) {
                        hVar.m(32);
                    }
                    if (z12) {
                        hVar.m(18);
                    }
                }
            }
        }
        boolean e12 = hVar.e();
        if (e12) {
            i12 = hVar.f(4) + 1;
        } else {
            i12 = i10;
        }
        ImmutableList.a s10 = ImmutableList.s(i12);
        int[] iArr2 = new int[i10];
        for (int i15 = 0; i15 < i12; i15++) {
            s10.a(w(hVar));
        }
        if (e12 && i12 > 1) {
            for (int i16 = 0; i16 < i10; i16++) {
                iArr2[i16] = hVar.f(4);
            }
        }
        return new j(s10.k(), iArr2);
    }

    public static k y(byte[] bArr, int i10, int i11) {
        dn.h hVar = new dn.h(bArr, i10, i11);
        return z(hVar, p(hVar));
    }

    private static k z(dn.h hVar, b bVar) {
        int i10;
        Object[] objArr;
        Object[] objArr2;
        Object[] objArr3;
        int[][] iArr;
        int i11;
        int i12;
        int i13;
        j jVar;
        int i14;
        int i15;
        boolean[][] zArr;
        int i16;
        boolean[][] zArr2;
        int[] iArr2;
        boolean z10;
        int i17;
        int i18;
        int[] iArr3;
        int i19;
        hVar.m(4);
        boolean e10 = hVar.e();
        boolean e11 = hVar.e();
        int f10 = hVar.f(6);
        int i20 = f10 + 1;
        int f11 = hVar.f(3);
        hVar.m(17);
        boolean z11 = true;
        c q10 = q(hVar, true, f11, null);
        if (hVar.e()) {
            i10 = 0;
        } else {
            i10 = f11;
        }
        while (i10 <= f11) {
            hVar.i();
            hVar.i();
            hVar.i();
            i10++;
        }
        int f12 = hVar.f(6);
        int i21 = hVar.i() + 1;
        d dVar = new d(ImmutableList.B(q10), new int[1]);
        if (i20 >= 2 && i21 >= 2) {
            objArr = 1;
        } else {
            objArr = null;
        }
        if (e10 && e11) {
            objArr2 = 1;
        } else {
            objArr2 = null;
        }
        int i22 = f12 + 1;
        if (i22 >= i20) {
            objArr3 = 1;
        } else {
            objArr3 = null;
        }
        if (objArr != null && objArr2 != null && objArr3 != null) {
            int[][] iArr4 = (int[][]) Array.newInstance(Integer.TYPE, i21, i22);
            int[] iArr5 = new int[i21];
            int[] iArr6 = new int[i21];
            iArr4[0][0] = 0;
            iArr5[0] = 1;
            iArr6[0] = 0;
            for (int i23 = 1; i23 < i21; i23++) {
                int i24 = 0;
                for (int i25 = 0; i25 <= f12; i25++) {
                    if (hVar.e()) {
                        iArr4[i23][i24] = i25;
                        iArr6[i23] = i25;
                        i24++;
                    }
                    iArr5[i23] = i24;
                }
            }
            if (hVar.e()) {
                hVar.m(64);
                if (hVar.e()) {
                    hVar.i();
                }
                int i26 = hVar.i();
                int i27 = 0;
                while (i27 < i26) {
                    hVar.i();
                    if (i27 != 0 && !hVar.e()) {
                        z11 = false;
                    }
                    F(hVar, z11, f11);
                    i27++;
                    z11 = true;
                }
            }
            if (!hVar.e()) {
                return new k(bVar, null, dVar, null, null);
            }
            hVar.b();
            c q11 = q(hVar, false, f11, q10);
            boolean e12 = hVar.e();
            boolean[] zArr3 = new boolean[16];
            int i28 = 0;
            for (int i29 = 0; i29 < 16; i29++) {
                boolean e13 = hVar.e();
                zArr3[i29] = e13;
                if (e13) {
                    i28++;
                }
            }
            if (i28 != 0 && zArr3[1]) {
                int[] iArr7 = new int[i28];
                for (int i30 = 0; i30 < i28 - (e12 ? 1 : 0); i30++) {
                    iArr7[i30] = hVar.f(3);
                }
                int[] iArr8 = new int[i28 + 1];
                if (e12) {
                    int i31 = 1;
                    while (i31 < i28) {
                        int[][] iArr9 = iArr4;
                        for (int i32 = 0; i32 < i31; i32++) {
                            iArr8[i31] = iArr8[i31] + iArr7[i32] + 1;
                        }
                        i31++;
                        iArr4 = iArr9;
                    }
                    iArr = iArr4;
                    iArr8[i28] = 6;
                } else {
                    iArr = iArr4;
                }
                int[][] iArr10 = (int[][]) Array.newInstance(Integer.TYPE, i20, i28);
                int[] iArr11 = new int[i20];
                iArr11[0] = 0;
                boolean e14 = hVar.e();
                int i33 = 1;
                while (i33 < i20) {
                    if (e14) {
                        i18 = f11;
                        iArr11[i33] = hVar.f(6);
                    } else {
                        i18 = f11;
                        iArr11[i33] = i33;
                    }
                    if (!e12) {
                        int i34 = 0;
                        while (i34 < i28) {
                            iArr10[i33][i34] = hVar.f(iArr7[i34] + 1);
                            i34++;
                            iArr7 = iArr7;
                        }
                        iArr3 = iArr7;
                    } else {
                        iArr3 = iArr7;
                        for (int i35 = 0; i35 < i28; i35++) {
                            iArr10[i33][i35] = (iArr11[i33] & ((1 << iArr8[i19]) - 1)) >> iArr8[i35];
                        }
                    }
                    i33++;
                    f11 = i18;
                    iArr7 = iArr3;
                }
                int i36 = f11;
                int[] iArr12 = new int[i22];
                int i37 = 1;
                for (int i38 = 0; i38 < i20; i38++) {
                    iArr12[iArr11[i38]] = -1;
                    int i39 = 0;
                    for (int i40 = 0; i40 < 16; i40++) {
                        if (zArr3[i40]) {
                            if (i40 == 1) {
                                iArr12[iArr11[i38]] = iArr10[i38][i39];
                            }
                            i39++;
                        }
                    }
                    if (i38 > 0) {
                        int i41 = 0;
                        while (true) {
                            if (i41 < i38) {
                                if (iArr12[iArr11[i38]] == iArr12[iArr11[i41]]) {
                                    break;
                                }
                                i41++;
                            } else {
                                i37++;
                                break;
                            }
                        }
                    }
                }
                int f13 = hVar.f(4);
                if (i37 >= 2 && f13 != 0) {
                    int[] iArr13 = new int[i37];
                    for (int i42 = 0; i42 < i37; i42++) {
                        iArr13[i42] = hVar.f(f13);
                    }
                    int[] iArr14 = new int[i22];
                    for (int i43 = 0; i43 < i20; i43++) {
                        iArr14[Math.min(iArr11[i43], f12)] = i43;
                    }
                    ImmutableList.a r10 = ImmutableList.r();
                    int i44 = 0;
                    while (i44 <= f12) {
                        int min = Math.min(iArr12[i44], i37 - 1);
                        if (min >= 0) {
                            i17 = iArr13[min];
                        } else {
                            i17 = -1;
                        }
                        r10.a(new a(iArr14[i44], i17));
                        i44++;
                        iArr12 = iArr12;
                    }
                    ImmutableList k10 = r10.k();
                    if (((a) k10.get(0)).f50467b == -1) {
                        return new k(bVar, null, dVar, null, null);
                    }
                    int i45 = 1;
                    while (true) {
                        if (i45 <= f12) {
                            i11 = -1;
                            if (((a) k10.get(i45)).f50467b != -1) {
                                i12 = i45;
                                break;
                            }
                            i45++;
                        } else {
                            i11 = -1;
                            i12 = -1;
                            break;
                        }
                    }
                    if (i12 == i11) {
                        return new k(bVar, null, dVar, null, null);
                    }
                    Class cls = Boolean.TYPE;
                    boolean[][] zArr4 = (boolean[][]) Array.newInstance(cls, i20, i20);
                    boolean[][] zArr5 = (boolean[][]) Array.newInstance(cls, i20, i20);
                    for (int i46 = 1; i46 < i20; i46++) {
                        for (int i47 = 0; i47 < i46; i47++) {
                            boolean[] zArr6 = zArr4[i46];
                            boolean[] zArr7 = zArr5[i46];
                            boolean e15 = hVar.e();
                            zArr7[i47] = e15;
                            zArr6[i47] = e15;
                        }
                    }
                    for (int i48 = 1; i48 < i20; i48++) {
                        for (int i49 = 0; i49 < f10; i49++) {
                            int i50 = 0;
                            while (true) {
                                if (i50 < i48) {
                                    boolean[] zArr8 = zArr5[i48];
                                    if (zArr8[i50] && zArr5[i50][i49]) {
                                        zArr8[i49] = true;
                                        break;
                                    }
                                    i50++;
                                }
                            }
                        }
                    }
                    int[] iArr15 = new int[i22];
                    for (int i51 = 0; i51 < i20; i51++) {
                        int i52 = 0;
                        for (int i53 = 0; i53 < i51; i53++) {
                            i52 += zArr4[i51][i53] ? 1 : 0;
                        }
                        iArr15[iArr11[i51]] = i52;
                    }
                    int i54 = 0;
                    for (int i55 = 0; i55 < i20; i55++) {
                        if (iArr15[iArr11[i55]] == 0) {
                            i54++;
                        }
                    }
                    if (i54 > 1) {
                        return new k(bVar, null, dVar, null, null);
                    }
                    int[] iArr16 = new int[i20];
                    int[] iArr17 = new int[i21];
                    if (hVar.e()) {
                        for (int i56 = 0; i56 < i20; i56++) {
                            iArr16[i56] = hVar.f(3);
                        }
                        i13 = i36;
                    } else {
                        i13 = i36;
                        Arrays.fill(iArr16, 0, i20, i13);
                    }
                    int i57 = 0;
                    while (i57 < i21) {
                        boolean[][] zArr9 = zArr5;
                        int[] iArr18 = iArr15;
                        int[] iArr19 = iArr11;
                        int i58 = 0;
                        for (int i59 = 0; i59 < iArr5[i57]; i59++) {
                            i58 = Math.max(i58, iArr16[((a) k10.get(iArr[i57][i59])).f50466a]);
                        }
                        iArr17[i57] = i58 + 1;
                        i57++;
                        iArr11 = iArr19;
                        iArr15 = iArr18;
                        zArr5 = zArr9;
                    }
                    boolean[][] zArr10 = zArr5;
                    int[] iArr20 = iArr15;
                    int[] iArr21 = iArr11;
                    if (hVar.e()) {
                        int i60 = 0;
                        while (i60 < f10) {
                            int i61 = i60 + 1;
                            for (int i62 = i61; i62 < i20; i62++) {
                                if (zArr4[i62][i60]) {
                                    hVar.m(3);
                                }
                            }
                            i60 = i61;
                        }
                    }
                    hVar.l();
                    int i63 = hVar.i() + 1;
                    ImmutableList.a r11 = ImmutableList.r();
                    r11.a(q10);
                    if (i63 > 1) {
                        c cVar = q11;
                        r11.a(cVar);
                        for (int i64 = 2; i64 < i63; i64++) {
                            cVar = q(hVar, hVar.e(), i13, cVar);
                            r11.a(cVar);
                        }
                    }
                    ImmutableList k11 = r11.k();
                    int i65 = hVar.i() + i21;
                    if (i65 > i21) {
                        return new k(bVar, null, dVar, null, null);
                    }
                    int f14 = hVar.f(2);
                    boolean[][] zArr11 = (boolean[][]) Array.newInstance(Boolean.TYPE, i65, i22);
                    int[] iArr22 = new int[i65];
                    int[] iArr23 = new int[i65];
                    int i66 = 0;
                    while (i66 < i21) {
                        int i67 = i21;
                        iArr22[i66] = 0;
                        iArr23[i66] = iArr6[i66];
                        if (f14 == 0) {
                            zArr2 = zArr4;
                            iArr2 = iArr17;
                            i16 = i20;
                            Arrays.fill(zArr11[i66], 0, iArr5[i66], true);
                            iArr22[i66] = iArr5[i66];
                        } else {
                            i16 = i20;
                            zArr2 = zArr4;
                            iArr2 = iArr17;
                            if (f14 == 1) {
                                int i68 = iArr6[i66];
                                for (int i69 = 0; i69 < iArr5[i66]; i69++) {
                                    boolean[] zArr12 = zArr11[i66];
                                    if (iArr[i66][i69] == i68) {
                                        z10 = true;
                                    } else {
                                        z10 = false;
                                    }
                                    zArr12[i69] = z10;
                                }
                                iArr22[i66] = 1;
                            } else {
                                zArr11[0][0] = true;
                                iArr22[0] = 1;
                                i66++;
                                i21 = i67;
                                zArr4 = zArr2;
                                iArr17 = iArr2;
                                i20 = i16;
                            }
                        }
                        i66++;
                        i21 = i67;
                        zArr4 = zArr2;
                        iArr17 = iArr2;
                        i20 = i16;
                    }
                    int i70 = i20;
                    boolean[][] zArr13 = zArr4;
                    int[] iArr24 = iArr17;
                    int i71 = i21;
                    int[] iArr25 = new int[i22];
                    int i72 = 2;
                    boolean[][] zArr14 = (boolean[][]) Array.newInstance(Boolean.TYPE, i65, i22);
                    int i73 = 1;
                    int i74 = 0;
                    while (i73 < i65) {
                        if (f14 == i72) {
                            for (int i75 = 0; i75 < iArr5[i73]; i75++) {
                                zArr11[i73][i75] = hVar.e();
                                int i76 = iArr22[i73];
                                boolean z12 = zArr11[i73][i75];
                                iArr22[i73] = i76 + (z12 ? 1 : 0);
                                if (z12) {
                                    iArr23[i73] = iArr[i73][i75];
                                }
                            }
                        }
                        if (i74 == 0 && iArr[i73][0] == 0 && zArr11[i73][0]) {
                            for (int i77 = 1; i77 < iArr5[i73]; i77++) {
                                if (iArr[i73][i77] == i12 && zArr11[i73][i12]) {
                                    i74 = i73;
                                }
                            }
                        }
                        int i78 = 0;
                        while (i78 < iArr5[i73]) {
                            if (i63 > 1) {
                                zArr14[i73][i78] = zArr11[i73][i78];
                                zArr = zArr11;
                                i14 = i63;
                                int d10 = j7.b.d(i63, RoundingMode.CEILING);
                                if (!zArr14[i73][i78]) {
                                    int i79 = ((a) k10.get(iArr[i73][i78])).f50466a;
                                    int i80 = 0;
                                    while (i80 < i78) {
                                        i15 = i12;
                                        if (zArr10[i79][((a) k10.get(iArr[i73][i80])).f50466a]) {
                                            zArr14[i73][i78] = true;
                                            break;
                                        }
                                        i80++;
                                        i12 = i15;
                                    }
                                }
                                i15 = i12;
                                if (zArr14[i73][i78]) {
                                    if (i74 > 0 && i73 == i74) {
                                        iArr25[i78] = hVar.f(d10);
                                    } else {
                                        hVar.m(d10);
                                    }
                                }
                            } else {
                                i14 = i63;
                                i15 = i12;
                                zArr = zArr11;
                            }
                            i78++;
                            zArr11 = zArr;
                            i63 = i14;
                            i12 = i15;
                        }
                        int i81 = i63;
                        int i82 = i12;
                        boolean[][] zArr15 = zArr11;
                        if (iArr22[i73] == 1 && iArr20[iArr23[i73]] > 0) {
                            hVar.l();
                        }
                        i73++;
                        zArr11 = zArr15;
                        i63 = i81;
                        i12 = i82;
                        i72 = 2;
                    }
                    if (i74 == 0) {
                        return new k(bVar, null, dVar, null, null);
                    }
                    f s10 = s(hVar, i70);
                    hVar.m(2);
                    for (int i83 = 1; i83 < i70; i83++) {
                        if (iArr20[iArr21[i83]] == 0) {
                            hVar.l();
                        }
                    }
                    E(hVar, i65, iArr24, iArr5, zArr14);
                    K(hVar, i70, zArr13);
                    if (hVar.e()) {
                        hVar.b();
                        jVar = x(hVar, i70, i71, iArr24);
                    } else {
                        jVar = null;
                    }
                    return new k(bVar, k10, new d(k11, iArr25), s10, jVar);
                }
                return new k(bVar, null, dVar, null, null);
            }
            return new k(bVar, null, dVar, null, null);
        }
        return new k(bVar, null, dVar, null, null);
    }
}
