package com.inmobi.ads.core;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import org.jetbrains.annotations.NotNull;
@Keep
@Metadata
/* loaded from: classes5.dex */
public final class Trackers {
    @NotNull
    private final String type = "";
    @NotNull
    private final List<String> imExts = CollectionsKt.n();
    @NotNull
    private final List<String> url = CollectionsKt.n();

    @NotNull
    public final List<String> getImExts() {
        return this.imExts;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    @NotNull
    public final List<String> getUrl() {
        return this.url;
    }
}
