package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VungleError.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SdkNotInitialized extends VungleError {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SdkNotInitialized(@NotNull String message) {
        super(Sdk.SDKError.Reason.SDK_NOT_INITIALIZED, message, null);
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
