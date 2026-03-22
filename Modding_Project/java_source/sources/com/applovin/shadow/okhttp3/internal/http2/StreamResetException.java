package com.applovin.shadow.okhttp3.internal.http2;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: StreamResetException.kt */
@Metadata
/* loaded from: classes2.dex */
public final class StreamResetException extends IOException {
    @NotNull
    public final ErrorCode errorCode;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StreamResetException(@NotNull ErrorCode errorCode) {
        super("stream was reset: " + errorCode);
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        this.errorCode = errorCode;
    }
}
