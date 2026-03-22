package z6;

import com.google.android.exoplayer2.v1;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;
import java.util.List;
import z6.a0;
/* compiled from: TrackSelectionUtil.java */
/* loaded from: classes4.dex */
public final class g0 {
    public static v1 a(a0.a aVar, List<? extends b0>[] listArr) {
        boolean z10;
        boolean z11;
        ImmutableList.a aVar2 = new ImmutableList.a();
        for (int i10 = 0; i10 < aVar.d(); i10++) {
            n6.w f10 = aVar.f(i10);
            List<? extends b0> list = listArr[i10];
            for (int i11 = 0; i11 < f10.f62840a; i11++) {
                n6.u b10 = f10.b(i11);
                if (aVar.a(i10, i11, false) != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                int i12 = b10.f62833a;
                int[] iArr = new int[i12];
                boolean[] zArr = new boolean[i12];
                for (int i13 = 0; i13 < b10.f62833a; i13++) {
                    iArr[i13] = aVar.g(i10, i11, i13);
                    int i14 = 0;
                    while (true) {
                        if (i14 < list.size()) {
                            b0 b0Var = list.get(i14);
                            if (b0Var.getTrackGroup().equals(b10) && b0Var.indexOf(i13) != -1) {
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
                aVar2.a(new v1.a(b10, z10, iArr, zArr));
            }
        }
        n6.w h10 = aVar.h();
        for (int i15 = 0; i15 < h10.f62840a; i15++) {
            n6.u b11 = h10.b(i15);
            int[] iArr2 = new int[b11.f62833a];
            Arrays.fill(iArr2, 0);
            aVar2.a(new v1.a(b11, false, iArr2, new boolean[b11.f62833a]));
        }
        return new v1(aVar2.k());
    }

    public static v1 b(a0.a aVar, b0[] b0VarArr) {
        ImmutableList A;
        List[] listArr = new List[b0VarArr.length];
        for (int i10 = 0; i10 < b0VarArr.length; i10++) {
            b0 b0Var = b0VarArr[i10];
            if (b0Var != null) {
                A = ImmutableList.B(b0Var);
            } else {
                A = ImmutableList.A();
            }
            listArr[i10] = A;
        }
        return a(aVar, listArr);
    }
}
