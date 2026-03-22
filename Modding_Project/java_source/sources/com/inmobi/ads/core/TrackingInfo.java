package com.inmobi.ads.core;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import org.jetbrains.annotations.NotNull;
@Keep
@Metadata
/* loaded from: classes5.dex */
public final class TrackingInfo {
    @NotNull
    private final String imBaseUrl = "";
    @NotNull
    private final List<Trackers> trackers = CollectionsKt.n();

    @NotNull
    public final String getImBaseUrl() {
        return this.imBaseUrl;
    }

    @NotNull
    public final List<Trackers> getTrackers() {
        return this.trackers;
    }
}
