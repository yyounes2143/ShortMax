package ao;

import androidx.annotation.Nullable;
import dn.g;
import io.bidmachine.media3.common.ParserException;
import java.util.Collections;
import java.util.List;
/* compiled from: HevcConfig.java */
/* loaded from: classes8.dex */
public final class c0 {

    /* renamed from: a  reason: collision with root package name */
    public final List<byte[]> f1767a;

    /* renamed from: b  reason: collision with root package name */
    public final int f1768b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1769c;

    /* renamed from: d  reason: collision with root package name */
    public final int f1770d;

    /* renamed from: e  reason: collision with root package name */
    public final int f1771e;

    /* renamed from: f  reason: collision with root package name */
    public final int f1772f;

    /* renamed from: g  reason: collision with root package name */
    public final int f1773g;

    /* renamed from: h  reason: collision with root package name */
    public final int f1774h;

    /* renamed from: i  reason: collision with root package name */
    public final int f1775i;

    /* renamed from: j  reason: collision with root package name */
    public final int f1776j;

    /* renamed from: k  reason: collision with root package name */
    public final int f1777k;

    /* renamed from: l  reason: collision with root package name */
    public final float f1778l;

    /* renamed from: m  reason: collision with root package name */
    public final int f1779m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    public final String f1780n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    public final g.k f1781o;

    private c0(List<byte[]> list, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, float f10, int i20, @Nullable String str, @Nullable g.k kVar) {
        this.f1767a = list;
        this.f1768b = i10;
        this.f1769c = i11;
        this.f1770d = i12;
        this.f1771e = i13;
        this.f1772f = i14;
        this.f1773g = i15;
        this.f1774h = i16;
        this.f1775i = i17;
        this.f1776j = i18;
        this.f1777k = i19;
        this.f1778l = f10;
        this.f1779m = i20;
        this.f1780n = str;
        this.f1781o = kVar;
    }

    public static c0 a(cn.b0 b0Var) throws ParserException {
        return b(b0Var, false, null);
    }

    private static c0 b(cn.b0 b0Var, boolean z10, @Nullable g.k kVar) throws ParserException {
        String str;
        List singletonList;
        int i10;
        int i11;
        g.C0707g t10;
        int i12;
        int i13;
        int i14;
        int i15;
        try {
            if (z10) {
                b0Var.X(4);
            } else {
                b0Var.X(21);
            }
            int H = b0Var.H() & 3;
            int H2 = b0Var.H();
            int f10 = b0Var.f();
            int i16 = 0;
            int i17 = 0;
            for (int i18 = 0; i18 < H2; i18++) {
                b0Var.X(1);
                int P = b0Var.P();
                for (int i19 = 0; i19 < P; i19++) {
                    int P2 = b0Var.P();
                    i17 += P2 + 4;
                    b0Var.X(P2);
                }
            }
            b0Var.W(f10);
            byte[] bArr = new byte[i17];
            g.k kVar2 = kVar;
            int i20 = -1;
            int i21 = -1;
            int i22 = -1;
            int i23 = -1;
            int i24 = -1;
            int i25 = -1;
            int i26 = -1;
            int i27 = -1;
            int i28 = -1;
            int i29 = -1;
            float f11 = 1.0f;
            String str2 = null;
            int i30 = 0;
            int i31 = 0;
            while (i30 < H2) {
                int H3 = b0Var.H() & 63;
                int P3 = b0Var.P();
                int i32 = i16;
                g.k kVar3 = kVar2;
                while (i32 < P3) {
                    int P4 = b0Var.P();
                    byte[] bArr2 = dn.g.f50462a;
                    int i33 = H2;
                    System.arraycopy(bArr2, i16, bArr, i31, bArr2.length);
                    int length = i31 + bArr2.length;
                    System.arraycopy(b0Var.e(), b0Var.f(), bArr, length, P4);
                    if (H3 == 32 && i32 == 0) {
                        kVar3 = dn.g.y(bArr, length, length + P4);
                        i11 = i16;
                        i10 = P3;
                    } else if (H3 == 33 && i32 == 0) {
                        g.h u10 = dn.g.u(bArr, length, length + P4, kVar3);
                        int i34 = u10.f50496b + 1;
                        int i35 = u10.f50502h;
                        int i36 = u10.f50503i;
                        i23 = u10.f50499e + 8;
                        i24 = u10.f50500f + 8;
                        int i37 = u10.f50506l;
                        int i38 = u10.f50507m;
                        int i39 = u10.f50508n;
                        float f12 = u10.f50504j;
                        int i40 = u10.f50505k;
                        g.c cVar = u10.f50497c;
                        if (cVar != null) {
                            i12 = i40;
                            i13 = i34;
                            i10 = P3;
                            i14 = i36;
                            i15 = i35;
                            str2 = cn.i.f(cVar.f50471a, cVar.f50472b, cVar.f50473c, cVar.f50474d, cVar.f50475e, cVar.f50476f);
                        } else {
                            i12 = i40;
                            i13 = i34;
                            i10 = P3;
                            i14 = i36;
                            i15 = i35;
                        }
                        i20 = i13;
                        i21 = i15;
                        i11 = 0;
                        i25 = i37;
                        i22 = i14;
                        i29 = i12;
                        f11 = f12;
                        i27 = i39;
                        i26 = i38;
                    } else {
                        i10 = P3;
                        if (H3 == 39 && i32 == 0 && (t10 = dn.g.t(bArr, length, length + P4)) != null && kVar3 != null) {
                            i11 = 0;
                            if (t10.f50489d == kVar3.f50515b.get(0).f50467b) {
                                i28 = 4;
                            } else {
                                i28 = 5;
                            }
                        } else {
                            i11 = 0;
                        }
                    }
                    i31 = length + P4;
                    b0Var.X(P4);
                    i32++;
                    i16 = i11;
                    H2 = i33;
                    P3 = i10;
                }
                i30++;
                kVar2 = kVar3;
            }
            if (i17 == 0) {
                singletonList = Collections.emptyList();
            } else {
                singletonList = Collections.singletonList(bArr);
            }
            return new c0(singletonList, H + 1, i20, i21, i22, i23, i24, i25, i26, i27, i28, f11, i29, str2, kVar2);
        } catch (ArrayIndexOutOfBoundsException e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Error parsing");
            if (z10) {
                str = "L-HEVC config";
            } else {
                str = "HEVC config";
            }
            sb2.append(str);
            throw ParserException.b(sb2.toString(), e10);
        }
    }

    public static c0 c(cn.b0 b0Var, g.k kVar) throws ParserException {
        return b(b0Var, true, kVar);
    }
}
