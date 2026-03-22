package com.unity3d.ads.core.domain.events;

import com.unity3d.ads.gatewayclient.RequestPolicy;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CommonUniversalRequestTtlValidator.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CommonUniversalRequestTtlValidator implements UniversalRequestTtlValidator {
    @Override // com.unity3d.ads.core.domain.events.UniversalRequestTtlValidator
    public boolean invoke(@NotNull UniversalRequestOuterClass.UniversalRequest universalRequest, @NotNull RequestPolicy requestPolicy) {
        Intrinsics.checkNotNullParameter(universalRequest, "universalRequest");
        Intrinsics.checkNotNullParameter(requestPolicy, "requestPolicy");
        if (System.currentTimeMillis() - (universalRequest.getSharedData().getTimestamps().getTimestamp().getSeconds() * 1000) < requestPolicy.getMaxDuration()) {
            return true;
        }
        return false;
    }
}
