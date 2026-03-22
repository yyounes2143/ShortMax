package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VungleError.kt */
@Metadata
/* loaded from: classes7.dex */
public final class MraidJsError extends VungleError {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MraidJsError(@NotNull Sdk.SDKError.Reason reason, @NotNull String errorMessage) {
        super(reason, errorMessage, null);
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
    }
}
