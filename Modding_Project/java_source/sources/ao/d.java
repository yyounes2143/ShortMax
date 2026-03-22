package ao;

import androidx.annotation.Nullable;
import dn.g;
import io.bidmachine.media3.common.ParserException;
import java.util.ArrayList;
import java.util.List;
/* compiled from: AvcConfig.java */
/* loaded from: classes8.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final List<byte[]> f1782a;

    /* renamed from: b  reason: collision with root package name */
    public final int f1783b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1784c;

    /* renamed from: d  reason: collision with root package name */
    public final int f1785d;

    /* renamed from: e  reason: collision with root package name */
    public final int f1786e;

    /* renamed from: f  reason: collision with root package name */
    public final int f1787f;

    /* renamed from: g  reason: collision with root package name */
    public final int f1788g;

    /* renamed from: h  reason: collision with root package name */
    public final int f1789h;

    /* renamed from: i  reason: collision with root package name */
    public final int f1790i;

    /* renamed from: j  reason: collision with root package name */
    public final int f1791j;

    /* renamed from: k  reason: collision with root package name */
    public final float f1792k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public final String f1793l;

    private d(List<byte[]> list, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, float f10, @Nullable String str) {
        this.f1782a = list;
        this.f1783b = i10;
        this.f1784c = i11;
        this.f1785d = i12;
        this.f1786e = i13;
        this.f1787f = i14;
        this.f1788g = i15;
        this.f1789h = i16;
        this.f1790i = i17;
        this.f1791j = i18;
        this.f1792k = f10;
        this.f1793l = str;
    }

    private static byte[] a(cn.b0 b0Var) {
        int P = b0Var.P();
        int f10 = b0Var.f();
        b0Var.X(P);
        return cn.i.g(b0Var.e(), f10, P);
    }

    public static d b(cn.b0 b0Var) throws ParserException {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        float f10;
        String str;
        int i17;
        try {
            b0Var.X(4);
            int H = (b0Var.H() & 3) + 1;
            if (H != 3) {
                ArrayList arrayList = new ArrayList();
                int H2 = b0Var.H() & 31;
                for (int i18 = 0; i18 < H2; i18++) {
                    arrayList.add(a(b0Var));
                }
                int H3 = b0Var.H();
                for (int i19 = 0; i19 < H3; i19++) {
                    arrayList.add(a(b0Var));
                }
                if (H2 > 0) {
                    g.m C = dn.g.C((byte[]) arrayList.get(0), dn.g.f50462a.length, ((byte[]) arrayList.get(0)).length);
                    int i20 = C.f50527f;
                    int i21 = C.f50528g;
                    int i22 = C.f50538q;
                    int i23 = C.f50539r;
                    int i24 = C.f50540s;
                    int i25 = C.f50541t;
                    float f11 = C.f50529h;
                    str = cn.i.d(C.f50522a, C.f50523b, C.f50524c);
                    i16 = i24;
                    i17 = i25;
                    f10 = f11;
                    i13 = C.f50531j + 8;
                    i14 = i22;
                    i15 = i23;
                    i10 = i20;
                    i11 = i21;
                    i12 = C.f50530i + 8;
                } else {
                    i10 = -1;
                    i11 = -1;
                    i12 = -1;
                    i13 = -1;
                    i14 = -1;
                    i15 = -1;
                    i16 = -1;
                    f10 = 1.0f;
                    str = null;
                    i17 = 16;
                }
                return new d(arrayList, H, i10, i11, i12, i13, i14, i15, i16, i17, f10, str);
            }
            throw new IllegalStateException();
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw ParserException.b("Error parsing AVC config", e10);
        }
    }
}
