package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VungleError.kt */
@Metadata
/* loaded from: classes7.dex */
public final class NoSpaceError extends VungleError {
    public NoSpaceError() {
        this(null, 1, null);
    }

    public /* synthetic */ NoSpaceError(String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "No space left on device" : str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoSpaceError(@NotNull String msg) {
        super(Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE, msg, null);
        Intrinsics.checkNotNullParameter(msg, "msg");
    }
}
