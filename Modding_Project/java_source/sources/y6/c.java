package y6;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import b7.g0;
import b7.q;
import b7.s0;
import com.bytedance.vodsetting.Module;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: WebvttCssParser.java */
/* loaded from: classes4.dex */
final class c {

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f70681c = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f70682d = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");

    /* renamed from: a  reason: collision with root package name */
    private final g0 f70683a = new g0();

    /* renamed from: b  reason: collision with root package name */
    private final StringBuilder f70684b = new StringBuilder();

    private void a(d dVar, String str) {
        if ("".equals(str)) {
            return;
        }
        int indexOf = str.indexOf(91);
        if (indexOf != -1) {
            Matcher matcher = f70681c.matcher(str.substring(indexOf));
            if (matcher.matches()) {
                dVar.z((String) b7.a.e(matcher.group(1)));
            }
            str = str.substring(0, indexOf);
        }
        String[] H0 = s0.H0(str, "\\.");
        String str2 = H0[0];
        int indexOf2 = str2.indexOf(35);
        if (indexOf2 != -1) {
            dVar.y(str2.substring(0, indexOf2));
            dVar.x(str2.substring(indexOf2 + 1));
        } else {
            dVar.y(str2);
        }
        if (H0.length > 1) {
            dVar.w((String[]) s0.B0(H0, 1, H0.length));
        }
    }

