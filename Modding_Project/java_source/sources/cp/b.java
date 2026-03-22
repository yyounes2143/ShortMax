package cp;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import bn.a;
import cn.b0;
import cn.l;
import cn.m0;
import cp.c;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import yo.e;
import yo.r;
/* compiled from: SsaParser.java */
/* loaded from: classes8.dex */
public final class b implements r {

    /* renamed from: g  reason: collision with root package name */
    private static final Pattern f49695g = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");

    /* renamed from: a  reason: collision with root package name */
    private final boolean f49696a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final a f49697b;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, c> f49699d;

    /* renamed from: e  reason: collision with root package name */
    private float f49700e = -3.4028235E38f;

    /* renamed from: f  reason: collision with root package name */
    private float f49701f = -3.4028235E38f;

    /* renamed from: c  reason: collision with root package name */
    private final b0 f49698c = new b0();

    public b(@Nullable List<byte[]> list) {
        if (list != null && !list.isEmpty()) {
            this.f49696a = true;
            String H = m0.H(list.get(0));
            cn.a.a(H.startsWith("Format:"));
            this.f49697b = (a) cn.a.e(a.a(H));
            j(new b0(list.get(1)), StandardCharsets.UTF_8);
            return;
        }
        this.f49696a = false;
        this.f49697b = null;
    }

    private static int d(long j10, List<Long> list, List<List<bn.a>> list2) {
        int i10;
        ArrayList arrayList;
        int size = list.size() - 1;
        while (true) {
            if (size >= 0) {
                if (list.get(size).longValue() == j10) {
                    return size;
                }
                if (list.get(size).longValue() < j10) {
                    i10 = size + 1;
                    break;
                }
                size--;
            } else {
                i10 = 0;
                break;
            }
        }
        list.add(i10, Long.valueOf(j10));
        if (i10 == 0) {
            arrayList = new ArrayList();
        } else {
            arrayList = new ArrayList(list2.get(i10 - 1));
        }
        list2.add(i10, arrayList);
        return i10;
    }

