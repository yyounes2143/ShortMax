package c7;

import androidx.annotation.Nullable;
import b7.g0;
/* compiled from: DolbyVisionConfig.java */
/* loaded from: classes4.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final int f3228a;

    /* renamed from: b  reason: collision with root package name */
    public final int f3229b;

    /* renamed from: c  reason: collision with root package name */
    public final String f3230c;

    private d(int i10, int i11, String str) {
        this.f3228a = i10;
        this.f3229b = i11;
        this.f3230c = str;
    }

    @Nullable
    public static d a(g0 g0Var) {
        String str;
        g0Var.Q(2);
        int D = g0Var.D();
        int i10 = D >> 1;
        int D2 = ((g0Var.D() >> 3) & 31) | ((D & 1) << 5);
        if (i10 != 4 && i10 != 5 && i10 != 7) {
            if (i10 == 8) {
                str = "hev1";
            } else if (i10 == 9) {
                str = "avc3";
            } else {
                return null;
            }
        } else {
            str = "dvhe";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        String str2 = ".0";
        sb2.append(".0");
        sb2.append(i10);
        if (D2 >= 10) {
            str2 = ".";
        }
        sb2.append(str2);
        sb2.append(D2);
        return new d(i10, D2, sb2.toString());
    }
}
