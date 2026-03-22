package vo;

import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import cn.b0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import io.bidmachine.media3.common.a;
import zm.t;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MetadataUtil.java */
/* loaded from: classes8.dex */
public final class j {
    @Nullable
    public static dn.b a(zm.t tVar, String str) {
        for (int i10 = 0; i10 < tVar.e(); i10++) {
            t.a d10 = tVar.d(i10);
            if (d10 instanceof dn.b) {
                dn.b bVar = (dn.b) d10;
                if (bVar.f50447a.equals(str)) {
                    return bVar;
                }
            }
        }
        return null;
    }

    @Nullable
    private static po.e b(int i10, b0 b0Var) {
        int q10 = b0Var.q();
        if (b0Var.q() == 1684108385) {
            b0Var.X(8);
            String C = b0Var.C(q10 - 16);
            return new po.e(C.LANGUAGE_UNDETERMINED, C, C);
        }
        cn.r.h("MetadataUtil", "Failed to parse comment attribute: " + dn.d.a(i10));
        return null;
    }

    @Nullable
    private static po.a c(b0 b0Var) {
        String str;
        int q10 = b0Var.q();
        if (b0Var.q() == 1684108385) {
            int o10 = b.o(b0Var.q());
            if (o10 == 13) {
                str = "image/jpeg";
            } else if (o10 == 14) {
                str = "image/png";
            } else {
                str = null;
            }
            if (str == null) {
                cn.r.h("MetadataUtil", "Unrecognized cover art flags: " + o10);
                return null;
            }
            b0Var.X(4);
            int i10 = q10 - 16;
            byte[] bArr = new byte[i10];
            b0Var.l(bArr, 0, i10);
            return new po.a(str, null, 3, bArr);
        }
        cn.r.h("MetadataUtil", "Failed to parse cover art attribute");
        return null;
    }

    @Nullable
    public static t.a d(b0 b0Var) {
        int f10 = b0Var.f() + b0Var.q();
        int q10 = b0Var.q();
        int i10 = (q10 >> 24) & 255;
        try {
            if (i10 != 169 && i10 != 253) {
                if (q10 == 1735291493) {
                    return j(b0Var);
                }
                if (q10 == 1684632427) {
                    return e(q10, "TPOS", b0Var);
                }
                if (q10 == 1953655662) {
                    return e(q10, "TRCK", b0Var);
                }
                if (q10 == 1953329263) {
                    return g(q10, "TBPM", b0Var, true, false);
                }
                if (q10 == 1668311404) {
                    return g(q10, "TCMP", b0Var, true, true);
                }
                if (q10 == 1668249202) {
                    return c(b0Var);
                }
                if (q10 == 1631670868) {
                    return k(q10, "TPE2", b0Var);
                }
                if (q10 == 1936682605) {
                    return k(q10, "TSOT", b0Var);
                }
                if (q10 == 1936679276) {
                    return k(q10, "TSOA", b0Var);
                }
                if (q10 == 1936679282) {
                    return k(q10, "TSOP", b0Var);
                }
                if (q10 == 1936679265) {
                    return k(q10, "TSO2", b0Var);
                }
                if (q10 == 1936679791) {
                    return k(q10, "TSOC", b0Var);
                }
                if (q10 == 1920233063) {
                    return g(q10, "ITUNESADVISORY", b0Var, false, false);
                }
                if (q10 == 1885823344) {
                    return g(q10, "ITUNESGAPLESS", b0Var, false, true);
                }
                if (q10 == 1936683886) {
                    return k(q10, "TVSHOWSORT", b0Var);
                }
                if (q10 == 1953919848) {
                    return k(q10, "TVSHOW", b0Var);
                }
                if (q10 == 757935405) {
                    return h(b0Var, f10);
                }
            } else {
                int i11 = 16777215 & q10;
                if (i11 == 6516084) {
                    return b(q10, b0Var);
                }
                if (i11 != 7233901 && i11 != 7631467) {
                    if (i11 != 6516589 && i11 != 7828084) {
                        if (i11 == 6578553) {
                            return k(q10, "TDRC", b0Var);
                        }
                        if (i11 == 4280916) {
                            return k(q10, "TPE1", b0Var);
                        }
                        if (i11 == 7630703) {
                            return k(q10, "TSSE", b0Var);
                        }
                        if (i11 == 6384738) {
                            return k(q10, "TALB", b0Var);
                        }
                        if (i11 == 7108978) {
                            return k(q10, "USLT", b0Var);
                        }
                        if (i11 == 6776174) {
                            return k(q10, "TCON", b0Var);
                        }
                        if (i11 == 6779504) {
                            return k(q10, "TIT1", b0Var);
                        }
                    } else {
                        return k(q10, "TCOM", b0Var);
                    }
                } else {
                    return k(q10, "TIT2", b0Var);
                }
            }
            cn.r.b("MetadataUtil", "Skipped unknown metadata entry: " + dn.d.a(q10));
            b0Var.W(f10);
            return null;
        } finally {
            b0Var.W(f10);
        }
    }

