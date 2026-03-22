package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.Metadata;
/* compiled from: VungleError.kt */
@Metadata
/* loaded from: classes7.dex */
public final class HeartbeatMissingError extends VungleError {
    public HeartbeatMissingError() {
        super(Sdk.SDKError.Reason.AD_CLOSED_MISSING_HEARTBEAT, "Ad closed without receiving heartbeat", null);
    }
}
