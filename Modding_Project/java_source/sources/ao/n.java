package ao;

import androidx.annotation.Nullable;
/* compiled from: DolbyVisionConfig.java */
/* loaded from: classes8.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public final int f1896a;

    /* renamed from: b  reason: collision with root package name */
    public final int f1897b;

    /* renamed from: c  reason: collision with root package name */
    public final String f1898c;

    private n(int i10, int i11, String str) {
        this.f1896a = i10;
        this.f1897b = i11;
        this.f1898c = str;
    }

    @Nullable
    public static n a(cn.b0 b0Var) {
        String str;
        String str2;
        b0Var.X(2);
        int H = b0Var.H();
        int i10 = H >> 1;
        int H2 = ((b0Var.H() >> 3) & 31) | ((H & 1) << 5);
        if (i10 != 4 && i10 != 5 && i10 != 7 && i10 != 8) {
            if (i10 == 9) {
                str = "dvav";
            } else if (i10 == 10) {
                str = "dav1";
            } else {
                return null;
            }
        } else {
            str = "dvhe";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        String str3 = ".";
        if (i10 >= 10) {
            str2 = ".";
        } else {
            str2 = ".0";
        }
        sb2.append(str2);
        sb2.append(i10);
        if (H2 < 10) {
            str3 = ".0";
        }
        sb2.append(str3);
        sb2.append(H2);
        return new n(i10, H2, sb2.toString());
    }
}
