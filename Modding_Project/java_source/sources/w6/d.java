package w6;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
import p6.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TtmlNode.java */
/* loaded from: classes4.dex */
public final class d {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f69677a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f69678b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f69679c;

    /* renamed from: d  reason: collision with root package name */
    public final long f69680d;

    /* renamed from: e  reason: collision with root package name */
    public final long f69681e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final g f69682f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final String[] f69683g;

    /* renamed from: h  reason: collision with root package name */
    public final String f69684h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final String f69685i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public final d f69686j;

    /* renamed from: k  reason: collision with root package name */
    private final HashMap<String, Integer> f69687k;

    /* renamed from: l  reason: collision with root package name */
    private final HashMap<String, Integer> f69688l;

    /* renamed from: m  reason: collision with root package name */
    private List<d> f69689m;

    private d(@Nullable String str, @Nullable String str2, long j10, long j11, @Nullable g gVar, @Nullable String[] strArr, String str3, @Nullable String str4, @Nullable d dVar) {
        boolean z10;
        this.f69677a = str;
        this.f69678b = str2;
        this.f69685i = str4;
        this.f69682f = gVar;
        this.f69683g = strArr;
        if (str2 != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f69679c = z10;
        this.f69680d = j10;
        this.f69681e = j11;
        this.f69684h = (String) b7.a.e(str3);
        this.f69686j = dVar;
        this.f69687k = new HashMap<>();
        this.f69688l = new HashMap<>();
    }

    private void b(Map<String, g> map, b.C0897b c0897b, int i10, int i11, int i12) {
        g f10 = f.f(this.f69682f, this.f69683g, map);
        SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) c0897b.e();
        if (spannableStringBuilder == null) {
            spannableStringBuilder = new SpannableStringBuilder();
            c0897b.o(spannableStringBuilder);
        }
        SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
        if (f10 != null) {
            f.a(spannableStringBuilder2, i10, i11, f10, this.f69686j, map, i12);
            if (TtmlNode.TAG_P.equals(this.f69677a)) {
                if (f10.k() != Float.MAX_VALUE) {
                    c0897b.m((f10.k() * (-90.0f)) / 100.0f);
                }
                if (f10.m() != null) {
                    c0897b.p(f10.m());
                }
                if (f10.h() != null) {
                    c0897b.j(f10.h());
                }
            }
        }
    }

    public static d c(@Nullable String str, long j10, long j11, @Nullable g gVar, @Nullable String[] strArr, String str2, @Nullable String str3, @Nullable d dVar) {
        return new d(str, null, j10, j11, gVar, strArr, str2, str3, dVar);
    }

    public static d d(String str) {
        return new d(null, f.b(str), -9223372036854775807L, -9223372036854775807L, null, null, "", null, null);
    }

    private static void e(SpannableStringBuilder spannableStringBuilder) {
        a[] aVarArr;
        for (a aVar : (a[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), a.class)) {
            spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(aVar), spannableStringBuilder.getSpanEnd(aVar), "");
        }
        for (int i10 = 0; i10 < spannableStringBuilder.length(); i10++) {
            if (spannableStringBuilder.charAt(i10) == ' ') {
                int i11 = i10 + 1;
                int i12 = i11;
                while (i12 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i12) == ' ') {
                    i12++;
                }
                int i13 = i12 - i11;
                if (i13 > 0) {
                    spannableStringBuilder.delete(i10, i13 + i10);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
            spannableStringBuilder.delete(0, 1);
        }
        for (int i14 = 0; i14 < spannableStringBuilder.length() - 1; i14++) {
            if (spannableStringBuilder.charAt(i14) == '\n') {
                int i15 = i14 + 1;
                if (spannableStringBuilder.charAt(i15) == ' ') {
                    spannableStringBuilder.delete(i15, i14 + 2);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
            spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
        }
        for (int i16 = 0; i16 < spannableStringBuilder.length() - 1; i16++) {
            if (spannableStringBuilder.charAt(i16) == ' ') {
                int i17 = i16 + 1;
                if (spannableStringBuilder.charAt(i17) == '\n') {
                    spannableStringBuilder.delete(i16, i17);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == '\n') {
            spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
        }
    }

    private void i(TreeSet<Long> treeSet, boolean z10) {
        boolean z11;
        boolean equals = TtmlNode.TAG_P.equals(this.f69677a);
        boolean equals2 = TtmlNode.TAG_DIV.equals(this.f69677a);
        if (z10 || equals || (equals2 && this.f69685i != null)) {
            long j10 = this.f69680d;
            if (j10 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j10));
            }
            long j11 = this.f69681e;
            if (j11 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j11));
            }
        }
        if (this.f69689m == null) {
            return;
        }
        for (int i10 = 0; i10 < this.f69689m.size(); i10++) {
            d dVar = this.f69689m.get(i10);
            if (!z10 && !equals) {
                z11 = false;
            } else {
                z11 = true;
            }
            dVar.i(treeSet, z11);
        }
    }

    private static SpannableStringBuilder k(String str, Map<String, b.C0897b> map) {
        if (!map.containsKey(str)) {
            b.C0897b c0897b = new b.C0897b();
            c0897b.o(new SpannableStringBuilder());
            map.put(str, c0897b);
        }
        return (SpannableStringBuilder) b7.a.e(map.get(str).e());
    }

