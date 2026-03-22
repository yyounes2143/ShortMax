package com.vungle.ads.internal.model;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdvertisingInfo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AdvertisingInfo {
    @Nullable
    private String advertisingId;
    private boolean limitAdTracking;

    @Nullable
    public final String getAdvertisingId() {
        return this.advertisingId;
    }

    public final boolean getLimitAdTracking() {
        return this.limitAdTracking;
    }

    public final void setAdvertisingId(@Nullable String str) {
        this.advertisingId = str;
    }

    public final void setLimitAdTracking(boolean z10) {
        this.limitAdTracking = z10;
    }
}
