package io.ktor.http;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ContentTypes.kt */
@Metadata
/* loaded from: classes8.dex */
public final class BadContentTypeFormatException extends Exception {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BadContentTypeFormatException(@NotNull String value) {
        super("Bad Content-Type format: " + value);
        Intrinsics.checkNotNullParameter(value, "value");
    }
}
