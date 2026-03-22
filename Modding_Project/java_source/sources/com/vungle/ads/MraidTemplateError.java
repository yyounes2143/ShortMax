package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VungleError.kt */
@Metadata
/* loaded from: classes7.dex */
public final class MraidTemplateError extends VungleError {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MraidTemplateError(@NotNull Sdk.SDKError.Reason loggableReason, @NotNull String message) {
        super(loggableReason, message, null);
        Intrinsics.checkNotNullParameter(loggableReason, "loggableReason");
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
