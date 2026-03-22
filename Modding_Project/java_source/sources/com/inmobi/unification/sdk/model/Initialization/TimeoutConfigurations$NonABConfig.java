package com.inmobi.unification.sdk.model.Initialization;

import androidx.annotation.Keep;
import com.inmobi.media.C3087ne;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Keep
@Metadata
/* loaded from: classes5.dex */
public final class TimeoutConfigurations$NonABConfig {
    @NotNull
    private TimeoutConfigurations$AdNonABConfig audio;
    @NotNull
    private TimeoutConfigurations$AdNonABConfig banner;
    @NotNull

    /* renamed from: int  reason: not valid java name */
    private TimeoutConfigurations$AdNonABConfig f26int;
    @NotNull

    /* renamed from: native  reason: not valid java name */
    private TimeoutConfigurations$AdNonABConfig f27native;

    public TimeoutConfigurations$NonABConfig() {
        C3087ne.Companion.getClass();
        this.banner = new TimeoutConfigurations$AdNonABConfig(C3087ne.t(), C3087ne.r(), C3087ne.s(), C3087ne.q());
        this.f26int = new TimeoutConfigurations$AdNonABConfig(C3087ne.x(), C3087ne.v(), C3087ne.w(), C3087ne.u());
        this.f27native = new TimeoutConfigurations$AdNonABConfig(C3087ne.B(), C3087ne.z(), C3087ne.A(), C3087ne.y());
        this.audio = new TimeoutConfigurations$AdNonABConfig(C3087ne.p(), C3087ne.n(), C3087ne.o(), C3087ne.m());
    }

    @NotNull
    public final TimeoutConfigurations$AdNonABConfig getAudio() {
        return this.audio;
    }

    @NotNull
    public final TimeoutConfigurations$AdNonABConfig getBanner() {
        return this.banner;
    }

    @NotNull
    public final TimeoutConfigurations$AdNonABConfig getInterstitial() {
        return this.f26int;
    }

    @NotNull
    public final TimeoutConfigurations$AdNonABConfig getNative() {
        return this.f27native;
    }

    public final boolean isValid() {
        if (this.banner.isValid() && this.f26int.isValid() && this.f27native.isValid() && this.audio.isValid()) {
            return true;
        }
        return false;
    }
}
