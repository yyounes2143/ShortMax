package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.Metadata;
/* compiled from: VungleError.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AdExpiredOnPlayError extends VungleError {
    public AdExpiredOnPlayError() {
        super(Sdk.SDKError.Reason.AD_EXPIRED_ON_PLAY, "Ad expired upon playback request", null);
    }
}
