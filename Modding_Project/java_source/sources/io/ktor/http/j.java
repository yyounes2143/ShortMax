package io.ktor.http;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: URLBuilder.kt */
@Metadata
@SourceDebugExtension({"SMAP\nURLBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 URLBuilder.kt\nio/ktor/http/URLBuilderKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,308:1\n1360#2:309\n1446#2,5:310\n1549#2:315\n1620#2,3:316\n11335#3:319\n11670#3,3:320\n*S KotlinDebug\n*F\n+ 1 URLBuilder.kt\nio/ktor/http/URLBuilderKt\n*L\n188#1:309\n188#1:310,5\n189#1:315\n189#1:316,3\n211#1:319\n211#1:320,3\n*E\n"})
/* loaded from: classes8.dex */
public final class j {
    private static final void b(Appendable appendable, String str, String str2) {
        appendable.append("://");
        appendable.append(str);
        if (!StringsKt.b1(str2, '/', false, 2, null)) {
            appendable.append('/');
        }
        appendable.append(str2);
    }

    private static final void c(Appendable appendable, String str, String str2) {
        appendable.append(":");
        appendable.append(str);
        appendable.append(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <A extends Appendable> A d(h hVar, A a10) {
        a10.append(hVar.o().d());
        String d10 = hVar.o().d();
        if (Intrinsics.areEqual(d10, "file")) {
            b(a10, hVar.j(), f(hVar));
            return a10;
        } else if (Intrinsics.areEqual(d10, "mailto")) {
            c(a10, g(hVar), hVar.j());
            return a10;
        } else {
            a10.append("://");
            a10.append(e(hVar));
            URLUtilsKt.d(a10, f(hVar), hVar.e(), hVar.p());
            if (hVar.d().length() > 0) {
                a10.append('#');
                a10.append(hVar.d());
            }
            return a10;
        }
    }

    @NotNull
    public static final String e(@NotNull h hVar) {
        Intrinsics.checkNotNullParameter(hVar, "<this>");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(g(hVar));
        sb2.append(hVar.j());
        if (hVar.n() != 0 && hVar.n() != hVar.o().c()) {
            sb2.append(":");
            sb2.append(String.valueOf(hVar.n()));
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }

    @NotNull
    public static final String f(@NotNull h hVar) {
        Intrinsics.checkNotNullParameter(hVar, "<this>");
        return h(hVar.g());
    }

    @NotNull
    public static final String g(@NotNull h hVar) {
        Intrinsics.checkNotNullParameter(hVar, "<this>");
        StringBuilder sb2 = new StringBuilder();
        URLUtilsKt.e(sb2, hVar.h(), hVar.f());
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }

    private static final String h(List<String> list) {
        if (list.isEmpty()) {
            return "";
        }
        if (list.size() == 1) {
            if (((CharSequence) CollectionsKt.r0(list)).length() == 0) {
                return DomExceptionUtils.SEPARATOR;
            }
            return (String) CollectionsKt.r0(list);
        }
        return CollectionsKt.A0(list, DomExceptionUtils.SEPARATOR, null, null, 0, null, null, 62, null);
    }

    public static final void i(@NotNull h hVar, @NotNull String value) {
        List<String> g12;
        Intrinsics.checkNotNullParameter(hVar, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        if (StringsKt.t0(value)) {
            g12 = CollectionsKt.n();
        } else if (Intrinsics.areEqual(value, DomExceptionUtils.SEPARATOR)) {
            g12 = URLParserKt.d();
        } else {
            g12 = CollectionsKt.g1(StringsKt.Y0(value, new char[]{'/'}, false, 0, 6, null));
        }
        hVar.u(g12);
    }
}
