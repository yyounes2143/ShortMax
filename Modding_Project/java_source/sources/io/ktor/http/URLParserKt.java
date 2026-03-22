package io.ktor.http;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: URLParser.kt */
@Metadata
@SourceDebugExtension({"SMAP\nURLParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 URLParser.kt\nio/ktor/http/URLParserKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,263:1\n151#2,6:264\n163#2,6:270\n1#3:276\n*S KotlinDebug\n*F\n+ 1 URLParser.kt\nio/ktor/http/URLParserKt\n*L\n34#1:264,6\n35#1:270,6\n*E\n"})
/* loaded from: classes8.dex */
public final class URLParserKt {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final List<String> f59194a = CollectionsKt.e("");

    private static final int a(String str, int i10, int i11, char c10) {
        int i12 = 0;
        while (true) {
            int i13 = i10 + i12;
            if (i13 >= i11 || str.charAt(i13) != c10) {
                break;
            }
            i12++;
        }
        return i12;
    }

    private static final void b(h hVar, String str, int i10, int i11) {
        int i12;
        Integer valueOf = Integer.valueOf(e(str, i10, i11));
        if (valueOf.intValue() <= 0) {
            valueOf = null;
        }
        if (valueOf != null) {
            i12 = valueOf.intValue();
        } else {
            i12 = i11;
        }
        String substring = str.substring(i10, i12);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        hVar.w(substring);
        int i13 = i12 + 1;
        if (i13 < i11) {
            String substring2 = str.substring(i13, i11);
            Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
            hVar.x(Integer.parseInt(substring2));
            return;
        }
        hVar.x(0);
    }

    private static final int c(String str, int i10, int i11) {
        int i12;
        int i13;
        char charAt = str.charAt(i10);
        if (('a' <= charAt && charAt < '{') || ('A' <= charAt && charAt < '[')) {
            i12 = i10;
            i13 = -1;
        } else {
            i12 = i10;
            i13 = i12;
        }
        while (i12 < i11) {
            char charAt2 = str.charAt(i12);
            if (charAt2 == ':') {
                if (i13 == -1) {
                    return i12 - i10;
                }
                throw new IllegalArgumentException("Illegal character in scheme at position " + i13);
            } else if (charAt2 == '/' || charAt2 == '?' || charAt2 == '#') {
                break;
            } else {
                if (i13 == -1 && (('a' > charAt2 || charAt2 >= '{') && (('A' > charAt2 || charAt2 >= '[') && (('0' > charAt2 || charAt2 >= ':') && charAt2 != '.' && charAt2 != '+' && charAt2 != '-')))) {
                    i13 = i12;
                }
                i12++;
            }
        }
        return -1;
    }

    @NotNull
    public static final List<String> d() {
        return f59194a;
    }

