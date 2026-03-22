package vn;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import cn.m0;
import gn.g0;
import io.bidmachine.media3.exoplayer.ExoPlaybackException;
import io.bidmachine.media3.exoplayer.i2;
import io.bidmachine.media3.exoplayer.source.r;
import java.util.Arrays;
import java.util.Objects;
import sn.x;
import zm.a0;
import zm.b0;
/* compiled from: MappingTrackSelector.java */
/* loaded from: classes8.dex */
public abstract class s extends v {
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private a f69162c;

    /* compiled from: MappingTrackSelector.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f69163a;

        /* renamed from: b  reason: collision with root package name */
        private final String[] f69164b;

        /* renamed from: c  reason: collision with root package name */
        private final int[] f69165c;

        /* renamed from: d  reason: collision with root package name */
        private final x[] f69166d;

        /* renamed from: e  reason: collision with root package name */
        private final int[] f69167e;

        /* renamed from: f  reason: collision with root package name */
        private final int[][][] f69168f;

        /* renamed from: g  reason: collision with root package name */
        private final x f69169g;

        @VisibleForTesting
        a(String[] strArr, int[] iArr, x[] xVarArr, int[] iArr2, int[][][] iArr3, x xVar) {
            this.f69164b = strArr;
            this.f69165c = iArr;
            this.f69166d = xVarArr;
            this.f69168f = iArr3;
            this.f69167e = iArr2;
            this.f69169g = xVar;
            this.f69163a = iArr.length;
        }

        public int a(int i10, int i11, boolean z10) {
            int i12 = this.f69166d[i10].b(i11).f71809a;
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
                String str2 = this.f69166d[i10].b(i11).a(iArr[i12]).f55174o;
                int i15 = i14 + 1;
                if (i14 == 0) {
                    str = str2;
                } else {
                    z10 |= !Objects.equals(str, str2);
                }
                i13 = Math.min(i13, i2.c(this.f69168f[i10][i11][i12]));
                i12++;
                i14 = i15;
            }
            if (z10) {
                return Math.min(i13, this.f69167e[i10]);
            }
            return i13;
        }

        public int c(int i10, int i11, int i12) {
            return this.f69168f[i10][i11][i12];
        }

        public int d() {
            return this.f69163a;
        }

        public int e(int i10) {
            return this.f69165c[i10];
        }

        public x f(int i10) {
            return this.f69166d[i10];
        }

        public int g(int i10, int i11, int i12) {
            return i2.f(c(i10, i11, i12));
        }

        public x h() {
            return this.f69169g;
        }
    }

    private static int n(i2[] i2VarArr, b0 b0Var, int[] iArr, boolean z10) throws ExoPlaybackException {
        boolean z11;
        int length = i2VarArr.length;
        int i10 = 0;
        boolean z12 = true;
        for (int i11 = 0; i11 < i2VarArr.length; i11++) {
            i2 i2Var = i2VarArr[i11];
            int i12 = 0;
            for (int i13 = 0; i13 < b0Var.f71809a; i13++) {
                i12 = Math.max(i12, i2.f(i2Var.a(b0Var.a(i13))));
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

    private static int[] o(i2 i2Var, b0 b0Var) throws ExoPlaybackException {
        int[] iArr = new int[b0Var.f71809a];
        for (int i10 = 0; i10 < b0Var.f71809a; i10++) {
            iArr[i10] = i2Var.a(b0Var.a(i10));
        }
        return iArr;
    }

    private static int[] p(i2[] i2VarArr) throws ExoPlaybackException {
        int length = i2VarArr.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr[i10] = i2VarArr[i10].supportsMixedMimeTypeAdaptation();
        }
        return iArr;
    }

    @Override // vn.v
    public final void i(@Nullable Object obj) {
        this.f69162c = (a) obj;
    }

    @Override // vn.v
    public final w k(i2[] i2VarArr, x xVar, r.b bVar, a0 a0Var) throws ExoPlaybackException {
        boolean z10;
        int[] o10;
        int[] iArr = new int[i2VarArr.length + 1];
        int length = i2VarArr.length + 1;
        b0[][] b0VarArr = new b0[length];
        int[][][] iArr2 = new int[i2VarArr.length + 1][];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = xVar.f66547a;
            b0VarArr[i10] = new b0[i11];
            iArr2[i10] = new int[i11];
        }
        int[] p10 = p(i2VarArr);
        for (int i12 = 0; i12 < xVar.f66547a; i12++) {
            b0 b10 = xVar.b(i12);
            if (b10.f71811c == 5) {
                z10 = true;
            } else {
                z10 = false;
            }
            int n10 = n(i2VarArr, b10, iArr, z10);
            if (n10 == i2VarArr.length) {
                o10 = new int[b10.f71809a];
            } else {
                o10 = o(i2VarArr[n10], b10);
            }
            int i13 = iArr[n10];
            b0VarArr[n10][i13] = b10;
            iArr2[n10][i13] = o10;
            iArr[n10] = i13 + 1;
        }
        x[] xVarArr = new x[i2VarArr.length];
        String[] strArr = new String[i2VarArr.length];
        int[] iArr3 = new int[i2VarArr.length];
        for (int i14 = 0; i14 < i2VarArr.length; i14++) {
            int i15 = iArr[i14];
            xVarArr[i14] = new x((b0[]) m0.Y0(b0VarArr[i14], i15));
            iArr2[i14] = (int[][]) m0.Y0(iArr2[i14], i15);
            strArr[i14] = i2VarArr[i14].getName();
            iArr3[i14] = i2VarArr[i14].getTrackType();
        }
        a aVar = new a(strArr, iArr3, xVarArr, p10, iArr2, new x((b0[]) m0.Y0(b0VarArr[i2VarArr.length], iArr[i2VarArr.length])));
        Pair<g0[], q[]> q10 = q(aVar, iArr2, p10, bVar, a0Var);
        return new w((g0[]) q10.first, (q[]) q10.second, u.b(aVar, (t[]) q10.second), aVar);
    }

    protected abstract Pair<g0[], q[]> q(a aVar, int[][][] iArr, int[] iArr2, r.b bVar, a0 a0Var) throws ExoPlaybackException;
}