    private static float e(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    return -3.4028235E38f;
                }
                return 0.95f;
            }
            return 0.5f;
        }
        return 0.05f;
    }

    private static bn.a f(String str, @Nullable c cVar, c.b bVar, float f10, float f11) {
        SpannableString spannableString = new SpannableString(str);
        a.b o10 = new a.b().o(spannableString);
        if (cVar != null) {
            if (cVar.f49704c != null) {
                spannableString.setSpan(new ForegroundColorSpan(cVar.f49704c.intValue()), 0, spannableString.length(), 33);
            }
            if (cVar.f49711j == 3 && cVar.f49705d != null) {
                spannableString.setSpan(new BackgroundColorSpan(cVar.f49705d.intValue()), 0, spannableString.length(), 33);
            }
            float f12 = cVar.f49706e;
            if (f12 != -3.4028235E38f && f11 != -3.4028235E38f) {
                o10.q(f12 / f11, 1);
            }
            boolean z10 = cVar.f49707f;
            if (z10 && cVar.f49708g) {
                spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
            } else if (z10) {
                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
            } else if (cVar.f49708g) {
                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
            }
            if (cVar.f49709h) {
                spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
            }
            if (cVar.f49710i) {
                spannableString.setSpan(new StrikethroughSpan(), 0, spannableString.length(), 33);
            }
        }
        int i10 = bVar.f49727a;
        if (i10 == -1) {
            if (cVar != null) {
                i10 = cVar.f49703b;
            } else {
                i10 = -1;
            }
        }
        o10.p(p(i10)).l(o(i10)).i(n(i10));
        PointF pointF = bVar.f49728b;
        if (pointF != null && f11 != -3.4028235E38f && f10 != -3.4028235E38f) {
            o10.k(pointF.x / f10);
            o10.h(bVar.f49728b.y / f11, 0);
        } else {
            o10.k(e(o10.d()));
            o10.h(e(o10.c()), 0);
        }
        return o10.a();
    }

    private Charset g(b0 b0Var) {
        Charset R = b0Var.R();
        if (R == null) {
            return StandardCharsets.UTF_8;
        }
        return R;
    }

    private void h(String str, a aVar, List<List<bn.a>> list, List<Long> list2) {
        c cVar;
        int i10;
        cn.a.a(str.startsWith("Dialogue:"));
        String[] split = str.substring(9).split(",", aVar.f49694e);
        if (split.length != aVar.f49694e) {
            cn.r.h("SsaParser", "Skipping dialogue line with fewer columns than format: " + str);
            return;
        }
        long m10 = m(split[aVar.f49690a]);
        if (m10 == -9223372036854775807L) {
            cn.r.h("SsaParser", "Skipping invalid timing: " + str);
            return;
        }
        long m11 = m(split[aVar.f49691b]);
        if (m11 != -9223372036854775807L && m11 > m10) {
            Map<String, c> map = this.f49699d;
            if (map != null && (i10 = aVar.f49692c) != -1) {
                cVar = map.get(split[i10].trim());
            } else {
                cVar = null;
            }
            String str2 = split[aVar.f49693d];
            bn.a f10 = f(c.b.d(str2).replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " "), cVar, c.b.b(str2), this.f49700e, this.f49701f);
            int d10 = d(m11, list2, list);
            for (int d11 = d(m10, list2, list); d11 < d10; d11++) {
                list.get(d11).add(f10);
            }
            return;
        }
        cn.r.h("SsaParser", "Skipping invalid timing: " + str);
    }

    private void i(b0 b0Var, List<List<bn.a>> list, List<Long> list2, Charset charset) {
        a aVar;
        if (this.f49696a) {
            aVar = this.f49697b;
        } else {
            aVar = null;
        }
        while (true) {
            String t10 = b0Var.t(charset);
            if (t10 != null) {
                if (t10.startsWith("Format:")) {
                    aVar = a.a(t10);
                } else if (t10.startsWith("Dialogue:")) {
                    if (aVar == null) {
                        cn.r.h("SsaParser", "Skipping dialogue line before complete format: " + t10);
                    } else {
                        h(t10, aVar, list, list2);
                    }
                }
            } else {
                return;
            }
        }
    }

    private void j(b0 b0Var, Charset charset) {
        while (true) {
            String t10 = b0Var.t(charset);
            if (t10 != null) {
                if ("[Script Info]".equalsIgnoreCase(t10)) {
                    k(b0Var, charset);
                } else if ("[V4+ Styles]".equalsIgnoreCase(t10)) {
                    this.f49699d = l(b0Var, charset);
                } else if ("[V4 Styles]".equalsIgnoreCase(t10)) {
                    cn.r.f("SsaParser", "[V4 Styles] are not supported");
                } else if ("[Events]".equalsIgnoreCase(t10)) {
                    return;
                }
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0059 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0006  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void k(cn.b0 r5, java.nio.charset.Charset r6) {
        /*
            r4 = this;
        L0:
            java.lang.String r0 = r5.t(r6)
            if (r0 == 0) goto L59
            int r1 = r5.a()
            if (r1 == 0) goto L14
            char r1 = r5.h(r6)
            r2 = 91
            if (r1 == r2) goto L59
        L14:
            java.lang.String r1 = ":"
            java.lang.String[] r0 = r0.split(r1)
            int r1 = r0.length
            r2 = 2
            if (r1 == r2) goto L1f
            goto L0
        L1f:
            r1 = 0
            r1 = r0[r1]
            java.lang.String r1 = r1.trim()
            java.lang.String r1 = h7.a.e(r1)
            r1.hashCode()
            r2 = 1
            java.lang.String r3 = "playresx"
            boolean r3 = r1.equals(r3)
            if (r3 != 0) goto L4c
            java.lang.String r3 = "playresy"
            boolean r1 = r1.equals(r3)
            if (r1 != 0) goto L3f
            goto L0
        L3f:
            r0 = r0[r2]     // Catch: java.lang.NumberFormatException -> L0
            java.lang.String r0 = r0.trim()     // Catch: java.lang.NumberFormatException -> L0
            float r0 = java.lang.Float.parseFloat(r0)     // Catch: java.lang.NumberFormatException -> L0
            r4.f49701f = r0     // Catch: java.lang.NumberFormatException -> L0
            goto L0
        L4c:
            r0 = r0[r2]     // Catch: java.lang.NumberFormatException -> L0
            java.lang.String r0 = r0.trim()     // Catch: java.lang.NumberFormatException -> L0
            float r0 = java.lang.Float.parseFloat(r0)     // Catch: java.lang.NumberFormatException -> L0
            r4.f49700e = r0     // Catch: java.lang.NumberFormatException -> L0
            goto L0
        L59:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cp.b.k(cn.b0, java.nio.charset.Charset):void");
    }

    private static Map<String, c> l(b0 b0Var, Charset charset) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c.a aVar = null;
        while (true) {
            String t10 = b0Var.t(charset);
            if (t10 == null || (b0Var.a() != 0 && b0Var.h(charset) == '[')) {
                break;
            } else if (t10.startsWith("Format:")) {
                aVar = c.a.a(t10);
            } else if (t10.startsWith("Style:")) {
                if (aVar == null) {
                    cn.r.h("SsaParser", "Skipping 'Style:' line before 'Format:' line: " + t10);
                } else {
                    c b10 = c.b(t10, aVar);
                    if (b10 != null) {
                        linkedHashMap.put(b10.f49702a, b10);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    private static long m(String str) {
        Matcher matcher = f49695g.matcher(str.trim());
        if (!matcher.matches()) {
            return -9223372036854775807L;
        }
        return (Long.parseLong((String) m0.i(matcher.group(1))) * 3600000000L) + (Long.parseLong((String) m0.i(matcher.group(2))) * 60000000) + (Long.parseLong((String) m0.i(matcher.group(3))) * 1000000) + (Long.parseLong((String) m0.i(matcher.group(4))) * 10000);
    }

    private static int n(int i10) {
        switch (i10) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                cn.r.h("SsaParser", "Unknown alignment: " + i10);
                return Integer.MIN_VALUE;
            case 1:
            case 2:
            case 3:
                return 2;
            case 4:
            case 5:
            case 6:
                return 1;
            case 7:
            case 8:
            case 9:
                return 0;
        }
    }

    private static int o(int i10) {
        switch (i10) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                cn.r.h("SsaParser", "Unknown alignment: " + i10);
                return Integer.MIN_VALUE;
            case 1:
            case 4:
            case 7:
                return 0;
            case 2:
            case 5:
            case 8:
                return 1;
            case 3:
            case 6:
            case 9:
                return 2;
        }
    }

    @Nullable
    private static Layout.Alignment p(int i10) {
        switch (i10) {
            case -1:
                return null;
            case 0:
            default:
                cn.r.h("SsaParser", "Unknown alignment: " + i10);
                return null;
            case 1:
            case 4:
            case 7:
                return Layout.Alignment.ALIGN_NORMAL;
            case 2:
            case 5:
            case 8:
                return Layout.Alignment.ALIGN_CENTER;
            case 3:
            case 6:
            case 9:
                return Layout.Alignment.ALIGN_OPPOSITE;
        }
    }

    @Override // yo.r
    public void a(byte[] bArr, int i10, int i11, r.b bVar, l<e> lVar) {
        ArrayList<e> arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        this.f49698c.U(bArr, i10 + i11);
        this.f49698c.W(i10);
        Charset g10 = g(this.f49698c);
        if (!this.f49696a) {
            j(this.f49698c, g10);
        }
        i(this.f49698c, arrayList4, arrayList5, g10);
        if (bVar.f71102a != -9223372036854775807L && bVar.f71103b) {
            arrayList = new ArrayList();
        } else {
            arrayList = null;
        }
        int i12 = 0;
        while (i12 < arrayList4.size()) {
            List<bn.a> list = arrayList4.get(i12);
            if (list.isEmpty() && i12 != 0) {
                arrayList2 = arrayList4;
                arrayList3 = arrayList5;
            } else if (i12 != arrayList4.size() - 1) {
                long longValue = arrayList5.get(i12).longValue();
                long longValue2 = arrayList5.get(i12 + 1).longValue() - arrayList5.get(i12).longValue();
                arrayList2 = arrayList4;
                arrayList3 = arrayList5;
                long j10 = bVar.f71102a;
                if (j10 != -9223372036854775807L && longValue < j10) {
                    if (arrayList != null) {
                        arrayList.add(new e(list, longValue, longValue2));
                    }
                } else {
                    lVar.accept(new e(list, longValue, longValue2));
                }
            } else {
                throw new IllegalStateException();
            }
            i12++;
            arrayList4 = arrayList2;
            arrayList5 = arrayList3;
        }
        if (arrayList != null) {
            for (e eVar : arrayList) {
                lVar.accept(eVar);
            }
        }
    }

    @Override // yo.r
    public int b() {
        return 1;
    }
}
