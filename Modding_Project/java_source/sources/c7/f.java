package c7;

import androidx.annotation.Nullable;
import b7.g0;
import b7.v;
import com.google.android.exoplayer2.ParserException;
import java.util.Collections;
import java.util.List;
/* compiled from: HevcConfig.java */
/* loaded from: classes4.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final List<byte[]> f3245a;

    /* renamed from: b  reason: collision with root package name */
    public final int f3246b;

    /* renamed from: c  reason: collision with root package name */
    public final int f3247c;

    /* renamed from: d  reason: collision with root package name */
    public final int f3248d;

    /* renamed from: e  reason: collision with root package name */
    public final float f3249e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final String f3250f;

    private f(List<byte[]> list, int i10, int i11, int i12, float f10, @Nullable String str) {
        this.f3245a = list;
        this.f3246b = i10;
        this.f3247c = i11;
        this.f3248d = i12;
        this.f3249e = f10;
        this.f3250f = str;
    }

    public static f a(g0 g0Var) throws ParserException {
        List singletonList;
        int i10;
        int i11;
        try {
            g0Var.Q(21);
            int D = g0Var.D() & 3;
            int D2 = g0Var.D();
            int e10 = g0Var.e();
            int i12 = 0;
            int i13 = 0;
            for (int i14 = 0; i14 < D2; i14++) {
                g0Var.Q(1);
                int J = g0Var.J();
                for (int i15 = 0; i15 < J; i15++) {
                    int J2 = g0Var.J();
                    i13 += J2 + 4;
                    g0Var.Q(J2);
                }
            }
            g0Var.P(e10);
            byte[] bArr = new byte[i13];
            int i16 = -1;
            int i17 = -1;
            float f10 = 1.0f;
            String str = null;
            int i18 = 0;
            int i19 = 0;
            while (i18 < D2) {
                int D3 = g0Var.D() & 63;
                int J3 = g0Var.J();
                int i20 = i12;
                while (i20 < J3) {
                    int J4 = g0Var.J();
                    byte[] bArr2 = b7.v.f2528a;
                    int i21 = D2;
                    System.arraycopy(bArr2, i12, bArr, i19, bArr2.length);
                    int length = i19 + bArr2.length;
                    System.arraycopy(g0Var.d(), g0Var.e(), bArr, length, J4);
                    if (D3 == 33 && i20 == 0) {
                        v.a h10 = b7.v.h(bArr, length, length + J4);
                        int i22 = h10.f2539h;
                        i17 = h10.f2540i;
                        f10 = h10.f2541j;
                        i10 = D3;
                        i11 = J3;
                        i16 = i22;
                        str = b7.e.c(h10.f2532a, h10.f2533b, h10.f2534c, h10.f2535d, h10.f2536e, h10.f2537f);
                    } else {
                        i10 = D3;
                        i11 = J3;
                    }
                    i19 = length + J4;
                    g0Var.Q(J4);
                    i20++;
                    D2 = i21;
                    D3 = i10;
                    J3 = i11;
                    i12 = 0;
                }
                i18++;
                i12 = 0;
            }
            if (i13 == 0) {
                singletonList = Collections.emptyList();
            } else {
                singletonList = Collections.singletonList(bArr);
            }
            return new f(singletonList, D + 1, i16, i17, f10, str);
        } catch (ArrayIndexOutOfBoundsException e11) {
            throw ParserException.b("Error parsing HEVC config", e11);
        }
    }
}
