package io.ktor.http;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Codecs.kt */
@Metadata
/* loaded from: classes8.dex */
public final class URLDecodeException extends Exception {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public URLDecodeException(@NotNull String message) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
