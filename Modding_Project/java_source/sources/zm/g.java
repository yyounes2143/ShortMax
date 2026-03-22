package zm;

import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import cn.m0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
/* compiled from: ColorInfo.java */
/* loaded from: classes8.dex */
public final class g {

    /* renamed from: h  reason: collision with root package name */
    public static final g f71934h = new b().d(1).c(2).e(3).a();

    /* renamed from: i  reason: collision with root package name */
    public static final g f71935i = new b().d(1).c(1).e(2).a();

    /* renamed from: j  reason: collision with root package name */
    private static final String f71936j = m0.C0(0);

    /* renamed from: k  reason: collision with root package name */
    private static final String f71937k = m0.C0(1);

    /* renamed from: l  reason: collision with root package name */
    private static final String f71938l = m0.C0(2);

    /* renamed from: m  reason: collision with root package name */
    private static final String f71939m = m0.C0(3);

    /* renamed from: n  reason: collision with root package name */
    private static final String f71940n = m0.C0(4);

    /* renamed from: o  reason: collision with root package name */
    private static final String f71941o = m0.C0(5);

    /* renamed from: a  reason: collision with root package name */
    public final int f71942a;

    /* renamed from: b  reason: collision with root package name */
    public final int f71943b;

    /* renamed from: c  reason: collision with root package name */
    public final int f71944c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f71945d;

    /* renamed from: e  reason: collision with root package name */
    public final int f71946e;

    /* renamed from: f  reason: collision with root package name */
    public final int f71947f;

    /* renamed from: g  reason: collision with root package name */
    private int f71948g;

    /* compiled from: ColorInfo.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private int f71949a;

        /* renamed from: b  reason: collision with root package name */
        private int f71950b;

        /* renamed from: c  reason: collision with root package name */
        private int f71951c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private byte[] f71952d;

        /* renamed from: e  reason: collision with root package name */
        private int f71953e;

        /* renamed from: f  reason: collision with root package name */
        private int f71954f;

        public g a() {
            return new g(this.f71949a, this.f71950b, this.f71951c, this.f71952d, this.f71953e, this.f71954f);
        }

        public b b(int i10) {
            this.f71954f = i10;
            return this;
        }

        public b c(int i10) {
            this.f71950b = i10;
            return this;
        }

        public b d(int i10) {
            this.f71949a = i10;
            return this;
        }

        public b e(int i10) {
            this.f71951c = i10;
            return this;
        }

        public b f(@Nullable byte[] bArr) {
            this.f71952d = bArr;
            return this;
        }

        public b g(int i10) {
            this.f71953e = i10;
            return this;
        }

        public b() {
            this.f71949a = -1;
            this.f71950b = -1;
            this.f71951c = -1;
            this.f71953e = -1;
            this.f71954f = -1;
        }

