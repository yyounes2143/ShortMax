package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VungleError.kt */
@Metadata
/* loaded from: classes7.dex */
public final class EvaluateJsError extends VungleError {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EvaluateJsError(@NotNull String msg) {
        super(Sdk.SDKError.Reason.EVALUATE_JAVASCRIPT_FAILED, msg, null);
        Intrinsics.checkNotNullParameter(msg, "msg");
    }
}
