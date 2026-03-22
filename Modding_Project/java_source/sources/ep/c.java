package ep;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import androidx.annotation.Nullable;
import bn.a;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TtmlNode.java */
/* loaded from: classes8.dex */
public final class c {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f51457a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f51458b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f51459c;

    /* renamed from: d  reason: collision with root package name */
    public final long f51460d;

    /* renamed from: e  reason: collision with root package name */
    public final long f51461e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final g f51462f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final String[] f51463g;

    /* renamed from: h  reason: collision with root package name */
    public final String f51464h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final String f51465i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public final c f51466j;

    /* renamed from: k  reason: collision with root package name */
    private final HashMap<String, Integer> f51467k;

    /* renamed from: l  reason: collision with root package name */
    private final HashMap<String, Integer> f51468l;

    /* renamed from: m  reason: collision with root package name */
    private List<c> f51469m;

    private c(@Nullable String str, @Nullable String str2, long j10, long j11, @Nullable g gVar, @Nullable String[] strArr, String str3, @Nullable String str4, @Nullable c cVar) {
        boolean z10;
        this.f51457a = str;
        this.f51458b = str2;
        this.f51465i = str4;
        this.f51462f = gVar;
        this.f51463g = strArr;
        if (str2 != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f51459c = z10;
        this.f51460d = j10;
        this.f51461e = j11;
        this.f51464h = (String) cn.a.e(str3);
        this.f51466j = cVar;
        this.f51467k = new HashMap<>();
        this.f51468l = new HashMap<>();
    }

    private void b(Map<String, g> map, a.b bVar, int i10, int i11, int i12) {
        g f10 = f.f(this.f51462f, this.f51463g, map);
        SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) bVar.e();
        if (spannableStringBuilder == null) {
            spannableStringBuilder = new SpannableStringBuilder();
            bVar.o(spannableStringBuilder);
        }
        SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
        if (f10 != null) {
            f.a(spannableStringBuilder2, i10, i11, f10, this.f51466j, map, i12);
            if (TtmlNode.TAG_P.equals(this.f51457a)) {
                if (f10.m() != Float.MAX_VALUE) {
                    bVar.m((f10.m() * (-90.0f)) / 100.0f);
                }
                if (f10.o() != null) {
                    bVar.p(f10.o());
                }
                if (f10.i() != null) {
                    bVar.j(f10.i());
                }
            }
        }
    }

    public static c c(@Nullable String str, long j10, long j11, @Nullable g gVar, @Nullable String[] strArr, String str2, @Nullable String str3, @Nullable c cVar) {
        return new c(str, null, j10, j11, gVar, strArr, str2, str3, cVar);
    }

