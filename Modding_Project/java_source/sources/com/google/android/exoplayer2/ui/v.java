package com.google.android.exoplayer2.ui;

import android.text.Html;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ui.v;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.google.common.collect.ImmutableMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SpannedToHtmlConverter.java */
/* loaded from: classes4.dex */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f19043a = Pattern.compile("(&#13;)?&#10;");

    /* compiled from: SpannedToHtmlConverter.java */
    /* loaded from: classes4.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f19044a;

        /* renamed from: b  reason: collision with root package name */
        public final Map<String, String> f19045b;

        private b(String str, Map<String, String> map) {
            this.f19044a = str;
            this.f19045b = map;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SpannedToHtmlConverter.java */
    /* loaded from: classes4.dex */
    public static final class c {

        /* renamed from: e  reason: collision with root package name */
        private static final Comparator<c> f19046e = new Comparator() { // from class: com.google.android.exoplayer2.ui.w
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int e10;
                e10 = v.c.e((v.c) obj, (v.c) obj2);
                return e10;
            }
        };

        /* renamed from: f  reason: collision with root package name */
        private static final Comparator<c> f19047f = new Comparator() { // from class: com.google.android.exoplayer2.ui.x
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int f10;
                f10 = v.c.f((v.c) obj, (v.c) obj2);
                return f10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final int f19048a;

        /* renamed from: b  reason: collision with root package name */
        public final int f19049b;

        /* renamed from: c  reason: collision with root package name */
        public final String f19050c;

        /* renamed from: d  reason: collision with root package name */
        public final String f19051d;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int e(c cVar, c cVar2) {
            int compare = Integer.compare(cVar2.f19049b, cVar.f19049b);
            if (compare != 0) {
                return compare;
            }
            int compareTo = cVar.f19050c.compareTo(cVar2.f19050c);
            if (compareTo != 0) {
                return compareTo;
            }
            return cVar.f19051d.compareTo(cVar2.f19051d);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int f(c cVar, c cVar2) {
            int compare = Integer.compare(cVar2.f19048a, cVar.f19048a);
            if (compare != 0) {
                return compare;
            }
            int compareTo = cVar2.f19050c.compareTo(cVar.f19050c);
            if (compareTo != 0) {
                return compareTo;
            }
            return cVar2.f19051d.compareTo(cVar.f19051d);
        }

        private c(int i10, int i11, String str, String str2) {
            this.f19048a = i10;
            this.f19049b = i11;
            this.f19050c = str;
            this.f19051d = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SpannedToHtmlConverter.java */
    /* loaded from: classes4.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final List<c> f19052a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private final List<c> f19053b = new ArrayList();
    }

    public static b a(@Nullable CharSequence charSequence, float f10) {
        if (charSequence == null) {
            return new b("", ImmutableMap.q());
        }
        if (!(charSequence instanceof Spanned)) {
            return new b(b(charSequence), ImmutableMap.q());
        }
        Spanned spanned = (Spanned) charSequence;
        HashSet<Integer> hashSet = new HashSet();
        int i10 = 0;
        for (BackgroundColorSpan backgroundColorSpan : (BackgroundColorSpan[]) spanned.getSpans(0, spanned.length(), BackgroundColorSpan.class)) {
            hashSet.add(Integer.valueOf(backgroundColorSpan.getBackgroundColor()));
        }
        HashMap hashMap = new HashMap();
        for (Integer num : hashSet) {
            int intValue = num.intValue();
            hashMap.put(g.a("bg_" + intValue), b7.s0.z("background-color:%s;", g.b(intValue)));
        }
        SparseArray<d> c10 = c(spanned, f10);
        StringBuilder sb2 = new StringBuilder(spanned.length());
        int i11 = 0;
        while (i10 < c10.size()) {
            int keyAt = c10.keyAt(i10);
            sb2.append(b(spanned.subSequence(i11, keyAt)));
            d dVar = c10.get(keyAt);
            Collections.sort(dVar.f19053b, c.f19047f);
            for (c cVar : dVar.f19053b) {
                sb2.append(cVar.f19051d);
            }
            Collections.sort(dVar.f19052a, c.f19046e);
            for (c cVar2 : dVar.f19052a) {
                sb2.append(cVar2.f19050c);
            }
            i10++;
            i11 = keyAt;
        }
        sb2.append(b(spanned.subSequence(i11, spanned.length())));
        return new b(sb2.toString(), hashMap);
    }

    private static String b(CharSequence charSequence) {
        return f19043a.matcher(Html.escapeHtml(charSequence)).replaceAll("<br>");
    }

    private static SparseArray<d> c(Spanned spanned, float f10) {
        Object[] spans;
        SparseArray<d> sparseArray = new SparseArray<>();
        for (Object obj : spanned.getSpans(0, spanned.length(), Object.class)) {
            String e10 = e(obj, f10);
            String d10 = d(obj);
            int spanStart = spanned.getSpanStart(obj);
            int spanEnd = spanned.getSpanEnd(obj);
            if (e10 != null) {
                b7.a.e(d10);
                c cVar = new c(spanStart, spanEnd, e10, d10);
                f(sparseArray, spanStart).f19052a.add(cVar);
                f(sparseArray, spanEnd).f19053b.add(cVar);
            }
        }
        return sparseArray;
    }

    @Nullable
    private static String d(Object obj) {
        if ((obj instanceof StrikethroughSpan) || (obj instanceof ForegroundColorSpan) || (obj instanceof BackgroundColorSpan) || (obj instanceof t6.a) || (obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan) || (obj instanceof t6.e)) {
            return "</span>";
        }
        if (obj instanceof TypefaceSpan) {
            if (((TypefaceSpan) obj).getFamily() != null) {
                return "</span>";
            }
            return null;
        }
        if (obj instanceof StyleSpan) {
            int style = ((StyleSpan) obj).getStyle();
            if (style != 1) {
                if (style != 2) {
                    if (style == 3) {
                        return "</i></b>";
                    }
                } else {
                    return "</i>";
                }
            } else {
                return "</b>";
            }
        } else if (obj instanceof t6.c) {
            return "<rt>" + b(((t6.c) obj).f67209a) + "</rt></ruby>";
        } else if (obj instanceof UnderlineSpan) {
            return "</u>";
        }
        return null;
    }

    @Nullable
    private static String e(Object obj, float f10) {
        float size;
        if (obj instanceof StrikethroughSpan) {
            return "<span style='text-decoration:line-through;'>";
        }
        if (obj instanceof ForegroundColorSpan) {
            return b7.s0.z("<span style='color:%s;'>", g.b(((ForegroundColorSpan) obj).getForegroundColor()));
        }
        if (obj instanceof BackgroundColorSpan) {
            return b7.s0.z("<span class='bg_%s'>", Integer.valueOf(((BackgroundColorSpan) obj).getBackgroundColor()));
        }
        if (obj instanceof t6.a) {
            return "<span style='text-combine-upright:all;'>";
        }
        if (obj instanceof AbsoluteSizeSpan) {
            AbsoluteSizeSpan absoluteSizeSpan = (AbsoluteSizeSpan) obj;
            if (absoluteSizeSpan.getDip()) {
                size = absoluteSizeSpan.getSize();
            } else {
                size = absoluteSizeSpan.getSize() / f10;
            }
            return b7.s0.z("<span style='font-size:%.2fpx;'>", Float.valueOf(size));
        } else if (obj instanceof RelativeSizeSpan) {
            return b7.s0.z("<span style='font-size:%.2f%%;'>", Float.valueOf(((RelativeSizeSpan) obj).getSizeChange() * 100.0f));
        } else {
            if (obj instanceof TypefaceSpan) {
                String family = ((TypefaceSpan) obj).getFamily();
                if (family == null) {
                    return null;
                }
                return b7.s0.z("<span style='font-family:\"%s\";'>", family);
            } else if (obj instanceof StyleSpan) {
                int style = ((StyleSpan) obj).getStyle();
                if (style != 1) {
                    if (style != 2) {
                        if (style != 3) {
                            return null;
                        }
                        return "<b><i>";
                    }
                    return "<i>";
                }
                return "<b>";
            } else if (obj instanceof t6.c) {
                int i10 = ((t6.c) obj).f67210b;
                if (i10 != -1) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            return null;
                        }
                        return "<ruby style='ruby-position:under;'>";
                    }
                    return "<ruby style='ruby-position:over;'>";
                }
                return "<ruby style='ruby-position:unset;'>";
            } else if (obj instanceof UnderlineSpan) {
                return "<u>";
            } else {
                if (!(obj instanceof t6.e)) {
                    return null;
                }
                t6.e eVar = (t6.e) obj;
                return b7.s0.z("<span style='-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;'>", h(eVar.f67211a, eVar.f67212b), g(eVar.f67213c));
            }
        }
    }

    private static d f(SparseArray<d> sparseArray, int i10) {
        d dVar = sparseArray.get(i10);
        if (dVar == null) {
            d dVar2 = new d();
            sparseArray.put(i10, dVar2);
            return dVar2;
        }
        return dVar;
    }

    private static String g(int i10) {
        if (i10 != 2) {
            return "over right";
        }
        return "under left";
    }

    private static String h(int i10, int i11) {
        StringBuilder sb2 = new StringBuilder();
        if (i11 != 1) {
            if (i11 == 2) {
                sb2.append("open ");
            }
        } else {
            sb2.append("filled ");
        }
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        sb2.append("unset");
                    } else {
                        sb2.append("sesame");
                    }
                } else {
                    sb2.append("dot");
                }
            } else {
                sb2.append("circle");
            }
        } else {
            sb2.append(DevicePublicKeyStringDef.NONE);
        }
        return sb2.toString();
    }
}
