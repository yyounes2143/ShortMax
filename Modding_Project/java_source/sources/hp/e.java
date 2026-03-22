package hp;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import bn.a;
import cn.b0;
import cn.m0;
import cn.r;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import hp.e;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: WebvttCueParser.java */
/* loaded from: classes8.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f53191a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f53192b = Pattern.compile("(\\S+?):(\\S+)");

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, Integer> f53193c;

    /* renamed from: d  reason: collision with root package name */
    private static final Map<String, Integer> f53194d;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WebvttCueParser.java */
    /* loaded from: classes8.dex */
    public static class b {

        /* renamed from: c  reason: collision with root package name */
        private static final Comparator<b> f53195c = new Comparator() { // from class: hp.f
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int e10;
                e10 = e.b.e((e.b) obj, (e.b) obj2);
                return e10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        private final c f53196a;

        /* renamed from: b  reason: collision with root package name */
        private final int f53197b;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int e(b bVar, b bVar2) {
            return Integer.compare(bVar.f53196a.f53199b, bVar2.f53196a.f53199b);
        }

        private b(c cVar, int i10) {
            this.f53196a = cVar;
            this.f53197b = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WebvttCueParser.java */
    /* loaded from: classes8.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final String f53198a;

        /* renamed from: b  reason: collision with root package name */
        public final int f53199b;

        /* renamed from: c  reason: collision with root package name */
        public final String f53200c;

        /* renamed from: d  reason: collision with root package name */
        public final Set<String> f53201d;

        private c(String str, int i10, String str2, Set<String> set) {
            this.f53199b = i10;
            this.f53198a = str;
            this.f53200c = str2;
            this.f53201d = set;
        }

        public static c a(String str, int i10) {
            String str2;
            String trim = str.trim();
            cn.a.a(!trim.isEmpty());
            int indexOf = trim.indexOf(" ");
            if (indexOf == -1) {
                str2 = "";
            } else {
                String trim2 = trim.substring(indexOf).trim();
                trim = trim.substring(0, indexOf);
                str2 = trim2;
            }
            String[] m12 = m0.m1(trim, "\\.");
            String str3 = m12[0];
            HashSet hashSet = new HashSet();
            for (int i11 = 1; i11 < m12.length; i11++) {
                hashSet.add(m12[i11]);
            }
            return new c(str3, i10, str2, hashSet);
        }

        public static c b() {
            return new c("", 0, "", Collections.emptySet());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WebvttCueParser.java */
    /* loaded from: classes8.dex */
    public static final class d implements Comparable<d> {

        /* renamed from: a  reason: collision with root package name */
        public final int f53202a;

        /* renamed from: b  reason: collision with root package name */
        public final hp.c f53203b;

        public d(int i10, hp.c cVar) {
            this.f53202a = i10;
            this.f53203b = cVar;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(d dVar) {
            return Integer.compare(this.f53202a, dVar.f53202a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WebvttCueParser.java */
    /* renamed from: hp.e$e  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0770e {

        /* renamed from: c  reason: collision with root package name */
        public CharSequence f53206c;

        /* renamed from: a  reason: collision with root package name */
        public long f53204a = 0;

        /* renamed from: b  reason: collision with root package name */
        public long f53205b = 0;

        /* renamed from: d  reason: collision with root package name */
        public int f53207d = 2;

        /* renamed from: e  reason: collision with root package name */
        public float f53208e = -3.4028235E38f;

        /* renamed from: f  reason: collision with root package name */
        public int f53209f = 1;

        /* renamed from: g  reason: collision with root package name */
        public int f53210g = 0;

        /* renamed from: h  reason: collision with root package name */
        public float f53211h = -3.4028235E38f;

        /* renamed from: i  reason: collision with root package name */
        public int f53212i = Integer.MIN_VALUE;

        /* renamed from: j  reason: collision with root package name */
        public float f53213j = 1.0f;

        /* renamed from: k  reason: collision with root package name */
        public int f53214k = Integer.MIN_VALUE;

        private static float b(float f10, int i10) {
            int i11 = (f10 > (-3.4028235E38f) ? 1 : (f10 == (-3.4028235E38f) ? 0 : -1));
            if (i11 != 0 && i10 == 0 && (f10 < 0.0f || f10 > 1.0f)) {
                return 1.0f;
            }
            if (i11 != 0) {
                return f10;
            }
            if (i10 != 0) {
                return -3.4028235E38f;
            }
            return 1.0f;
        }

        @Nullable
        private static Layout.Alignment c(int i10) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 != 5) {
                                r.h("WebvttCueParser", "Unknown textAlignment: " + i10);
                                return null;
                            }
                        }
                    }
                    return Layout.Alignment.ALIGN_OPPOSITE;
                }
                return Layout.Alignment.ALIGN_CENTER;
            }
            return Layout.Alignment.ALIGN_NORMAL;
        }

        private static float d(int i10, float f10) {
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        return f10;
                    }
                    throw new IllegalStateException(String.valueOf(i10));
                } else if (f10 <= 0.5f) {
                    return f10 * 2.0f;
                } else {
                    return (1.0f - f10) * 2.0f;
                }
            }
            return 1.0f - f10;
        }

        private static float e(int i10) {
            if (i10 != 4) {
                if (i10 != 5) {
                    return 0.5f;
                }
                return 1.0f;
            }
            return 0.0f;
        }

        private static int f(int i10) {
            if (i10 != 1) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            return 1;
                        }
                        return 2;
                    }
                    return 0;
                }
                return 2;
            }
            return 0;
        }

        public hp.d a() {
            return new hp.d(g().a(), this.f53204a, this.f53205b);
        }

        public a.b g() {
            float f10 = this.f53211h;
            if (f10 == -3.4028235E38f) {
                f10 = e(this.f53207d);
            }
            int i10 = this.f53212i;
            if (i10 == Integer.MIN_VALUE) {
                i10 = f(this.f53207d);
            }
            a.b r10 = new a.b().p(c(this.f53207d)).h(b(this.f53208e, this.f53209f), this.f53209f).i(this.f53210g).k(f10).l(i10).n(Math.min(this.f53213j, d(i10, f10))).r(this.f53214k);
            CharSequence charSequence = this.f53206c;
            if (charSequence != null) {
                r10.o(charSequence);
            }
            return r10;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap.put("lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap.put("cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap.put("red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap.put("yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap.put("magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap.put("blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap.put("black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f53193c = Collections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f53194d = Collections.unmodifiableMap(hashMap2);
    }

    private static void a(SpannableStringBuilder spannableStringBuilder, Set<String> set, int i10, int i11) {
        for (String str : set) {
            Map<String, Integer> map = f53193c;
            if (map.containsKey(str)) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(map.get(str).intValue()), i10, i11, 33);
            } else {
                Map<String, Integer> map2 = f53194d;
                if (map2.containsKey(str)) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(map2.get(str).intValue()), i10, i11, 33);
                }
            }
        }
    }

    private static void b(String str, SpannableStringBuilder spannableStringBuilder) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case 3309:
                if (str.equals("gt")) {
                    c10 = 0;
                    break;
                }
                break;
            case 3464:
                if (str.equals("lt")) {
                    c10 = 1;
                    break;
                }
                break;
            case 96708:
                if (str.equals("amp")) {
                    c10 = 2;
                    break;
                }
                break;
            case 3374865:
                if (str.equals("nbsp")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                spannableStringBuilder.append('>');
                return;
            case 1:
                spannableStringBuilder.append('<');
                return;
            case 2:
                spannableStringBuilder.append('&');
                return;
            case 3:
                spannableStringBuilder.append(' ');
                return;
            default:
                r.h("WebvttCueParser", "ignoring unsupported entity: '&" + str + ";'");
                return;
        }
    }

    private static void c(SpannableStringBuilder spannableStringBuilder, @Nullable String str, c cVar, List<b> list, List<hp.c> list2) {
        int j10 = j(list2, str, cVar);
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        Collections.sort(arrayList, b.f53195c);
        int i10 = cVar.f53199b;
        int i11 = 0;
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            if ("rt".equals(((b) arrayList.get(i12)).f53196a.f53198a)) {
                b bVar = (b) arrayList.get(i12);
                int h10 = h(j(list2, str, bVar.f53196a), j10, 1);
                int i13 = bVar.f53196a.f53199b - i11;
                int i14 = bVar.f53197b - i11;
                CharSequence subSequence = spannableStringBuilder.subSequence(i13, i14);
                spannableStringBuilder.delete(i13, i14);
                spannableStringBuilder.setSpan(new bn.f(subSequence.toString(), h10), i10, i13, 33);
                i11 += subSequence.length();
                i10 = i13;
            }
        }
    }

    private static void d(@Nullable String str, c cVar, List<b> list, SpannableStringBuilder spannableStringBuilder, List<hp.c> list2) {
        int i10 = cVar.f53199b;
        int length = spannableStringBuilder.length();
        String str2 = cVar.f53198a;
        str2.hashCode();
        char c10 = 65535;
        switch (str2.hashCode()) {
            case 0:
                if (str2.equals("")) {
                    c10 = 0;
                    break;
                }
                break;
            case 98:
                if (str2.equals(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B)) {
                    c10 = 1;
                    break;
                }
                break;
            case 99:
                if (str2.equals("c")) {
                    c10 = 2;
                    break;
                }
                break;
            case 105:
                if (str2.equals("i")) {
                    c10 = 3;
                    break;
                }
                break;
            case 117:
                if (str2.equals("u")) {
                    c10 = 4;
                    break;
                }
                break;
            case 118:
                if (str2.equals("v")) {
                    c10 = 5;
                    break;
                }
                break;
            case 3314158:
                if (str2.equals(CommonConstant.ReqAccessTokenParam.LANGUAGE_LABEL)) {
                    c10 = 6;
                    break;
                }
                break;
            case 3511770:
                if (str2.equals("ruby")) {
                    c10 = 7;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 6:
                break;
            case 1:
                spannableStringBuilder.setSpan(new StyleSpan(1), i10, length, 33);
                break;
            case 2:
                a(spannableStringBuilder, cVar.f53201d, i10, length);
                break;
            case 3:
                spannableStringBuilder.setSpan(new StyleSpan(2), i10, length, 33);
                break;
            case 4:
                spannableStringBuilder.setSpan(new UnderlineSpan(), i10, length, 33);
                break;
            case 5:
                f(spannableStringBuilder, cVar.f53200c, i10, length);
                break;
            case 7:
                c(spannableStringBuilder, str, cVar, list, list2);
                break;
            default:
                return;
        }
        List<d> i11 = i(list2, str, cVar);
        for (int i12 = 0; i12 < i11.size(); i12++) {
            e(spannableStringBuilder, i11.get(i12).f53203b, i10, length);
        }
    }

    private static void e(SpannableStringBuilder spannableStringBuilder, hp.c cVar, int i10, int i11) {
        if (cVar == null) {
            return;
        }
        if (cVar.i() != -1) {
            bn.g.b(spannableStringBuilder, new StyleSpan(cVar.i()), i10, i11, 33);
        }
        if (cVar.l()) {
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i10, i11, 33);
        }
        if (cVar.m()) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i10, i11, 33);
        }
        if (cVar.k()) {
            bn.g.b(spannableStringBuilder, new ForegroundColorSpan(cVar.c()), i10, i11, 33);
        }
        if (cVar.j()) {
            bn.g.b(spannableStringBuilder, new BackgroundColorSpan(cVar.a()), i10, i11, 33);
        }
        if (cVar.d() != null) {
            bn.g.b(spannableStringBuilder, new TypefaceSpan(cVar.d()), i10, i11, 33);
        }
        int f10 = cVar.f();
        if (f10 != 1) {
            if (f10 != 2) {
                if (f10 == 3) {
                    bn.g.b(spannableStringBuilder, new RelativeSizeSpan(cVar.e() / 100.0f), i10, i11, 33);
                }
            } else {
                bn.g.b(spannableStringBuilder, new RelativeSizeSpan(cVar.e()), i10, i11, 33);
            }
        } else {
            bn.g.b(spannableStringBuilder, new AbsoluteSizeSpan((int) cVar.e(), true), i10, i11, 33);
        }
        if (cVar.b()) {
            spannableStringBuilder.setSpan(new bn.d(), i10, i11, 33);
        }
    }

    private static void f(SpannableStringBuilder spannableStringBuilder, String str, int i10, int i11) {
        spannableStringBuilder.setSpan(new bn.i(str), i10, i11, 33);
    }

    private static int g(String str, int i10) {
        int indexOf = str.indexOf(62, i10);
        if (indexOf == -1) {
            return str.length();
        }
        return indexOf + 1;
    }

    private static int h(int i10, int i11, int i12) {
        if (i10 != -1) {
            return i10;
        }
        if (i11 != -1) {
            return i11;
        }
        if (i12 != -1) {
            return i12;
        }
        throw new IllegalArgumentException();
    }

    private static List<d> i(List<hp.c> list, @Nullable String str, c cVar) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            hp.c cVar2 = list.get(i10);
            int h10 = cVar2.h(str, cVar.f53198a, cVar.f53201d, cVar.f53200c);
            if (h10 > 0) {
                arrayList.add(new d(h10, cVar2));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static int j(List<hp.c> list, @Nullable String str, c cVar) {
        List<d> i10 = i(list, str, cVar);
        for (int i11 = 0; i11 < i10.size(); i11++) {
            hp.c cVar2 = i10.get(i11).f53203b;
            if (cVar2.g() != -1) {
                return cVar2.g();
            }
        }
        return -1;
    }

    private static String k(String str) {
        String trim = str.trim();
        cn.a.a(!trim.isEmpty());
        return m0.n1(trim, "[ \\.]")[0];
    }

    private static boolean l(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case 98:
                if (str.equals(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B)) {
                    c10 = 0;
                    break;
                }
                break;
            case 99:
                if (str.equals("c")) {
                    c10 = 1;
                    break;
                }
                break;
            case 105:
                if (str.equals("i")) {
                    c10 = 2;
                    break;
                }
                break;
            case 117:
                if (str.equals("u")) {
                    c10 = 3;
                    break;
                }
                break;
            case 118:
                if (str.equals("v")) {
                    c10 = 4;
                    break;
                }
                break;
            case 3650:
                if (str.equals("rt")) {
                    c10 = 5;
                    break;
                }
                break;
            case 3314158:
                if (str.equals(CommonConstant.ReqAccessTokenParam.LANGUAGE_LABEL)) {
                    c10 = 6;
                    break;
                }
                break;
            case 3511770:
                if (str.equals("ruby")) {
                    c10 = 7;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                return true;
            default:
                return false;
        }
    }

    @VisibleForTesting(otherwise = 3)
    public static bn.a m(CharSequence charSequence) {
        C0770e c0770e = new C0770e();
        c0770e.f53206c = charSequence;
        return c0770e.g().a();
    }

    @Nullable
    public static hp.d n(b0 b0Var, List<hp.c> list) {
        String s10 = b0Var.s();
        if (s10 == null) {
            return null;
        }
        Pattern pattern = f53191a;
        Matcher matcher = pattern.matcher(s10);
        if (matcher.matches()) {
            return o(null, matcher, b0Var, list);
        }
        String s11 = b0Var.s();
        if (s11 == null) {
            return null;
        }
        Matcher matcher2 = pattern.matcher(s11);
        if (!matcher2.matches()) {
            return null;
        }
        return o(s10.trim(), matcher2, b0Var, list);
    }

    @Nullable
    private static hp.d o(@Nullable String str, Matcher matcher, b0 b0Var, List<hp.c> list) {
        C0770e c0770e = new C0770e();
        try {
            c0770e.f53204a = h.d((String) cn.a.e(matcher.group(1)));
            c0770e.f53205b = h.d((String) cn.a.e(matcher.group(2)));
            q((String) cn.a.e(matcher.group(3)), c0770e);
            StringBuilder sb2 = new StringBuilder();
            String s10 = b0Var.s();
            while (!TextUtils.isEmpty(s10)) {
                if (sb2.length() > 0) {
                    sb2.append("\n");
                }
                sb2.append(s10.trim());
                s10 = b0Var.s();
            }
            c0770e.f53206c = r(str, sb2.toString(), list);
            return c0770e.a();
        } catch (IllegalArgumentException unused) {
            r.h("WebvttCueParser", "Skipping cue with bad header: " + matcher.group());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a.b p(String str) {
        C0770e c0770e = new C0770e();
        q(str, c0770e);
        return c0770e.g();
    }

    private static void q(String str, C0770e c0770e) {
        Matcher matcher = f53192b.matcher(str);
        while (matcher.find()) {
            String str2 = (String) cn.a.e(matcher.group(1));
            String str3 = (String) cn.a.e(matcher.group(2));
            try {
                if ("line".equals(str2)) {
                    t(str3, c0770e);
                } else if ("align".equals(str2)) {
                    c0770e.f53207d = w(str3);
                } else if ("position".equals(str2)) {
                    v(str3, c0770e);
                } else if ("size".equals(str2)) {
                    c0770e.f53213j = h.c(str3);
                } else if ("vertical".equals(str2)) {
                    c0770e.f53214k = x(str3);
                } else {
                    r.h("WebvttCueParser", "Unknown cue setting " + str2 + ":" + str3);
                }
            } catch (NumberFormatException unused) {
                r.h("WebvttCueParser", "Skipping bad cue setting: " + matcher.group());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SpannedString r(@Nullable String str, String str2, List<hp.c> list) {
        boolean z10;
        boolean z11;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (i10 < str2.length()) {
            char charAt = str2.charAt(i10);
            if (charAt != '&') {
                if (charAt != '<') {
                    spannableStringBuilder.append(charAt);
                    i10++;
                } else {
                    int i11 = i10 + 1;
                    if (i11 < str2.length()) {
                        int i12 = 1;
                        if (str2.charAt(i11) == '/') {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        i11 = g(str2, i11);
                        int i13 = i11 - 2;
                        if (str2.charAt(i13) == '/') {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        if (z10) {
                            i12 = 2;
                        }
                        int i14 = i10 + i12;
                        if (!z11) {
                            i13 = i11 - 1;
                        }
                        String substring = str2.substring(i14, i13);
                        if (!substring.trim().isEmpty()) {
                            String k10 = k(substring);
                            if (l(k10)) {
                                if (z10) {
                                    while (!arrayDeque.isEmpty()) {
                                        c cVar = (c) arrayDeque.pop();
                                        d(str, cVar, arrayList, spannableStringBuilder, list);
                                        if (!arrayDeque.isEmpty()) {
                                            arrayList.add(new b(cVar, spannableStringBuilder.length()));
                                        } else {
                                            arrayList.clear();
                                        }
                                        if (cVar.f53198a.equals(k10)) {
                                            break;
                                        }
                                    }
                                } else if (!z11) {
                                    arrayDeque.push(c.a(substring, spannableStringBuilder.length()));
                                }
                            }
                        }
                    }
                    i10 = i11;
                }
            } else {
                i10++;
                int indexOf = str2.indexOf(59, i10);
                int indexOf2 = str2.indexOf(32, i10);
                if (indexOf == -1) {
                    indexOf = indexOf2;
                } else if (indexOf2 != -1) {
                    indexOf = Math.min(indexOf, indexOf2);
                }
                if (indexOf != -1) {
                    b(str2.substring(i10, indexOf), spannableStringBuilder);
                    if (indexOf == indexOf2) {
                        spannableStringBuilder.append((CharSequence) " ");
                    }
                    i10 = indexOf + 1;
                } else {
                    spannableStringBuilder.append(charAt);
                }
            }
        }
        while (!arrayDeque.isEmpty()) {
            d(str, (c) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
        }
        d(str, c.b(), Collections.emptyList(), spannableStringBuilder, list);
        return SpannedString.valueOf(spannableStringBuilder);
    }

    private static int s(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    c10 = 0;
                    break;
                }
                break;
            case -1074341483:
                if (str.equals("middle")) {
                    c10 = 1;
                    break;
                }
                break;
            case 100571:
                if (str.equals("end")) {
                    c10 = 2;
                    break;
                }
                break;
            case 109757538:
                if (str.equals("start")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 0;
            default:
                r.h("WebvttCueParser", "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    private static void t(String str, C0770e c0770e) {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            c0770e.f53210g = s(str.substring(indexOf + 1));
            str = str.substring(0, indexOf);
        }
        if (str.endsWith("%")) {
            c0770e.f53208e = h.c(str);
            c0770e.f53209f = 0;
            return;
        }
        c0770e.f53208e = Integer.parseInt(str);
        c0770e.f53209f = 1;
    }

    private static int u(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1842484672:
                if (str.equals("line-left")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    c10 = 1;
                    break;
                }
                break;
            case -1276788989:
                if (str.equals("line-right")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1074341483:
                if (str.equals("middle")) {
                    c10 = 3;
                    break;
                }
                break;
            case 100571:
                if (str.equals("end")) {
                    c10 = 4;
                    break;
                }
                break;
            case 109757538:
                if (str.equals("start")) {
                    c10 = 5;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 5:
                return 0;
            case 1:
            case 3:
                return 1;
            case 2:
            case 4:
                return 2;
            default:
                r.h("WebvttCueParser", "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    private static void v(String str, C0770e c0770e) {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            c0770e.f53212i = u(str.substring(indexOf + 1));
            str = str.substring(0, indexOf);
        }
        c0770e.f53211h = h.c(str);
    }

    private static int w(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    c10 = 0;
                    break;
                }
                break;
            case -1074341483:
                if (str.equals("middle")) {
                    c10 = 1;
                    break;
                }
                break;
            case 100571:
                if (str.equals("end")) {
                    c10 = 2;
                    break;
                }
                break;
            case 3317767:
                if (str.equals(TtmlNode.LEFT)) {
                    c10 = 3;
                    break;
                }
                break;
            case 108511772:
                if (str.equals(TtmlNode.RIGHT)) {
                    c10 = 4;
                    break;
                }
                break;
            case 109757538:
                if (str.equals("start")) {
                    c10 = 5;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 1;
            default:
                r.h("WebvttCueParser", "Invalid alignment value: " + str);
                return 2;
        }
    }

    private static int x(String str) {
        str.hashCode();
        if (!str.equals("lr")) {
            if (!str.equals("rl")) {
                r.h("WebvttCueParser", "Invalid 'vertical' value: " + str);
                return Integer.MIN_VALUE;
            }
            return 1;
        }
        return 2;
    }
}
