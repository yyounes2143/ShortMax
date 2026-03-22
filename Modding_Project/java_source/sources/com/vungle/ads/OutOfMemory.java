package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VungleError.kt */
@Metadata
/* loaded from: classes7.dex */
public final class OutOfMemory extends VungleError {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OutOfMemory(@NotNull String errorMessage) {
        super(Sdk.SDKError.Reason.OUT_OF_MEMORY, errorMessage, null);
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
    }
}
