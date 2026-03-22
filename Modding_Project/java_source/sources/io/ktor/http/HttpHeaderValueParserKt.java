package io.ktor.http;

import java.util.ArrayList;
import java.util.List;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HttpHeaderValueParser.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHttpHeaderValueParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpHeaderValueParser.kt\nio/ktor/http/HttpHeaderValueParserKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,224:1\n1054#2:225\n1549#2:226\n1620#2,3:227\n*S KotlinDebug\n*F\n+ 1 HttpHeaderValueParser.kt\nio/ktor/http/HttpHeaderValueParserKt\n*L\n49#1:225\n96#1:226\n96#1:227,3\n*E\n"})
/* loaded from: classes8.dex */
public final class HttpHeaderValueParserKt {
    private static final boolean a(String str, int i10) {
        int i11 = i10 + 1;
        while (i11 < str.length() && str.charAt(i11) == ' ') {
            i11++;
        }
        if (i11 == str.length() || str.charAt(i11) == ';') {
            return true;
        }
        return false;
    }

    @NotNull
    public static final List<wr.c> b(@Nullable String str) {
        return c(str, false);
    }

    @NotNull
    public static final List<wr.c> c(@Nullable String str, boolean z10) {
        if (str == null) {
            return CollectionsKt.n();
        }
        ms.i a10 = kotlin.c.a(LazyThreadSafetyMode.NONE, new Function0<ArrayList<wr.c>>() { // from class: io.ktor.http.HttpHeaderValueParserKt$parseHeaderValue$items$1
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            /* renamed from: b */
            public final ArrayList<wr.c> invoke() {
                return new ArrayList<>();
            }
        });
        int i10 = 0;
        while (i10 <= StringsKt.k0(str)) {
            i10 = d(str, i10, a10, z10);
        }
        return j(a10);
    }

    private static final int d(String str, int i10, ms.i<? extends ArrayList<wr.c>> iVar, boolean z10) {
        Integer num;
        int i11;
        int i12;
        ms.i a10 = kotlin.c.a(LazyThreadSafetyMode.NONE, new Function0<ArrayList<wr.d>>() { // from class: io.ktor.http.HttpHeaderValueParserKt$parseHeaderValueItem$parameters$1
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            /* renamed from: b */
            public final ArrayList<wr.d> invoke() {
                return new ArrayList<>();
            }
        });
        if (z10) {
            num = Integer.valueOf(i10);
        } else {
            num = null;
        }
        int i13 = i10;
        while (i13 <= StringsKt.k0(str)) {
            char charAt = str.charAt(i13);
            if (charAt == ',') {
                ArrayList<wr.c> value = iVar.getValue();
                if (num != null) {
                    i12 = num.intValue();
                } else {
                    i12 = i13;
                }
                value.add(new wr.c(i(str, i10, i12), j(a10)));
                return i13 + 1;
            } else if (charAt == ';') {
                if (num == null) {
                    num = Integer.valueOf(i13);
                }
                i13 = e(str, i13 + 1, a10);
            } else if (z10) {
                i13 = e(str, i13, a10);
            } else {
                i13++;
            }
        }
        ArrayList<wr.c> value2 = iVar.getValue();
        if (num != null) {
            i11 = num.intValue();
        } else {
            i11 = i13;
        }
        value2.add(new wr.c(i(str, i10, i11), j(a10)));
        return i13;
    }

    private static final int e(String str, int i10, ms.i<? extends ArrayList<wr.d>> iVar) {
        int i11 = i10;
        while (i11 <= StringsKt.k0(str)) {
            char charAt = str.charAt(i11);
            if (charAt == '=') {
                Pair<Integer, String> g10 = g(str, i11 + 1);
                int intValue = g10.b().intValue();
                f(iVar, str, i10, i11, g10.d());
                return intValue;
            } else if (charAt == ';' || charAt == ',') {
                f(iVar, str, i10, i11, "");
                return i11;
            } else {
                i11++;
            }
        }
        f(iVar, str, i10, i11, "");
        return i11;
    }

    private static final void f(ms.i<? extends ArrayList<wr.d>> iVar, String str, int i10, int i11, String str2) {
        String i12 = i(str, i10, i11);
        if (i12.length() == 0) {
            return;
        }
        iVar.getValue().add(new wr.d(i12, str2));
    }

    private static final Pair<Integer, String> g(String str, int i10) {
        if (str.length() == i10) {
            return ms.k.a(Integer.valueOf(i10), "");
        }
        if (str.charAt(i10) == '\"') {
            return h(str, i10 + 1);
        }
        int i11 = i10;
        while (i11 <= StringsKt.k0(str)) {
            char charAt = str.charAt(i11);
            if (charAt == ';' || charAt == ',') {
                return ms.k.a(Integer.valueOf(i11), i(str, i10, i11));
            }
            i11++;
        }
        return ms.k.a(Integer.valueOf(i11), i(str, i10, i11));
    }

    private static final Pair<Integer, String> h(String str, int i10) {
        StringBuilder sb2 = new StringBuilder();
        while (i10 <= StringsKt.k0(str)) {
            char charAt = str.charAt(i10);
            if (charAt == '\"' && a(str, i10)) {
                Integer valueOf = Integer.valueOf(i10 + 1);
                String sb3 = sb2.toString();
                Intrinsics.checkNotNullExpressionValue(sb3, "builder.toString()");
                return ms.k.a(valueOf, sb3);
            } else if (charAt == '\\' && i10 < StringsKt.k0(str) - 2) {
                sb2.append(str.charAt(i10 + 1));
                i10 += 2;
            } else {
                sb2.append(charAt);
                i10++;
            }
        }
        Integer valueOf2 = Integer.valueOf(i10);
        String sb4 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb4, "builder.toString()");
        return ms.k.a(valueOf2, '\"' + sb4);
    }

    private static final String i(String str, int i10, int i11) {
        String substring = str.substring(i10, i11);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return StringsKt.v1(substring).toString();
    }

    private static final <T> List<T> j(ms.i<? extends List<? extends T>> iVar) {
        if (iVar.isInitialized()) {
            return (List) ((List<? extends T>) iVar.getValue());
        }
        return CollectionsKt.n();
    }
}