    private void n(long j10, String str, List<Pair<String, String>> list) {
        if (!"".equals(this.f69684h)) {
            str = this.f69684h;
        }
        if (m(j10) && TtmlNode.TAG_DIV.equals(this.f69677a) && this.f69685i != null) {
            list.add(new Pair<>(str, this.f69685i));
            return;
        }
        for (int i10 = 0; i10 < g(); i10++) {
            f(i10).n(j10, str, list);
        }
    }

    private void o(long j10, Map<String, g> map, Map<String, e> map2, String str, Map<String, b.C0897b> map3) {
        String str2;
        int i10;
        if (!m(j10)) {
            return;
        }
        if ("".equals(this.f69684h)) {
            str2 = str;
        } else {
            str2 = this.f69684h;
        }
        Iterator<Map.Entry<String, Integer>> it = this.f69688l.entrySet().iterator();
        while (true) {
            i10 = 0;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, Integer> next = it.next();
            String key = next.getKey();
            if (this.f69687k.containsKey(key)) {
                i10 = this.f69687k.get(key).intValue();
            }
            int i11 = i10;
            int intValue = next.getValue().intValue();
            if (i11 != intValue) {
                b(map, (b.C0897b) b7.a.e(map3.get(key)), i11, intValue, ((e) b7.a.e(map2.get(str2))).f69699j);
            }
        }
        while (i10 < g()) {
            f(i10).o(j10, map, map2, str2, map3);
            i10++;
        }
    }

    private void p(long j10, boolean z10, String str, Map<String, b.C0897b> map) {
        boolean z11;
        this.f69687k.clear();
        this.f69688l.clear();
        if (TtmlNode.TAG_METADATA.equals(this.f69677a)) {
            return;
        }
        if (!"".equals(this.f69684h)) {
            str = this.f69684h;
        }
        if (this.f69679c && z10) {
            k(str, map).append((CharSequence) b7.a.e(this.f69678b));
        } else if ("br".equals(this.f69677a) && z10) {
            k(str, map).append('\n');
        } else if (m(j10)) {
            for (Map.Entry<String, b.C0897b> entry : map.entrySet()) {
                this.f69687k.put(entry.getKey(), Integer.valueOf(((CharSequence) b7.a.e(entry.getValue().e())).length()));
            }
            boolean equals = TtmlNode.TAG_P.equals(this.f69677a);
            for (int i10 = 0; i10 < g(); i10++) {
                d f10 = f(i10);
                if (!z10 && !equals) {
                    z11 = false;
                } else {
                    z11 = true;
                }
                f10.p(j10, z11, str, map);
            }
            if (equals) {
                f.c(k(str, map));
            }
            for (Map.Entry<String, b.C0897b> entry2 : map.entrySet()) {
                this.f69688l.put(entry2.getKey(), Integer.valueOf(((CharSequence) b7.a.e(entry2.getValue().e())).length()));
            }
        }
    }

    public void a(d dVar) {
        if (this.f69689m == null) {
            this.f69689m = new ArrayList();
        }
        this.f69689m.add(dVar);
    }

    public d f(int i10) {
        List<d> list = this.f69689m;
        if (list != null) {
            return list.get(i10);
        }
        throw new IndexOutOfBoundsException();
    }

    public int g() {
        List<d> list = this.f69689m;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List<p6.b> h(long j10, Map<String, g> map, Map<String, e> map2, Map<String, String> map3) {
        List<Pair<String, String>> arrayList = new ArrayList<>();
        n(j10, this.f69684h, arrayList);
        TreeMap treeMap = new TreeMap();
        p(j10, false, this.f69684h, treeMap);
        o(j10, map, map2, this.f69684h, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair<String, String> pair : arrayList) {
            String str = map3.get(pair.second);
            if (str != null) {
                byte[] decode = Base64.decode(str, 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                e eVar = (e) b7.a.e(map2.get(pair.first));
                arrayList2.add(new b.C0897b().f(decodeByteArray).k(eVar.f69691b).l(0).h(eVar.f69692c, 0).i(eVar.f69694e).n(eVar.f69695f).g(eVar.f69696g).r(eVar.f69699j).a());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            e eVar2 = (e) b7.a.e(map2.get(entry.getKey()));
            b.C0897b c0897b = (b.C0897b) entry.getValue();
            e((SpannableStringBuilder) b7.a.e(c0897b.e()));
            c0897b.h(eVar2.f69692c, eVar2.f69693d);
            c0897b.i(eVar2.f69694e);
            c0897b.k(eVar2.f69691b);
            c0897b.n(eVar2.f69695f);
            c0897b.q(eVar2.f69698i, eVar2.f69697h);
            c0897b.r(eVar2.f69699j);
            arrayList2.add(c0897b.a());
        }
        return arrayList2;
    }

    public long[] j() {
        TreeSet<Long> treeSet = new TreeSet<>();
        int i10 = 0;
        i(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator<Long> it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i10] = it.next().longValue();
            i10++;
        }
        return jArr;
    }

    @Nullable
    public String[] l() {
        return this.f69683g;
    }

    public boolean m(long j10) {
        long j11 = this.f69680d;
        if ((j11 == -9223372036854775807L && this.f69681e == -9223372036854775807L) || ((j11 <= j10 && this.f69681e == -9223372036854775807L) || ((j11 == -9223372036854775807L && j10 < this.f69681e) || (j11 <= j10 && j10 < this.f69681e)))) {
            return true;
        }
        return false;
    }
}
