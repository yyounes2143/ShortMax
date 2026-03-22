package vn;

import android.os.SystemClock;
import com.google.common.collect.ImmutableList;
import io.bidmachine.media3.exoplayer.upstream.b;
import java.util.Arrays;
import java.util.List;
import sn.x;
import vn.s;
import zm.b0;
import zm.e0;
/* compiled from: TrackSelectionUtil.java */
/* loaded from: classes8.dex */
public final class u {
    public static e0 a(s.a aVar, List<? extends t>[] listArr) {
        boolean z10;
        boolean z11;
        ImmutableList.a aVar2 = new ImmutableList.a();
        for (int i10 = 0; i10 < aVar.d(); i10++) {
            x f10 = aVar.f(i10);
            List<? extends t> list = listArr[i10];
            for (int i11 = 0; i11 < f10.f66547a; i11++) {
                b0 b10 = f10.b(i11);
                if (aVar.a(i10, i11, false) != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                int i12 = b10.f71809a;
                int[] iArr = new int[i12];
                boolean[] zArr = new boolean[i12];
                for (int i13 = 0; i13 < b10.f71809a; i13++) {
                    iArr[i13] = aVar.g(i10, i11, i13);
                    int i14 = 0;
                    while (true) {
                        if (i14 < list.size()) {
                            t tVar = list.get(i14);
                            if (tVar.getTrackGroup().equals(b10) && tVar.indexOf(i13) != -1) {
                                z11 = true;
                                break;
                            }
                            i14++;
                        } else {
                            z11 = false;
                            break;
                        }
                    }
                    zArr[i13] = z11;
                }
                aVar2.a(new e0.a(b10, z10, iArr, zArr));
            }
        }
        x h10 = aVar.h();
        for (int i15 = 0; i15 < h10.f66547a; i15++) {
            b0 b11 = h10.b(i15);
            int[] iArr2 = new int[b11.f71809a];
            Arrays.fill(iArr2, 0);
            aVar2.a(new e0.a(b11, false, iArr2, new boolean[b11.f71809a]));
        }
        return new e0(aVar2.k());
    }

    public static e0 b(s.a aVar, t[] tVarArr) {
        ImmutableList A;
        List[] listArr = new List[tVarArr.length];
        for (int i10 = 0; i10 < tVarArr.length; i10++) {
            t tVar = tVarArr[i10];
            if (tVar != null) {
                A = ImmutableList.B(tVar);
            } else {
                A = ImmutableList.A();
            }
            listArr[i10] = A;
        }
        return a(aVar, listArr);
    }

    public static b.a c(q qVar) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int length = qVar.length();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (qVar.d(i11, elapsedRealtime)) {
                i10++;
            }
        }
        return new b.a(1, 0, length, i10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x000c, code lost:
        if (r1 != r3) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Point d(boolean r3, int r4, int r5, int r6, int r7) {
        /*
            if (r3 == 0) goto Lf
            r3 = 0
            r0 = 1
            if (r6 <= r7) goto L8
            r1 = r0
            goto L9
        L8:
            r1 = r3
        L9:
            if (r4 <= r5) goto Lc
            r3 = r0
        Lc:
            if (r1 == r3) goto Lf
            goto L12
        Lf:
            r2 = r5
            r5 = r4
            r4 = r2
        L12:
            int r3 = r6 * r4
            int r0 = r7 * r5
            if (r3 < r0) goto L22
            android.graphics.Point r3 = new android.graphics.Point
            int r4 = cn.m0.k(r0, r6)
            r3.<init>(r5, r4)
            return r3
        L22:
            android.graphics.Point r5 = new android.graphics.Point
            int r3 = cn.m0.k(r3, r7)
            r5.<init>(r3, r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: vn.u.d(boolean, int, int, int, int):android.graphics.Point");
    }
}
