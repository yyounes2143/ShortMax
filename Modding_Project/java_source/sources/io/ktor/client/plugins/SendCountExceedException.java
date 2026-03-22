package io.ktor.client.plugins;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: HttpSend.kt */
@Metadata
/* loaded from: classes8.dex */
public final class SendCountExceedException extends IllegalStateException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SendCountExceedException(@NotNull String message) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
