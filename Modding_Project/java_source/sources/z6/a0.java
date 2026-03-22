package z6;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import b7.s0;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.u1;
import java.util.Arrays;
import o5.o0;
import o5.p0;
/* compiled from: MappingTrackSelector.java */
/* loaded from: classes4.dex */
public abstract class a0 extends h0 {
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private a f71347c;

    /* compiled from: MappingTrackSelector.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f71348a;

        /* renamed from: b  reason: collision with root package name */
        private final String[] f71349b;

        /* renamed from: c  reason: collision with root package name */
        private final int[] f71350c;

        /* renamed from: d  reason: collision with root package name */
        private final n6.w[] f71351d;

        /* renamed from: e  reason: collision with root package name */
        private final int[] f71352e;

        /* renamed from: f  reason: collision with root package name */
        private final int[][][] f71353f;

        /* renamed from: g  reason: collision with root package name */
        private final n6.w f71354g;

        @VisibleForTesting
        a(String[] strArr, int[] iArr, n6.w[] wVarArr, int[] iArr2, int[][][] iArr3, n6.w wVar) {
            this.f71349b = strArr;
            this.f71350c = iArr;
            this.f71351d = wVarArr;
            this.f71353f = iArr3;
            this.f71352e = iArr2;
            this.f71354g = wVar;
            this.f71348a = iArr.length;
        }

        public int a(int i10, int i11, boolean z10) {
            int i12 = this.f71351d[i10].b(i11).f62833a;
            int[] iArr = new int[i12];
            int i13 = 0;
            for (int i14 = 0; i14 < i12; i14++) {
                int g10 = g(i10, i11, i14);
                if (g10 == 4 || (z10 && g10 == 3)) {
                    iArr[i13] = i14;
                    i13++;
                }
            }
            return b(i10, i11, Arrays.copyOf(iArr, i13));
        }

        public int b(int i10, int i11, int[] iArr) {
            int i12 = 0;
            int i13 = 16;
            String str = null;
            boolean z10 = false;
            int i14 = 0;
            while (i12 < iArr.length) {
                String str2 = this.f71351d[i10].b(i11).c(iArr[i12]).f19157l;
                int i15 = i14 + 1;
                if (i14 == 0) {
                    str = str2;
                } else {
                    z10 |= !s0.c(str, str2);
                }
                i13 = Math.min(i13, o0.c(this.f71353f[i10][i11][i12]));
                i12++;
                i14 = i15;
            }
            if (z10) {
                return Math.min(i13, this.f71352e[i10]);
            }
            return i13;
        }

        public int c(int i10, int i11, int i12) {
            return this.f71353f[i10][i11][i12];
        }

        public int d() {
            return this.f71348a;
        }

        public int e(int i10) {
            return this.f71350c[i10];
        }

        public n6.w f(int i10) {
            return this.f71351d[i10];
        }

        public int g(int i10, int i11, int i12) {
            return o0.f(c(i10, i11, i12));
        }

        public n6.w h() {
            return this.f71354g;
        }
    }

    private static int k(o0[] o0VarArr, n6.u uVar, int[] iArr, boolean z10) throws ExoPlaybackException {
        boolean z11;
        int length = o0VarArr.length;
        int i10 = 0;
        boolean z12 = true;
        for (int i11 = 0; i11 < o0VarArr.length; i11++) {
            o0 o0Var = o0VarArr[i11];
            int i12 = 0;
            for (int i13 = 0; i13 < uVar.f62833a; i13++) {
                i12 = Math.max(i12, o0.f(o0Var.a(uVar.c(i13))));
            }
            if (iArr[i11] == 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (i12 > i10 || (i12 == i10 && z10 && !z12 && z11)) {
                length = i11;
                z12 = z11;
                i10 = i12;
            }
        }
        return length;
    }

    private static int[] l(o0 o0Var, n6.u uVar) throws ExoPlaybackException {
        int[] iArr = new int[uVar.f62833a];
        for (int i10 = 0; i10 < uVar.f62833a; i10++) {
            iArr[i10] = o0Var.a(uVar.c(i10));
        }
        return iArr;
    }

    private static int[] m(o0[] o0VarArr) throws ExoPlaybackException {
        int length = o0VarArr.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr[i10] = o0VarArr[i10].supportsMixedMimeTypeAdaptation();
        }
        return iArr;
    }

    @Override // z6.h0
    public final void f(@Nullable Object obj) {
        this.f71347c = (a) obj;
    }

    @Override // z6.h0
    public final i0 h(o0[] o0VarArr, n6.w wVar, o.b bVar, u1 u1Var) throws ExoPlaybackException {
        boolean z10;
        int[] l10;
        int[] iArr = new int[o0VarArr.length + 1];
        int length = o0VarArr.length + 1;
        n6.u[][] uVarArr = new n6.u[length];
        int[][][] iArr2 = new int[o0VarArr.length + 1][];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = wVar.f62840a;
            uVarArr[i10] = new n6.u[i11];
            iArr2[i10] = new int[i11];
        }
        int[] m10 = m(o0VarArr);
        for (int i12 = 0; i12 < wVar.f62840a; i12++) {
            n6.u b10 = wVar.b(i12);
            if (b10.f62835c == 5) {
                z10 = true;
            } else {
                z10 = false;
            }
            int k10 = k(o0VarArr, b10, iArr, z10);
            if (k10 == o0VarArr.length) {
                l10 = new int[b10.f62833a];
            } else {
                l10 = l(o0VarArr[k10], b10);
            }
            int i13 = iArr[k10];
            uVarArr[k10][i13] = b10;
            iArr2[k10][i13] = l10;
            iArr[k10] = i13 + 1;
        }
        n6.w[] wVarArr = new n6.w[o0VarArr.length];
        String[] strArr = new String[o0VarArr.length];
        int[] iArr3 = new int[o0VarArr.length];
        for (int i14 = 0; i14 < o0VarArr.length; i14++) {
            int i15 = iArr[i14];
            wVarArr[i14] = new n6.w((n6.u[]) s0.A0(uVarArr[i14], i15));
            iArr2[i14] = (int[][]) s0.A0(iArr2[i14], i15);
            strArr[i14] = o0VarArr[i14].getName();
            iArr3[i14] = o0VarArr[i14].getTrackType();
        }
        a aVar = new a(strArr, iArr3, wVarArr, m10, iArr2, new n6.w((n6.u[]) s0.A0(uVarArr[o0VarArr.length], iArr[o0VarArr.length])));
        Pair<p0[], y[]> n10 = n(aVar, iArr2, m10, bVar, u1Var);
        return new i0((p0[]) n10.first, (y[]) n10.second, g0.b(aVar, (b0[]) n10.second), aVar);
    }

    protected abstract Pair<p0[], y[]> n(a aVar, int[][][] iArr, int[] iArr2, o.b bVar, u1 u1Var) throws ExoPlaybackException;
}
