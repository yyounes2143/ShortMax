package u6;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import b7.g0;
import b7.q;
import b7.s0;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p6.b;
import p6.h;
import p6.i;
import u6.c;
/* compiled from: SsaDecoder.java */
/* loaded from: classes4.dex */
public final class a extends h {

    /* renamed from: t  reason: collision with root package name */
    private static final Pattern f67817t = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");

    /* renamed from: o  reason: collision with root package name */
    private final boolean f67818o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private final b f67819p;

    /* renamed from: q  reason: collision with root package name */
    private Map<String, c> f67820q;

    /* renamed from: r  reason: collision with root package name */
    private float f67821r;

    /* renamed from: s  reason: collision with root package name */
    private float f67822s;

    public a(@Nullable List<byte[]> list) {
        super("SsaDecoder");
        this.f67821r = -3.4028235E38f;
        this.f67822s = -3.4028235E38f;
        if (list != null && !list.isEmpty()) {
            this.f67818o = true;
            String A = s0.A(list.get(0));
            b7.a.a(A.startsWith("Format:"));
            this.f67819p = (b) b7.a.e(b.a(A));
            C(new g0(list.get(1)));
            return;
        }
        this.f67818o = false;
        this.f67819p = null;
    }

    private void A(String str, b bVar, List<List<p6.b>> list, List<Long> list2) {
        c cVar;
        int i10;
        b7.a.a(str.startsWith("Dialogue:"));
        String[] split = str.substring(9).split(",", bVar.f67827e);
        if (split.length != bVar.f67827e) {
            q.i("SsaDecoder", "Skipping dialogue line with fewer columns than format: " + str);
            return;
        }
        long F = F(split[bVar.f67823a]);
        if (F == -9223372036854775807L) {
            q.i("SsaDecoder", "Skipping invalid timing: " + str);
            return;
        }
        long F2 = F(split[bVar.f67824b]);
        if (F2 == -9223372036854775807L) {
            q.i("SsaDecoder", "Skipping invalid timing: " + str);
            return;
        }
        Map<String, c> map = this.f67820q;
        if (map != null && (i10 = bVar.f67825c) != -1) {
            cVar = map.get(split[i10].trim());
        } else {
            cVar = null;
        }
        String str2 = split[bVar.f67826d];
        p6.b z10 = z(c.b.d(str2).replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " "), cVar, c.b.b(str2), this.f67821r, this.f67822s);
        int x10 = x(F2, list2, list);
        for (int x11 = x(F, list2, list); x11 < x10; x11++) {
            list.get(x11).add(z10);
        }
    }

    private void B(g0 g0Var, List<List<p6.b>> list, List<Long> list2) {
        b bVar;
        if (this.f67818o) {
            bVar = this.f67819p;
        } else {
            bVar = null;
        }
        while (true) {
            String p10 = g0Var.p();
            if (p10 != null) {
                if (p10.startsWith("Format:")) {
                    bVar = b.a(p10);
                } else if (p10.startsWith("Dialogue:")) {
                    if (bVar == null) {
                        q.i("SsaDecoder", "Skipping dialogue line before complete format: " + p10);
                    } else {
                        A(p10, bVar, list, list2);
                    }
                }
            } else {
                return;
            }
        }
    }

    private void C(g0 g0Var) {
        while (true) {
            String p10 = g0Var.p();
            if (p10 != null) {
                if ("[Script Info]".equalsIgnoreCase(p10)) {
                    D(g0Var);
                } else if ("[V4+ Styles]".equalsIgnoreCase(p10)) {
                    this.f67820q = E(g0Var);
                } else if ("[V4 Styles]".equalsIgnoreCase(p10)) {
                    q.f("SsaDecoder", "[V4 Styles] are not supported");
                } else if ("[Events]".equalsIgnoreCase(p10)) {
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
    private void D(b7.g0 r5) {
        /*
            r4 = this;
        L0:
            java.lang.String r0 = r5.p()
            if (r0 == 0) goto L59
            int r1 = r5.a()
            if (r1 == 0) goto L14
            int r1 = r5.h()
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
            r4.f67822s = r0     // Catch: java.lang.NumberFormatException -> L0
            goto L0
        L4c:
            r0 = r0[r2]     // Catch: java.lang.NumberFormatException -> L0
            java.lang.String r0 = r0.trim()     // Catch: java.lang.NumberFormatException -> L0
            float r0 = java.lang.Float.parseFloat(r0)     // Catch: java.lang.NumberFormatException -> L0
            r4.f67821r = r0     // Catch: java.lang.NumberFormatException -> L0
            goto L0
        L59:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: u6.a.D(b7.g0):void");
    }

    private static Map<String, c> E(g0 g0Var) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c.a aVar = null;
        while (true) {
            String p10 = g0Var.p();
            if (p10 == null || (g0Var.a() != 0 && g0Var.h() == 91)) {
                break;
            } else if (p10.startsWith("Format:")) {
                aVar = c.a.a(p10);
            } else if (p10.startsWith("Style:")) {
                if (aVar == null) {
                    q.i("SsaDecoder", "Skipping 'Style:' line before 'Format:' line: " + p10);
                } else {
                    c b10 = c.b(p10, aVar);
                    if (b10 != null) {
                        linkedHashMap.put(b10.f67828a, b10);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    private static long F(String str) {
        Matcher matcher = f67817t.matcher(str.trim());
        if (!matcher.matches()) {
            return -9223372036854775807L;
        }
        return (Long.parseLong((String) s0.j(matcher.group(1))) * 3600000000L) + (Long.parseLong((String) s0.j(matcher.group(2))) * 60000000) + (Long.parseLong((String) s0.j(matcher.group(3))) * 1000000) + (Long.parseLong((String) s0.j(matcher.group(4))) * 10000);
    }

    private static int G(int i10) {
        switch (i10) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                q.i("SsaDecoder", "Unknown alignment: " + i10);
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

    private static int H(int i10) {
        switch (i10) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                q.i("SsaDecoder", "Unknown alignment: " + i10);
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
    private static Layout.Alignment I(int i10) {
        switch (i10) {
            case -1:
                return null;
            case 0:
            default:
                q.i("SsaDecoder", "Unknown alignment: " + i10);
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

    private static int x(long j10, List<Long> list, List<List<p6.b>> list2) {
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

    private static float y(int i10) {
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

    private static p6.b z(String str, @Nullable c cVar, c.b bVar, float f10, float f11) {
        SpannableString spannableString = new SpannableString(str);
        b.C0897b o10 = new b.C0897b().o(spannableString);
        if (cVar != null) {
            if (cVar.f67830c != null) {
                spannableString.setSpan(new ForegroundColorSpan(cVar.f67830c.intValue()), 0, spannableString.length(), 33);
            }
            if (cVar.f67837j == 3 && cVar.f67831d != null) {
                spannableString.setSpan(new BackgroundColorSpan(cVar.f67831d.intValue()), 0, spannableString.length(), 33);
            }
            float f12 = cVar.f67832e;
            if (f12 != -3.4028235E38f && f11 != -3.4028235E38f) {
                o10.q(f12 / f11, 1);
            }
            boolean z10 = cVar.f67833f;
            if (z10 && cVar.f67834g) {
                spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
            } else if (z10) {
                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
            } else if (cVar.f67834g) {
                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
            }
            if (cVar.f67835h) {
                spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
            }
            if (cVar.f67836i) {
                spannableString.setSpan(new StrikethroughSpan(), 0, spannableString.length(), 33);
            }
        }
        int i10 = bVar.f67853a;
        if (i10 == -1) {
            if (cVar != null) {
                i10 = cVar.f67829b;
            } else {
                i10 = -1;
            }
        }
        o10.p(I(i10)).l(H(i10)).i(G(i10));
        PointF pointF = bVar.f67854b;
        if (pointF != null && f11 != -3.4028235E38f && f10 != -3.4028235E38f) {
            o10.k(pointF.x / f10);
            o10.h(bVar.f67854b.y / f11, 0);
        } else {
            o10.k(y(o10.d()));
            o10.h(y(o10.c()), 0);
        }
        return o10.a();
    }

    @Override // p6.h
    protected i w(byte[] bArr, int i10, boolean z10) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        g0 g0Var = new g0(bArr, i10);
        if (!this.f67818o) {
            C(g0Var);
        }
        B(g0Var, arrayList, arrayList2);
        return new d(arrayList, arrayList2);
    }
}