    @Nullable
    private static po.n e(int i10, String str, b0 b0Var) {
        int q10 = b0Var.q();
        if (b0Var.q() == 1684108385 && q10 >= 22) {
            b0Var.X(10);
            int P = b0Var.P();
            if (P > 0) {
                String str2 = "" + P;
                int P2 = b0Var.P();
                if (P2 > 0) {
                    str2 = str2 + DomExceptionUtils.SEPARATOR + P2;
                }
                return new po.n(str, null, ImmutableList.B(str2));
            }
        }
        cn.r.h("MetadataUtil", "Failed to parse index/count attribute: " + dn.d.a(i10));
        return null;
    }

    private static int f(b0 b0Var) {
        int q10 = b0Var.q();
        if (b0Var.q() == 1684108385) {
            b0Var.X(8);
            int i10 = q10 - 16;
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4 && (b0Var.j() & 128) == 0) {
                            return b0Var.L();
                        }
                    } else {
                        return b0Var.K();
                    }
                } else {
                    return b0Var.P();
                }
            } else {
                return b0Var.H();
            }
        }
        cn.r.h("MetadataUtil", "Failed to parse data atom to int");
        return -1;
    }

    @Nullable
    private static po.i g(int i10, String str, b0 b0Var, boolean z10, boolean z11) {
        int f10 = f(b0Var);
        if (z11) {
            f10 = Math.min(1, f10);
        }
        if (f10 >= 0) {
            if (z10) {
                return new po.n(str, null, ImmutableList.B(Integer.toString(f10)));
            }
            return new po.e(C.LANGUAGE_UNDETERMINED, str, Integer.toString(f10));
        }
        cn.r.h("MetadataUtil", "Failed to parse uint8 attribute: " + dn.d.a(i10));
        return null;
    }

    @Nullable
    private static po.i h(b0 b0Var, int i10) {
        String str = null;
        String str2 = null;
        int i11 = -1;
        int i12 = -1;
        while (b0Var.f() < i10) {
            int f10 = b0Var.f();
            int q10 = b0Var.q();
            int q11 = b0Var.q();
            b0Var.X(4);
            if (q11 == 1835360622) {
                str = b0Var.C(q10 - 12);
            } else if (q11 == 1851878757) {
                str2 = b0Var.C(q10 - 12);
            } else {
                if (q11 == 1684108385) {
                    i11 = f10;
                    i12 = q10;
                }
                b0Var.X(q10 - 12);
            }
        }
        if (str == null || str2 == null || i11 == -1) {
            return null;
        }
        b0Var.W(i11);
        b0Var.X(16);
        return new po.k(str, str2, b0Var.C(i12 - 16));
    }

    @Nullable
    public static dn.b i(b0 b0Var, int i10, String str) {
        while (true) {
            int f10 = b0Var.f();
            if (f10 < i10) {
                int q10 = b0Var.q();
                if (b0Var.q() == 1684108385) {
                    int q11 = b0Var.q();
                    int q12 = b0Var.q();
                    int i11 = q10 - 16;
                    byte[] bArr = new byte[i11];
                    b0Var.l(bArr, 0, i11);
                    return new dn.b(str, bArr, q12, q11);
                }
                b0Var.W(f10 + q10);
            } else {
                return null;
            }
        }
    }

    @Nullable
    private static po.n j(b0 b0Var) {
        String a10 = po.j.a(f(b0Var) - 1);
        if (a10 != null) {
            return new po.n("TCON", null, ImmutableList.B(a10));
        }
        cn.r.h("MetadataUtil", "Failed to parse standard genre code");
        return null;
    }

    @Nullable
    private static po.n k(int i10, String str, b0 b0Var) {
        int q10 = b0Var.q();
        if (b0Var.q() == 1684108385) {
            b0Var.X(8);
            return new po.n(str, null, ImmutableList.B(b0Var.C(q10 - 16)));
        }
        cn.r.h("MetadataUtil", "Failed to parse text attribute: " + dn.d.a(i10));
        return null;
    }

    public static void l(int i10, ao.b0 b0Var, a.b bVar) {
        if (i10 == 1 && b0Var.a()) {
            bVar.Z(b0Var.f1753a).a0(b0Var.f1754b);
        }
    }

    public static void m(int i10, @Nullable zm.t tVar, a.b bVar, @Nullable zm.t tVar2, zm.t... tVarArr) {
        if (tVar2 == null) {
            tVar2 = new zm.t(new t.a[0]);
        }
        if (tVar != null) {
            for (int i11 = 0; i11 < tVar.e(); i11++) {
                t.a d10 = tVar.d(i11);
                if (d10 instanceof dn.b) {
                    dn.b bVar2 = (dn.b) d10;
                    if (bVar2.f50447a.equals("com.android.capture.fps")) {
                        if (i10 == 2) {
                            tVar2 = tVar2.a(bVar2);
                        }
                    } else {
                        tVar2 = tVar2.a(bVar2);
                    }
                }
            }
        }
        for (zm.t tVar3 : tVarArr) {
            tVar2 = tVar2.b(tVar3);
        }
        if (tVar2.e() > 0) {
            bVar.n0(tVar2);
        }
    }
}
