package c7;

import androidx.annotation.Nullable;
import b7.g0;
import b7.v;
import com.google.android.exoplayer2.ParserException;
import java.util.ArrayList;
import java.util.List;
/* compiled from: AvcConfig.java */
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final List<byte[]> f3215a;

    /* renamed from: b  reason: collision with root package name */
    public final int f3216b;

    /* renamed from: c  reason: collision with root package name */
    public final int f3217c;

    /* renamed from: d  reason: collision with root package name */
    public final int f3218d;

    /* renamed from: e  reason: collision with root package name */
    public final float f3219e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final String f3220f;

    private a(List<byte[]> list, int i10, int i11, int i12, float f10, @Nullable String str) {
        this.f3215a = list;
        this.f3216b = i10;
        this.f3217c = i11;
        this.f3218d = i12;
        this.f3219e = f10;
        this.f3220f = str;
    }

    private static byte[] a(g0 g0Var) {
        int J = g0Var.J();
        int e10 = g0Var.e();
        g0Var.Q(J);
        return b7.e.d(g0Var.d(), e10, J);
    }

    public static a b(g0 g0Var) throws ParserException {
        int i10;
        int i11;
        float f10;
        String str;
        try {
            g0Var.Q(4);
            int D = (g0Var.D() & 3) + 1;
            if (D != 3) {
                ArrayList arrayList = new ArrayList();
                int D2 = g0Var.D() & 31;
                for (int i12 = 0; i12 < D2; i12++) {
                    arrayList.add(a(g0Var));
                }
                int D3 = g0Var.D();
                for (int i13 = 0; i13 < D3; i13++) {
                    arrayList.add(a(g0Var));
                }
                if (D2 > 0) {
                    v.c l10 = b7.v.l((byte[]) arrayList.get(0), D, ((byte[]) arrayList.get(0)).length);
                    int i14 = l10.f2550f;
                    int i15 = l10.f2551g;
                    float f11 = l10.f2552h;
                    str = b7.e.a(l10.f2545a, l10.f2546b, l10.f2547c);
                    i10 = i14;
                    i11 = i15;
                    f10 = f11;
                } else {
                    i10 = -1;
                    i11 = -1;
                    f10 = 1.0f;
                    str = null;
                }
                return new a(arrayList, D, i10, i11, f10, str);
            }
            throw new IllegalStateException();
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw ParserException.b("Error parsing AVC config", e10);
        }
    }
}
