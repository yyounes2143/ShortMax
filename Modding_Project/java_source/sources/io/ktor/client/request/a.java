package io.ktor.client.request;

import io.ktor.http.URLParserKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import wr.g;
import wr.l;
/* compiled from: HttpRequest.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHttpRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpRequest.kt\nio/ktor/client/request/HttpRequestKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,307:1\n1#2:308\n*E\n"})
/* loaded from: classes8.dex */
public final class a {
    @NotNull
    public static final g a(@NotNull l lVar, @NotNull Function1<? super g, Unit> block) {
        Intrinsics.checkNotNullParameter(lVar, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        g a10 = lVar.a();
        block.invoke(a10);
        return a10;
    }

    public static final void b(@NotNull HttpRequestBuilder httpRequestBuilder, @NotNull String urlString) {
        Intrinsics.checkNotNullParameter(httpRequestBuilder, "<this>");
        Intrinsics.checkNotNullParameter(urlString, "urlString");
        URLParserKt.j(httpRequestBuilder.i(), urlString);
    }
}
