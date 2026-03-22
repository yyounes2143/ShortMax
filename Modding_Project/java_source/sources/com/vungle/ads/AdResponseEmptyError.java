package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VungleError.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AdResponseEmptyError extends VungleError {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdResponseEmptyError(@NotNull String message) {
        super(Sdk.SDKError.Reason.AD_RESPONSE_EMPTY, message, null);
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
