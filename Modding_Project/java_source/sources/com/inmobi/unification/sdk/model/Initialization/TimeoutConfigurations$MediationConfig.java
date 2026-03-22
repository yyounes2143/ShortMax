package com.inmobi.unification.sdk.model.Initialization;

import androidx.annotation.Keep;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Keep
@Metadata
/* loaded from: classes5.dex */
public final class TimeoutConfigurations$MediationConfig {
    @NotNull

    /* renamed from: ab  reason: collision with root package name */
    private TimeoutConfigurations$ABConfig f25521ab = new TimeoutConfigurations$ABConfig();
    @NotNull
    private TimeoutConfigurations$NonABConfig nonAb = new TimeoutConfigurations$NonABConfig();
    @NotNull
    private TimeoutConfigurations$PreloadConfig preload = new TimeoutConfigurations$PreloadConfig();

    @NotNull
    public final TimeoutConfigurations$ABConfig getABConfig() {
        return this.f25521ab;
    }

    @NotNull
    public final TimeoutConfigurations$NonABConfig getNonABConfig() {
        return this.nonAb;
    }

    @NotNull
    public final TimeoutConfigurations$PreloadConfig getPreloadConfig() {
        return this.preload;
    }

    public final boolean isValid() {
        if (this.f25521ab.isValid() && this.nonAb.isValid() && this.preload.isValid()) {
            return true;
        }
        return false;
    }
}