        private b(g gVar) {
            this.f71949a = gVar.f71942a;
            this.f71950b = gVar.f71943b;
            this.f71951c = gVar.f71944c;
            this.f71952d = gVar.f71945d;
            this.f71953e = gVar.f71946e;
            this.f71954f = gVar.f71947f;
        }
    }

    private static String b(int i10) {
        if (i10 != -1) {
            return i10 + "bit Chroma";
        }
        return "NA";
    }

    private static String c(int i10) {
        if (i10 != -1) {
            if (i10 != 1) {
                if (i10 != 2) {
                    return "Undefined color range " + i10;
                }
                return "Limited range";
            }
            return "Full range";
        }
        return "Unset color range";
    }

    private static String d(int i10) {
        if (i10 != -1) {
            if (i10 != 6) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        return "Undefined color space " + i10;
                    }
                    return "BT601";
                }
                return "BT709";
            }
            return "BT2020";
        }
        return "Unset color space";
    }

    private static String e(int i10) {
        if (i10 != -1) {
            if (i10 != 10) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            if (i10 != 6) {
                                if (i10 != 7) {
                                    return "Undefined color transfer " + i10;
                                }
                                return "HLG";
                            }
                            return "ST2084 PQ";
                        }
                        return "SDR SMPTE 170M";
                    }
                    return "sRGB";
                }
                return "Linear";
            }
            return "Gamma 2.2";
        }
        return "Unset color transfer";
    }

    public static boolean h(@Nullable g gVar) {
        int i10;
        int i11;
        int i12;
        int i13;
        if (gVar == null) {
            return true;
        }
        int i14 = gVar.f71942a;
        if ((i14 == -1 || i14 == 1 || i14 == 2) && (((i10 = gVar.f71943b) == -1 || i10 == 2) && (((i11 = gVar.f71944c) == -1 || i11 == 3) && gVar.f71945d == null && (((i12 = gVar.f71947f) == -1 || i12 == 8) && ((i13 = gVar.f71946e) == -1 || i13 == 8))))) {
            return true;
        }
        return false;
    }

    public static int j(int i10) {
        if (i10 == 1) {
            return 1;
        }
        if (i10 == 9) {
            return 6;
        }
        if (i10 != 4 && i10 != 5 && i10 != 6 && i10 != 7) {
            return -1;
        }
        return 2;
    }

    public static int k(int i10) {
        if (i10 != 1) {
            if (i10 != 4) {
                if (i10 != 13) {
                    if (i10 == 16) {
                        return 6;
                    }
                    if (i10 == 18) {
                        return 7;
                    }
                    if (i10 != 6 && i10 != 7) {
                        return -1;
                    }
                    return 3;
                }
                return 2;
            }
            return 10;
        }
        return 3;
    }

    private static String l(int i10) {
        if (i10 != -1) {
            return i10 + "bit Luma";
        }
        return "NA";
    }

    public b a() {
        return new b();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g.class != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        if (this.f71942a == gVar.f71942a && this.f71943b == gVar.f71943b && this.f71944c == gVar.f71944c && Arrays.equals(this.f71945d, gVar.f71945d) && this.f71946e == gVar.f71946e && this.f71947f == gVar.f71947f) {
            return true;
        }
        return false;
    }

    public boolean f() {
        if (this.f71946e != -1 && this.f71947f != -1) {
            return true;
        }
        return false;
    }

    public boolean g() {
        if (this.f71942a != -1 && this.f71943b != -1 && this.f71944c != -1) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (this.f71948g == 0) {
            this.f71948g = ((((((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f71942a) * 31) + this.f71943b) * 31) + this.f71944c) * 31) + Arrays.hashCode(this.f71945d)) * 31) + this.f71946e) * 31) + this.f71947f;
        }
        return this.f71948g;
    }

    public boolean i() {
        if (!f() && !g()) {
            return false;
        }
        return true;
    }

    public String m() {
        String str;
        String str2;
        if (g()) {
            str = m0.G("%s/%s/%s", d(this.f71942a), c(this.f71943b), e(this.f71944c));
        } else {
            str = "NA/NA/NA";
        }
        if (f()) {
            str2 = this.f71946e + DomExceptionUtils.SEPARATOR + this.f71947f;
        } else {
            str2 = "NA/NA";
        }
        return str + DomExceptionUtils.SEPARATOR + str2;
    }

    public String toString() {
        boolean z10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ColorInfo(");
        sb2.append(d(this.f71942a));
        sb2.append(", ");
        sb2.append(c(this.f71943b));
        sb2.append(", ");
        sb2.append(e(this.f71944c));
        sb2.append(", ");
        if (this.f71945d != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        sb2.append(z10);
        sb2.append(", ");
        sb2.append(l(this.f71946e));
        sb2.append(", ");
        sb2.append(b(this.f71947f));
        sb2.append(")");
        return sb2.toString();
    }

    private g(int i10, int i11, int i12, @Nullable byte[] bArr, int i13, int i14) {
        this.f71942a = i10;
        this.f71943b = i11;
        this.f71944c = i12;
        this.f71945d = bArr;
        this.f71946e = i13;
        this.f71947f = i14;
    }
}
