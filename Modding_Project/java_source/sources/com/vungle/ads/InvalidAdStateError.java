package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VungleError.kt */
@Metadata
/* loaded from: classes7.dex */
public final class InvalidAdStateError extends VungleError {
    public /* synthetic */ InvalidAdStateError(Sdk.SDKError.Reason reason, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(reason, (i10 & 2) != 0 ? "Ad state is invalid" : str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InvalidAdStateError(@NotNull Sdk.SDKError.Reason loggableReason, @NotNull String errorMessage) {
        super(loggableReason, errorMessage, null);
        Intrinsics.checkNotNullParameter(loggableReason, "loggableReason");
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
    }
}