    private static final int e(String str, int i10, int i11) {
        boolean z10 = false;
        while (i10 < i11) {
            char charAt = str.charAt(i10);
            if (charAt == '[') {
                z10 = true;
            } else if (charAt == ']') {
                z10 = false;
            } else if (charAt == ':' && !z10) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    private static final void f(h hVar, String str, int i10, int i11, int i12) {
        if (i12 != 2) {
            if (i12 == 3) {
                hVar.w("");
                StringBuilder sb2 = new StringBuilder();
                sb2.append('/');
                String substring = str.substring(i10, i11);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                sb2.append(substring);
                j.i(hVar, sb2.toString());
                return;
            }
            throw new IllegalArgumentException("Invalid file url: " + str);
        }
        int p02 = StringsKt.p0(str, '/', i10, false, 4, null);
        if (p02 != -1 && p02 != i11) {
            String substring2 = str.substring(i10, p02);
            Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
            hVar.w(substring2);
            String substring3 = str.substring(p02, i11);
            Intrinsics.checkNotNullExpressionValue(substring3, "this as java.lang.String…ing(startIndex, endIndex)");
            j.i(hVar, substring3);
            return;
        }
        String substring4 = str.substring(i10, i11);
        Intrinsics.checkNotNullExpressionValue(substring4, "this as java.lang.String…ing(startIndex, endIndex)");
        hVar.w(substring4);
    }

    private static final void g(h hVar, String str, int i10, int i11) {
        if (i10 < i11 && str.charAt(i10) == '#') {
            String substring = str.substring(i10 + 1, i11);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            hVar.r(substring);
        }
    }

    private static final void h(h hVar, String str, int i10, int i11) {
        int q02 = StringsKt.q0(str, "@", i10, false, 4, null);
        if (q02 != -1) {
            String substring = str.substring(i10, q02);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            hVar.A(CodecsKt.i(substring, 0, 0, null, 7, null));
            String substring2 = str.substring(q02 + 1, i11);
            Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
            hVar.w(substring2);
            return;
        }
        throw new IllegalArgumentException("Invalid mailto url: " + str + ", it should contain '@'.");
    }

    private static final int i(final h hVar, String str, int i10, int i11) {
        int i12 = i10 + 1;
        if (i12 == i11) {
            hVar.z(true);
            return i11;
        }
        Integer valueOf = Integer.valueOf(StringsKt.p0(str, '#', i12, false, 4, null));
        if (valueOf.intValue() <= 0) {
            valueOf = null;
        }
        if (valueOf != null) {
            i11 = valueOf.intValue();
        }
        String substring = str.substring(i12, i11);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        g.d(substring, 0, 0, false, 6, null).d(new Function2<String, List<? extends String>, Unit>() { // from class: io.ktor.http.URLParserKt$parseQuery$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            public final void b(@NotNull String key, @NotNull List<String> values) {
                Intrinsics.checkNotNullParameter(key, "key");
                Intrinsics.checkNotNullParameter(values, "values");
                h.this.e().d(key, values);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(String str2, List<? extends String> list) {
                b(str2, list);
                return Unit.f60915a;
            }
        });
        return i11;
    }

    @NotNull
    public static final h j(@NotNull h hVar, @NotNull String urlString) {
        Intrinsics.checkNotNullParameter(hVar, "<this>");
        Intrinsics.checkNotNullParameter(urlString, "urlString");
        if (StringsKt.t0(urlString)) {
            return hVar;
        }
        try {
            return k(hVar, urlString);
        } catch (Throwable th2) {
            throw new URLParserException(urlString, th2);
        }
    }

    @NotNull
    public static final h k(@NotNull h hVar, @NotNull String urlString) {
        int i10;
        List<String> n10;
        int i11;
        List<String> g10;
        List<String> Y0;
        List<String> n11;
        List<String> n12;
        int i12;
        Intrinsics.checkNotNullParameter(hVar, "<this>");
        Intrinsics.checkNotNullParameter(urlString, "urlString");
        int length = urlString.length();
        int i13 = 0;
        while (true) {
            if (i13 < length) {
                if (!CharsKt.b(urlString.charAt(i13))) {
                    break;
                }
                i13++;
            } else {
                i13 = -1;
                break;
            }
        }
        int length2 = urlString.length() - 1;
        if (length2 >= 0) {
            while (true) {
                int i14 = length2 - 1;
                if (!CharsKt.b(urlString.charAt(length2))) {
                    i10 = length2;
                    break;
                } else if (i14 < 0) {
                    break;
                } else {
                    length2 = i14;
                }
            }
        }
        i10 = -1;
        int i15 = i10 + 1;
        int c10 = c(urlString, i13, i15);
        if (c10 > 0) {
            String substring = urlString.substring(i13, i13 + c10);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            hVar.y(k.f59275c.a(substring));
            i13 += c10 + 1;
        }
        int a10 = a(urlString, i13, i15, '/');
        int i16 = i13 + a10;
        if (Intrinsics.areEqual(hVar.o().d(), "file")) {
            f(hVar, urlString, i16, i15, a10);
            return hVar;
        } else if (Intrinsics.areEqual(hVar.o().d(), "mailto")) {
            if (a10 == 0) {
                h(hVar, urlString, i16, i15);
                return hVar;
            }
            throw new IllegalArgumentException("Failed requirement.");
        } else {
            Integer num = null;
            if (a10 >= 2) {
                int i17 = i16;
                while (true) {
                    i12 = i17;
                    Integer valueOf = Integer.valueOf(StringsKt.s0(urlString, yr.g.b("@/\\?#"), i17, false, 4, null));
                    if (valueOf.intValue() <= 0) {
                        valueOf = null;
                    }
                    if (valueOf != null) {
                        i16 = valueOf.intValue();
                    } else {
                        i16 = i15;
                    }
                    if (i16 >= i15 || urlString.charAt(i16) != '@') {
                        break;
                    }
                    int e10 = e(urlString, i12, i16);
                    if (e10 != -1) {
                        String substring2 = urlString.substring(i12, e10);
                        Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
                        hVar.v(substring2);
                        String substring3 = urlString.substring(e10 + 1, i16);
                        Intrinsics.checkNotNullExpressionValue(substring3, "this as java.lang.String…ing(startIndex, endIndex)");
                        hVar.t(substring3);
                    } else {
                        String substring4 = urlString.substring(i12, i16);
                        Intrinsics.checkNotNullExpressionValue(substring4, "this as java.lang.String…ing(startIndex, endIndex)");
                        hVar.v(substring4);
                    }
                    i17 = i16 + 1;
                }
                b(hVar, urlString, i12, i16);
            }
            int i18 = i16;
            if (i18 >= i15) {
                if (urlString.charAt(i10) == '/') {
                    n12 = f59194a;
                } else {
                    n12 = CollectionsKt.n();
                }
                hVar.u(n12);
                return hVar;
            }
            if (a10 == 0) {
                n10 = CollectionsKt.k0(hVar.g(), 1);
            } else {
                n10 = CollectionsKt.n();
            }
            hVar.u(n10);
            Integer valueOf2 = Integer.valueOf(StringsKt.s0(urlString, yr.g.b("?#"), i18, false, 4, null));
            if (valueOf2.intValue() > 0) {
                num = valueOf2;
            }
            if (num != null) {
                i11 = num.intValue();
            } else {
                i11 = i15;
            }
            if (i11 > i18) {
                String substring5 = urlString.substring(i18, i11);
                Intrinsics.checkNotNullExpressionValue(substring5, "this as java.lang.String…ing(startIndex, endIndex)");
                if (hVar.g().size() == 1 && ((CharSequence) CollectionsKt.r0(hVar.g())).length() == 0) {
                    g10 = CollectionsKt.n();
                } else {
                    g10 = hVar.g();
                }
                if (Intrinsics.areEqual(substring5, DomExceptionUtils.SEPARATOR)) {
                    Y0 = f59194a;
                } else {
                    Y0 = StringsKt.Y0(substring5, new char[]{'/'}, false, 0, 6, null);
                }
                if (a10 == 1) {
                    n11 = f59194a;
                } else {
                    n11 = CollectionsKt.n();
                }
                hVar.u(CollectionsKt.K0(g10, CollectionsKt.K0(n11, Y0)));
                i18 = i11;
            }
            if (i18 < i15 && urlString.charAt(i18) == '?') {
                i18 = i(hVar, urlString, i18, i15);
            }
            g(hVar, urlString, i18, i15);
            return hVar;
        }
    }
}
