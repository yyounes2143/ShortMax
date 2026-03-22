package com.unity3d.ads.core.domain.scar;

import com.google.protobuf.ByteString;
import com.unity3d.services.ads.gmascar.models.BiddingSignals;
import gatewayprotocol.v1.UniversalResponseOuterClass;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: HandleGetTokenRequest.kt */
@Metadata
/* loaded from: classes7.dex */
public interface HandleGetTokenRequest {
    @Nullable
    Object invoke(@NotNull ByteString byteString, @NotNull BiddingSignals biddingSignals, @NotNull c<? super UniversalResponseOuterClass.UniversalResponse> cVar);
}
