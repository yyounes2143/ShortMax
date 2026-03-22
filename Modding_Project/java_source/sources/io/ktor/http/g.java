package io.ktor.http;

import io.ktor.http.e;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import wr.q;
/* compiled from: Query.kt */
@Metadata
@SourceDebugExtension({"SMAP\nQuery.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Query.kt\nio/ktor/http/QueryKt\n+ 2 Parameters.kt\nio/ktor/http/Parameters$Companion\n*L\n1#1,95:1\n24#2:96\n*S KotlinDebug\n*F\n+ 1 Query.kt\nio/ktor/http/QueryKt\n*L\n14#1:96\n*E\n"})
/* loaded from: classes8.dex */
public final class g {
    private static final void a(q qVar, String str, int i10, int i11, int i12, boolean z10) {
        String substring;
        String substring2;
        String substring3;
        if (i11 == -1) {
            int f10 = f(i10, i12, str);
            int e10 = e(f10, i12, str);
            if (e10 > f10) {
                if (z10) {
                    substring3 = CodecsKt.k(str, f10, e10, false, null, 12, null);
                } else {
                    substring3 = str.substring(f10, e10);
                    Intrinsics.checkNotNullExpressionValue(substring3, "this as java.lang.String…ing(startIndex, endIndex)");
                }
                qVar.d(substring3, CollectionsKt.n());
                return;
            }
            return;
        }
        int f11 = f(i10, i11, str);
        int e11 = e(f11, i11, str);
        if (e11 > f11) {
            if (z10) {
                substring = CodecsKt.k(str, f11, e11, false, null, 12, null);
            } else {
                substring = str.substring(f11, e11);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            }
            int f12 = f(i11 + 1, i12, str);
            int e12 = e(f12, i12, str);
            if (z10) {
                substring2 = CodecsKt.k(str, f12, e12, true, null, 8, null);
            } else {
                substring2 = str.substring(f12, e12);
                Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
            }
            qVar.f(substring, substring2);
        }
    }

    private static final void b(q qVar, String str, int i10, int i11, boolean z10) {
        int i12;
        int i13;
        int k02 = StringsKt.k0(str);
        int i14 = 0;
        if (i10 <= k02) {
            int i15 = 0;
            int i16 = -1;
            int i17 = i10;
            int i18 = i17;
            while (i15 != i11) {
                char charAt = str.charAt(i17);
                if (charAt == '&') {
                    a(qVar, str, i18, i16, i17, z10);
                    i15++;
                    i16 = -1;
                    i18 = i17 + 1;
                } else if (charAt == '=' && i16 == -1) {
                    i16 = i17;
                }
                if (i17 != k02) {
                    i17++;
                } else {
                    i13 = i18;
                    i12 = i16;
                    i14 = i15;
                }
            }
            return;
        }
        i12 = -1;
        i13 = i10;
        if (i14 == i11) {
            return;
        }
        a(qVar, str, i13, i12, str.length(), z10);
    }

    @NotNull
    public static final e c(@NotNull String query, int i10, int i11, boolean z10) {
        Intrinsics.checkNotNullParameter(query, "query");
        if (i10 > StringsKt.k0(query)) {
            return e.f59260a.a();
        }
        e.a aVar = e.f59260a;
        q b10 = f.b(0, 1, null);
        b(b10, query, i10, i11, z10);
        return b10.build();
    }

    public static /* synthetic */ e d(String str, int i10, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = 1000;
        }
        if ((i12 & 8) != 0) {
            z10 = true;
        }
        return c(str, i10, i11, z10);
    }

    private static final int e(int i10, int i11, CharSequence charSequence) {
        while (i11 > i10 && CharsKt.b(charSequence.charAt(i11 - 1))) {
            i11--;
        }
        return i11;
    }

    private static final int f(int i10, int i11, CharSequence charSequence) {
        while (i10 < i11 && CharsKt.b(charSequence.charAt(i10))) {
            i10++;
        }
        return i10;
    }
}
