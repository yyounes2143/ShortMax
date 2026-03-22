package io.ktor.utils.io.core.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: UTF8.kt */
@Metadata
/* loaded from: classes8.dex */
public final class MalformedUTF8InputException extends Exception {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MalformedUTF8InputException(@NotNull String message) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