    public static c d(String str) {
        return new c(null, f.b(str), -9223372036854775807L, -9223372036854775807L, null, null, "", null, null);
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
        boolean equals = TtmlNode.TAG_P.equals(this.f51457a);
        boolean equals2 = TtmlNode.TAG_DIV.equals(this.f51457a);
        if (z10 || equals || (equals2 && this.f51465i != null)) {
            long j10 = this.f51460d;
            if (j10 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j10));
            }
            long j11 = this.f51461e;
            if (j11 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j11));
            }
        }
        if (this.f51469m == null) {
            return;
        }
        for (int i10 = 0; i10 < this.f51469m.size(); i10++) {
            c cVar = this.f51469m.get(i10);
            if (!z10 && !equals) {
                z11 = false;
            } else {
                z11 = true;
            }
            cVar.i(treeSet, z11);
        }
    }

    private static SpannableStringBuilder k(String str, Map<String, a.b> map) {
        if (!map.containsKey(str)) {
            a.b bVar = new a.b();
            bVar.o(new SpannableStringBuilder());
            map.put(str, bVar);
        }
        return (SpannableStringBuilder) cn.a.e(map.get(str).e());
    }

    private void n(long j10, String str, List<Pair<String, String>> list) {
        if (!"".equals(this.f51464h)) {
            str = this.f51464h;
        }
        if (m(j10) && TtmlNode.TAG_DIV.equals(this.f51457a) && this.f51465i != null) {
            list.add(new Pair<>(str, this.f51465i));
            return;
        }
        for (int i10 = 0; i10 < g(); i10++) {
            f(i10).n(j10, str, list);
        }
    }

    private void o(long j10, Map<String, g> map, Map<String, e> map2, String str, Map<String, a.b> map3) {
        String str2;
        int i10;
        if (!m(j10)) {
            return;
        }
        if ("".equals(this.f51464h)) {
            str2 = str;
        } else {
            str2 = this.f51464h;
        }
        Iterator<Map.Entry<String, Integer>> it = this.f51468l.entrySet().iterator();
        while (true) {
            i10 = 0;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, Integer> next = it.next();
            String key = next.getKey();
            if (this.f51467k.containsKey(key)) {
                i10 = this.f51467k.get(key).intValue();
            }
            int i11 = i10;
            int intValue = next.getValue().intValue();
            if (i11 != intValue) {
                b(map, (a.b) cn.a.e(map3.get(key)), i11, intValue, ((e) cn.a.e(map2.get(str2))).f51493j);
            }
        }
        while (i10 < g()) {
            f(i10).o(j10, map, map2, str2, map3);
            i10++;
        }
    }

    private void p(long j10, boolean z10, String str, Map<String, a.b> map) {
        boolean z11;
        this.f51467k.clear();
        this.f51468l.clear();
        if (TtmlNode.TAG_METADATA.equals(this.f51457a)) {
            return;
        }
        if (!"".equals(this.f51464h)) {
            str = this.f51464h;
        }
        if (this.f51459c && z10) {
            k(str, map).append((CharSequence) cn.a.e(this.f51458b));
        } else if ("br".equals(this.f51457a) && z10) {
            k(str, map).append('\n');
        } else if (m(j10)) {
            for (Map.Entry<String, a.b> entry : map.entrySet()) {
                this.f51467k.put(entry.getKey(), Integer.valueOf(((CharSequence) cn.a.e(entry.getValue().e())).length()));
            }
            boolean equals = TtmlNode.TAG_P.equals(this.f51457a);
            for (int i10 = 0; i10 < g(); i10++) {
                c f10 = f(i10);
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
            for (Map.Entry<String, a.b> entry2 : map.entrySet()) {
                this.f51468l.put(entry2.getKey(), Integer.valueOf(((CharSequence) cn.a.e(entry2.getValue().e())).length()));
            }
        }
    }

    public void a(c cVar) {
        if (this.f51469m == null) {
            this.f51469m = new ArrayList();
        }
        this.f51469m.add(cVar);
    }

    public c f(int i10) {
        List<c> list = this.f51469m;
        if (list != null) {
            return list.get(i10);
        }
        throw new IndexOutOfBoundsException();
    }

    public int g() {
        List<c> list = this.f51469m;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List<bn.a> h(long j10, Map<String, g> map, Map<String, e> map2, Map<String, String> map3) {
        List<Pair<String, String>> arrayList = new ArrayList<>();
        n(j10, this.f51464h, arrayList);
        TreeMap treeMap = new TreeMap();
        p(j10, false, this.f51464h, treeMap);
        o(j10, map, map2, this.f51464h, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair<String, String> pair : arrayList) {
            String str = map3.get(pair.second);
            if (str != null) {
                byte[] decode = Base64.decode(str, 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                e eVar = (e) cn.a.e(map2.get(pair.first));
                arrayList2.add(new a.b().f(decodeByteArray).k(eVar.f51485b).l(0).h(eVar.f51486c, 0).i(eVar.f51488e).n(eVar.f51489f).g(eVar.f51490g).r(eVar.f51493j).a());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            e eVar2 = (e) cn.a.e(map2.get(entry.getKey()));
            a.b bVar = (a.b) entry.getValue();
            e((SpannableStringBuilder) cn.a.e(bVar.e()));
            bVar.h(eVar2.f51486c, eVar2.f51487d);
            bVar.i(eVar2.f51488e);
            bVar.k(eVar2.f51485b);
            bVar.n(eVar2.f51489f);
            bVar.q(eVar2.f51492i, eVar2.f51491h);
            bVar.r(eVar2.f51493j);
            arrayList2.add(bVar.a());
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
        return this.f51463g;
    }

    public boolean m(long j10) {
        long j11 = this.f51460d;
        if ((j11 == -9223372036854775807L && this.f51461e == -9223372036854775807L) || ((j11 <= j10 && this.f51461e == -9223372036854775807L) || ((j11 == -9223372036854775807L && j10 < this.f51461e) || (j11 <= j10 && j10 < this.f51461e)))) {
            return true;
        }
        return false;
    }
}
