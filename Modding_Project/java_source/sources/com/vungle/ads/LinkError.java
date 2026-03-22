package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VungleError.kt */
@Metadata
/* loaded from: classes7.dex */
public final class LinkError extends VungleError {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LinkError(@NotNull Sdk.SDKError.Reason reason, @NotNull String msg) {
        super(reason, msg, null);
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(msg, "msg");
    }
}
