package io.ktor.http;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: URLParser.kt */
@Metadata
/* loaded from: classes8.dex */
public final class URLParserException extends IllegalStateException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public URLParserException(@NotNull String urlString, @NotNull Throwable cause) {
        super("Fail to parse url: " + urlString, cause);
        Intrinsics.checkNotNullParameter(urlString, "urlString");
        Intrinsics.checkNotNullParameter(cause, "cause");
    }
}
