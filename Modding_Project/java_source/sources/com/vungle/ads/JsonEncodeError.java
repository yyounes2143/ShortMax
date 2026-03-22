package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VungleError.kt */
@Metadata
/* loaded from: classes7.dex */
public final class JsonEncodeError extends VungleError {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonEncodeError(@NotNull String msg) {
        super(Sdk.SDKError.Reason.JSON_ENCODE_ERROR, msg, null);
        Intrinsics.checkNotNullParameter(msg, "msg");
    }
}
