package ep;

import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import cn.m0;
import cn.r;
import java.util.ArrayDeque;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TtmlRenderUtil.java */
/* loaded from: classes8.dex */
public final class f {
    public static void a(Spannable spannable, int i10, int i11, g gVar, @Nullable c cVar, Map<String, g> map, int i12) {
        c e10;
        int i13;
        g f10;
        int i14;
        if (gVar.n() != -1) {
            spannable.setSpan(new StyleSpan(gVar.n()), i10, i11, 33);
        }
        if (gVar.u()) {
            spannable.setSpan(new StrikethroughSpan(), i10, i11, 33);
        }
        if (gVar.v()) {
            spannable.setSpan(new UnderlineSpan(), i10, i11, 33);
        }
        if (gVar.s()) {
            bn.g.b(spannable, new ForegroundColorSpan(gVar.d()), i10, i11, 33);
        }
        if (gVar.r()) {
            bn.g.b(spannable, new BackgroundColorSpan(gVar.b()), i10, i11, 33);
        }
        if (gVar.e() != null) {
            bn.g.b(spannable, new TypefaceSpan(gVar.e()), i10, i11, 33);
        }
        if (gVar.q() != null) {
            b bVar = (b) cn.a.e(gVar.q());
            int i15 = bVar.f51454a;
            if (i15 == -1) {
                if (i12 != 2 && i12 != 1) {
                    i15 = 1;
                } else {
                    i15 = 3;
                }
                i14 = 1;
            } else {
                i14 = bVar.f51455b;
            }
            int i16 = bVar.f51456c;
            if (i16 == -2) {
                i16 = 1;
            }
            bn.g.b(spannable, new bn.h(i15, i14, i16), i10, i11, 33);
        }
        int l10 = gVar.l();
        if (l10 != 2) {
            if (l10 == 3 || l10 == 4) {
                spannable.setSpan(new a(), i10, i11, 33);
            }
        } else {
            c d10 = d(cVar, map);
            if (d10 != null && (e10 = e(d10, map)) != null) {
                if (e10.g() == 1 && e10.f(0).f51458b != null) {
                    String str = (String) m0.i(e10.f(0).f51458b);
                    g f11 = f(e10.f51462f, e10.l(), map);
                    if (f11 != null) {
                        i13 = f11.k();
                    } else {
                        i13 = -1;
                    }
                    if (i13 == -1 && (f10 = f(d10.f51462f, d10.l(), map)) != null) {
                        i13 = f10.k();
                    }
                    spannable.setSpan(new bn.f(str, i13), i10, i11, 33);
                } else {
                    r.f("TtmlRenderUtil", "Skipping rubyText node without exactly one text child.");
                }
            }
        }
        if (gVar.p()) {
            bn.g.b(spannable, new bn.d(), i10, i11, 33);
        }
        int g10 = gVar.g();
        if (g10 != 1) {
            if (g10 != 2) {
                if (g10 == 3) {
                    bn.g.a(spannable, gVar.f() / 100.0f, i10, i11, 33);
                    return;
                }
                return;
            }
            bn.g.b(spannable, new RelativeSizeSpan(gVar.f()), i10, i11, 33);
            return;
        }
        bn.g.b(spannable, new AbsoluteSizeSpan((int) gVar.f(), true), i10, i11, 33);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(String str) {
        return str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " ");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(SpannableStringBuilder spannableStringBuilder) {
        int length = spannableStringBuilder.length() - 1;
        while (length >= 0 && spannableStringBuilder.charAt(length) == ' ') {
            length--;
        }
        if (length >= 0 && spannableStringBuilder.charAt(length) != '\n') {
            spannableStringBuilder.append('\n');
        }
    }

    @Nullable
    private static c d(@Nullable c cVar, Map<String, g> map) {
        while (cVar != null) {
            g f10 = f(cVar.f51462f, cVar.l(), map);
            if (f10 != null && f10.l() == 1) {
                return cVar;
            }
            cVar = cVar.f51466j;
        }
        return null;
    }

    @Nullable
    private static c e(c cVar, Map<String, g> map) {
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(cVar);
        while (!arrayDeque.isEmpty()) {
            c cVar2 = (c) arrayDeque.pop();
            g f10 = f(cVar2.f51462f, cVar2.l(), map);
            if (f10 != null && f10.l() == 3) {
                return cVar2;
            }
            for (int g10 = cVar2.g() - 1; g10 >= 0; g10--) {
                arrayDeque.push(cVar2.f(g10));
            }
        }
        return null;
    }

    @Nullable
    public static g f(@Nullable g gVar, @Nullable String[] strArr, Map<String, g> map) {
        int i10 = 0;
        if (gVar == null) {
            if (strArr == null) {
                return null;
            }
            if (strArr.length == 1) {
                return map.get(strArr[0]);
            }
            if (strArr.length > 1) {
                g gVar2 = new g();
                int length = strArr.length;
                while (i10 < length) {
                    gVar2.a(map.get(strArr[i10]));
                    i10++;
                }
                return gVar2;
            }
        } else if (strArr != null && strArr.length == 1) {
            return gVar.a(map.get(strArr[0]));
        } else {
            if (strArr != null && strArr.length > 1) {
                int length2 = strArr.length;
                while (i10 < length2) {
                    gVar.a(map.get(strArr[i10]));
                    i10++;
                }
            }
        }
        return gVar;
    }
}
