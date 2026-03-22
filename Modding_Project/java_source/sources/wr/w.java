package wr;

import io.ktor.http.URLUtilsKt;
import io.ktor.http.Url;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Url.kt */
@Metadata
/* loaded from: classes8.dex */
public final class w {
    @NotNull
    public static final String a(@NotNull Url url) {
        Intrinsics.checkNotNullParameter(url, "<this>");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(b(url));
        if (url.l() != 0 && url.l() != url.k().c()) {
            sb2.append(URLUtilsKt.f(url));
        } else {
            sb2.append(url.g());
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }

    @NotNull
    public static final String b(@NotNull Url url) {
        Intrinsics.checkNotNullParameter(url, "<this>");
        StringBuilder sb2 = new StringBuilder();
        URLUtilsKt.e(sb2, url.f(), url.c());
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }
}
