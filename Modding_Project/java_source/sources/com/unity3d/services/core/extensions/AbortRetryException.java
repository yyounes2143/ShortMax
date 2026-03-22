package com.unity3d.services.core.extensions;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TaskExtensions.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AbortRetryException extends Exception {
    @NotNull
    private final String reason;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbortRetryException(@NotNull String reason) {
        super(reason);
        Intrinsics.checkNotNullParameter(reason, "reason");
        this.reason = reason;
    }
}