    private static boolean b(g0 g0Var) {
        int e10 = g0Var.e();
        int f10 = g0Var.f();
        byte[] d10 = g0Var.d();
        if (e10 + 2 <= f10) {
            int i10 = e10 + 1;
            if (d10[e10] == 47) {
                int i11 = e10 + 2;
                if (d10[i10] != 42) {
                    return false;
                }
                while (true) {
                    int i12 = i11 + 1;
                    if (i12 < f10) {
                        if (((char) d10[i11]) == '*' && ((char) d10[i12]) == '/') {
                            i11 += 2;
                            f10 = i11;
                        } else {
                            i11 = i12;
                        }
                    } else {
                        g0Var.Q(f10 - g0Var.e());
                        return true;
                    }
                }
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    private static boolean c(g0 g0Var) {
        char k10 = k(g0Var, g0Var.e());
        if (k10 != '\t' && k10 != '\n' && k10 != '\f' && k10 != '\r' && k10 != ' ') {
            return false;
        }
        g0Var.Q(1);
        return true;
    }

    private static void e(String str, d dVar) {
        Matcher matcher = f70682d.matcher(h7.a.e(str));
        if (!matcher.matches()) {
            q.i("WebvttCssParser", "Invalid font-size: '" + str + "'.");
            return;
        }
        String str2 = (String) b7.a.e(matcher.group(2));
        str2.hashCode();
        char c10 = 65535;
        switch (str2.hashCode()) {
            case 37:
                if (str2.equals("%")) {
                    c10 = 0;
                    break;
                }
                break;
            case 3240:
                if (str2.equals("em")) {
                    c10 = 1;
                    break;
                }
                break;
            case 3592:
                if (str2.equals("px")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                dVar.t(3);
                break;
            case 1:
                dVar.t(2);
                break;
            case 2:
                dVar.t(1);
                break;
            default:
                throw new IllegalStateException();
        }
        dVar.s(Float.parseFloat((String) b7.a.e(matcher.group(1))));
    }

    private static String f(g0 g0Var, StringBuilder sb2) {
        boolean z10 = false;
        sb2.setLength(0);
        int e10 = g0Var.e();
        int f10 = g0Var.f();
        while (e10 < f10 && !z10) {
            char c10 = (char) g0Var.d()[e10];
            if ((c10 < 'A' || c10 > 'Z') && ((c10 < 'a' || c10 > 'z') && ((c10 < '0' || c10 > '9') && c10 != '#' && c10 != '-' && c10 != '.' && c10 != '_'))) {
                z10 = true;
            } else {
                e10++;
                sb2.append(c10);
            }
        }
        g0Var.Q(e10 - g0Var.e());
        return sb2.toString();
    }

    @Nullable
    static String g(g0 g0Var, StringBuilder sb2) {
        n(g0Var);
        if (g0Var.a() == 0) {
            return null;
        }
        String f10 = f(g0Var, sb2);
        if (!"".equals(f10)) {
            return f10;
        }
        return "" + ((char) g0Var.D());
    }

    @Nullable
    private static String h(g0 g0Var, StringBuilder sb2) {
        StringBuilder sb3 = new StringBuilder();
        boolean z10 = false;
        while (!z10) {
            int e10 = g0Var.e();
            String g10 = g(g0Var, sb2);
            if (g10 == null) {
                return null;
            }
            if (!"}".equals(g10) && !";".equals(g10)) {
                sb3.append(g10);
            } else {
                g0Var.P(e10);
                z10 = true;
            }
        }
        return sb3.toString();
    }

    @Nullable
    private static String i(g0 g0Var, StringBuilder sb2) {
        String str;
        n(g0Var);
        if (g0Var.a() < 5 || !"::cue".equals(g0Var.A(5))) {
            return null;
        }
        int e10 = g0Var.e();
        String g10 = g(g0Var, sb2);
        if (g10 == null) {
            return null;
        }
        if ("{".equals(g10)) {
            g0Var.P(e10);
            return "";
        }
        if ("(".equals(g10)) {
            str = l(g0Var);
        } else {
            str = null;
        }
        if (!")".equals(g(g0Var, sb2))) {
            return null;
        }
        return str;
    }

    private static void j(g0 g0Var, d dVar, StringBuilder sb2) {
        n(g0Var);
        String f10 = f(g0Var, sb2);
        if ("".equals(f10) || !":".equals(g(g0Var, sb2))) {
            return;
        }
        n(g0Var);
        String h10 = h(g0Var, sb2);
        if (h10 != null && !"".equals(h10)) {
            int e10 = g0Var.e();
            String g10 = g(g0Var, sb2);
            if (!";".equals(g10)) {
                if ("}".equals(g10)) {
                    g0Var.P(e10);
                } else {
                    return;
                }
            }
            if ("color".equals(f10)) {
                dVar.q(b7.f.b(h10));
            } else if ("background-color".equals(f10)) {
                dVar.n(b7.f.b(h10));
            } else {
                boolean z10 = true;
                if ("ruby-position".equals(f10)) {
                    if ("over".equals(h10)) {
                        dVar.v(1);
                    } else if ("under".equals(h10)) {
                        dVar.v(2);
                    }
                } else if ("text-combine-upright".equals(f10)) {
                    if (!Module.ALL.equals(h10) && !h10.startsWith("digits")) {
                        z10 = false;
                    }
                    dVar.p(z10);
                } else if ("text-decoration".equals(f10)) {
                    if (TtmlNode.UNDERLINE.equals(h10)) {
                        dVar.A(true);
                    }
                } else if ("font-family".equals(f10)) {
                    dVar.r(h10);
                } else if ("font-weight".equals(f10)) {
                    if (TtmlNode.BOLD.equals(h10)) {
                        dVar.o(true);
                    }
                } else if ("font-style".equals(f10)) {
                    if (TtmlNode.ITALIC.equals(h10)) {
                        dVar.u(true);
                    }
                } else if ("font-size".equals(f10)) {
                    e(h10, dVar);
                }
            }
        }
    }

    private static char k(g0 g0Var, int i10) {
        return (char) g0Var.d()[i10];
    }

    private static String l(g0 g0Var) {
        int e10 = g0Var.e();
        int f10 = g0Var.f();
        boolean z10 = false;
        while (e10 < f10 && !z10) {
            int i10 = e10 + 1;
            if (((char) g0Var.d()[e10]) == ')') {
                z10 = true;
            } else {
                z10 = false;
            }
            e10 = i10;
        }
        return g0Var.A((e10 - 1) - g0Var.e()).trim();
    }

    static void m(g0 g0Var) {
        do {
        } while (!TextUtils.isEmpty(g0Var.p()));
    }

    static void n(g0 g0Var) {
        while (true) {
            for (boolean z10 = true; g0Var.a() > 0 && z10; z10 = false) {
                if (!c(g0Var) && !b(g0Var)) {
                }
            }
            return;
        }
    }

    public List<d> d(g0 g0Var) {
        boolean z10;
        this.f70684b.setLength(0);
        int e10 = g0Var.e();
        m(g0Var);
        this.f70683a.N(g0Var.d(), g0Var.e());
        this.f70683a.P(e10);
        ArrayList arrayList = new ArrayList();
        while (true) {
            String i10 = i(this.f70683a, this.f70684b);
            if (i10 != null) {
                if (!"{".equals(g(this.f70683a, this.f70684b))) {
                    return arrayList;
                }
                d dVar = new d();
                a(dVar, i10);
                String str = null;
                boolean z11 = false;
                while (!z11) {
                    int e11 = this.f70683a.e();
                    String g10 = g(this.f70683a, this.f70684b);
                    if (g10 != null && !"}".equals(g10)) {
                        z10 = false;
                    } else {
                        z10 = true;
                    }
                    if (!z10) {
                        this.f70683a.P(e11);
                        j(this.f70683a, dVar, this.f70684b);
                    }
                    str = g10;
                    z11 = z10;
                }
                if ("}".equals(str)) {
                    arrayList.add(dVar);
                }
            } else {
                return arrayList;
            }
        }
    }
}
