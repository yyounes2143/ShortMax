package hp;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import cn.b0;
import cn.m0;
import cn.r;
import com.bytedance.vodsetting.Module;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: WebvttCssParser.java */
/* loaded from: classes8.dex */
final class b {

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f53167c = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f53168d = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");

    /* renamed from: a  reason: collision with root package name */
    private final b0 f53169a = new b0();

    /* renamed from: b  reason: collision with root package name */
    private final StringBuilder f53170b = new StringBuilder();

    private void a(c cVar, String str) {
        if ("".equals(str)) {
            return;
        }
        int indexOf = str.indexOf(91);
        if (indexOf != -1) {
            Matcher matcher = f53167c.matcher(str.substring(indexOf));
            if (matcher.matches()) {
                cVar.z((String) cn.a.e(matcher.group(1)));
            }
            str = str.substring(0, indexOf);
        }
        String[] m12 = m0.m1(str, "\\.");
        String str2 = m12[0];
        int indexOf2 = str2.indexOf(35);
        if (indexOf2 != -1) {
            cVar.y(str2.substring(0, indexOf2));
            cVar.x(str2.substring(indexOf2 + 1));
        } else {
            cVar.y(str2);
        }
        if (m12.length > 1) {
            cVar.w((String[]) m0.Z0(m12, 1, m12.length));
        }
    }

