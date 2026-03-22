package com.inmobi.unification.sdk.model.Initialization;

import androidx.annotation.Keep;
import com.inmobi.media.C3087ne;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Keep
@Metadata
/* loaded from: classes5.dex */
public final class TimeoutConfigurations$PreloadConfig {
    @NotNull
    private TimeoutConfigurations$AdPreloadConfig audio;
    @NotNull
    private TimeoutConfigurations$AdPreloadConfig banner;
    @NotNull

    /* renamed from: int  reason: not valid java name */
    private TimeoutConfigurations$AdPreloadConfig f28int;
    @NotNull

    /* renamed from: native  reason: not valid java name */
    private TimeoutConfigurations$AdPreloadConfig f29native;

    public TimeoutConfigurations$PreloadConfig() {
        C3087ne.Companion.getClass();
        this.banner = new TimeoutConfigurations$AdPreloadConfig(C3087ne.K(), C3087ne.J(), C3087ne.H(), C3087ne.L(), C3087ne.I());
        this.f28int = new TimeoutConfigurations$AdPreloadConfig(C3087ne.O(), C3087ne.N(), C3087ne.Q(), C3087ne.P(), C3087ne.M());
        this.f29native = new TimeoutConfigurations$AdPreloadConfig(C3087ne.T(), C3087ne.S(), C3087ne.V(), C3087ne.U(), C3087ne.R());
        this.audio = new TimeoutConfigurations$AdPreloadConfig(C3087ne.E(), C3087ne.D(), C3087ne.G(), C3087ne.F(), C3087ne.C());
    }

    @NotNull
    public final TimeoutConfigurations$AdPreloadConfig getAudio() {
        return this.audio;
    }

    @NotNull
    public final TimeoutConfigurations$AdPreloadConfig getBanner() {
        return this.banner;
    }

    @NotNull
    public final TimeoutConfigurations$AdPreloadConfig getInterstitial() {
        return this.f28int;
    }

    @NotNull
    public final TimeoutConfigurations$AdPreloadConfig getNative() {
        return this.f29native;
    }

    public final boolean isValid() {
        if (this.banner.isValid() && this.f28int.isValid() && this.f29native.isValid() && this.audio.isValid()) {
            return true;
        }
        return false;
    }
}