    private static boolean b(b0 b0Var) {
        int f10 = b0Var.f();
        int g10 = b0Var.g();
        byte[] e10 = b0Var.e();
        if (f10 + 2 <= g10) {
            int i10 = f10 + 1;
            if (e10[f10] == 47) {
                int i11 = f10 + 2;
                if (e10[i10] != 42) {
                    return false;
                }
                while (true) {
                    int i12 = i11 + 1;
                    if (i12 < g10) {
                        if (((char) e10[i11]) == '*' && ((char) e10[i12]) == '/') {
                            i11 += 2;
                            g10 = i11;
                        } else {
                            i11 = i12;
                        }
                    } else {
                        b0Var.X(g10 - b0Var.f());
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

    private static boolean c(b0 b0Var) {
        char k10 = k(b0Var, b0Var.f());
        if (k10 != '\t' && k10 != '\n' && k10 != '\f' && k10 != '\r' && k10 != ' ') {
            return false;
        }
        b0Var.X(1);
        return true;
    }

    private static void e(String str, c cVar) {
        Matcher matcher = f53168d.matcher(h7.a.e(str));
        if (!matcher.matches()) {
            r.h("WebvttCssParser", "Invalid font-size: '" + str + "'.");
            return;
        }
        String str2 = (String) cn.a.e(matcher.group(2));
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
                cVar.t(3);
                break;
            case 1:
                cVar.t(2);
                break;
            case 2:
                cVar.t(1);
                break;
            default:
                throw new IllegalStateException();
        }
        cVar.s(Float.parseFloat((String) cn.a.e(matcher.group(1))));
    }

    private static String f(b0 b0Var, StringBuilder sb2) {
        boolean z10 = false;
        sb2.setLength(0);
        int f10 = b0Var.f();
        int g10 = b0Var.g();
        while (f10 < g10 && !z10) {
            char c10 = (char) b0Var.e()[f10];
            if ((c10 < 'A' || c10 > 'Z') && ((c10 < 'a' || c10 > 'z') && ((c10 < '0' || c10 > '9') && c10 != '#' && c10 != '-' && c10 != '.' && c10 != '_'))) {
                z10 = true;
            } else {
                f10++;
                sb2.append(c10);
            }
        }
        b0Var.X(f10 - b0Var.f());
        return sb2.toString();
    }

    @Nullable
    static String g(b0 b0Var, StringBuilder sb2) {
        n(b0Var);
        if (b0Var.a() == 0) {
            return null;
        }
        String f10 = f(b0Var, sb2);
        if (!"".equals(f10)) {
            return f10;
        }
        return "" + ((char) b0Var.H());
    }

    @Nullable
    private static String h(b0 b0Var, StringBuilder sb2) {
        StringBuilder sb3 = new StringBuilder();
        boolean z10 = false;
        while (!z10) {
            int f10 = b0Var.f();
            String g10 = g(b0Var, sb2);
            if (g10 == null) {
                return null;
            }
            if (!"}".equals(g10) && !";".equals(g10)) {
                sb3.append(g10);
            } else {
                b0Var.W(f10);
                z10 = true;
            }
        }
        return sb3.toString();
    }

    @Nullable
    private static String i(b0 b0Var, StringBuilder sb2) {
        String str;
        n(b0Var);
        if (b0Var.a() < 5 || !"::cue".equals(b0Var.E(5))) {
            return null;
        }
        int f10 = b0Var.f();
        String g10 = g(b0Var, sb2);
        if (g10 == null) {
            return null;
        }
        if ("{".equals(g10)) {
            b0Var.W(f10);
            return "";
        }
        if ("(".equals(g10)) {
            str = l(b0Var);
        } else {
            str = null;
        }
        if (!")".equals(g(b0Var, sb2))) {
            return null;
        }
        return str;
    }

    private static void j(b0 b0Var, c cVar, StringBuilder sb2) {
        n(b0Var);
        String f10 = f(b0Var, sb2);
        if ("".equals(f10) || !":".equals(g(b0Var, sb2))) {
            return;
        }
        n(b0Var);
        String h10 = h(b0Var, sb2);
        if (h10 != null && !"".equals(h10)) {
            int f11 = b0Var.f();
            String g10 = g(b0Var, sb2);
            if (!";".equals(g10)) {
                if ("}".equals(g10)) {
                    b0Var.W(f11);
                } else {
                    return;
                }
            }
            if ("color".equals(f10)) {
                cVar.q(cn.j.b(h10));
            } else if ("background-color".equals(f10)) {
                cVar.n(cn.j.b(h10));
            } else {
                boolean z10 = true;
                if ("ruby-position".equals(f10)) {
                    if ("over".equals(h10)) {
                        cVar.v(1);
                    } else if ("under".equals(h10)) {
                        cVar.v(2);
                    }
                } else if ("text-combine-upright".equals(f10)) {
                    if (!Module.ALL.equals(h10) && !h10.startsWith("digits")) {
                        z10 = false;
                    }
                    cVar.p(z10);
                } else if ("text-decoration".equals(f10)) {
                    if (TtmlNode.UNDERLINE.equals(h10)) {
                        cVar.A(true);
                    }
                } else if ("font-family".equals(f10)) {
                    cVar.r(h10);
                } else if ("font-weight".equals(f10)) {
                    if (TtmlNode.BOLD.equals(h10)) {
                        cVar.o(true);
                    }
                } else if ("font-style".equals(f10)) {
                    if (TtmlNode.ITALIC.equals(h10)) {
                        cVar.u(true);
                    }
                } else if ("font-size".equals(f10)) {
                    e(h10, cVar);
                }
            }
        }
    }

    private static char k(b0 b0Var, int i10) {
        return (char) b0Var.e()[i10];
    }

    private static String l(b0 b0Var) {
        int f10 = b0Var.f();
        int g10 = b0Var.g();
        boolean z10 = false;
        while (f10 < g10 && !z10) {
            int i10 = f10 + 1;
            if (((char) b0Var.e()[f10]) == ')') {
                z10 = true;
            } else {
                z10 = false;
            }
            f10 = i10;
        }
        return b0Var.E((f10 - 1) - b0Var.f()).trim();
    }

    static void m(b0 b0Var) {
        do {
        } while (!TextUtils.isEmpty(b0Var.s()));
    }

    static void n(b0 b0Var) {
        while (true) {
            for (boolean z10 = true; b0Var.a() > 0 && z10; z10 = false) {
                if (!c(b0Var) && !b(b0Var)) {
                }
            }
            return;
        }
    }

    public List<c> d(b0 b0Var) {
        boolean z10;
        this.f53170b.setLength(0);
        int f10 = b0Var.f();
        m(b0Var);
        this.f53169a.U(b0Var.e(), b0Var.f());
        this.f53169a.W(f10);
        ArrayList arrayList = new ArrayList();
        while (true) {
            String i10 = i(this.f53169a, this.f53170b);
            if (i10 != null) {
                if (!"{".equals(g(this.f53169a, this.f53170b))) {
                    return arrayList;
                }
                c cVar = new c();
                a(cVar, i10);
                String str = null;
                boolean z11 = false;
                while (!z11) {
                    int f11 = this.f53169a.f();
                    String g10 = g(this.f53169a, this.f53170b);
                    if (g10 != null && !"}".equals(g10)) {
                        z10 = false;
                    } else {
                        z10 = true;
                    }
                    if (!z10) {
                        this.f53169a.W(f11);
                        j(this.f53169a, cVar, this.f53170b);
                    }
                    str = g10;
                    z11 = z10;
                }
                if ("}".equals(str)) {
                    arrayList.add(cVar);
                }
            } else {
                return arrayList;
            }
        }
    }
}
