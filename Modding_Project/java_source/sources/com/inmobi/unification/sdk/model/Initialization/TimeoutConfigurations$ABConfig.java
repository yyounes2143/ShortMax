package com.inmobi.unification.sdk.model.Initialization;

import androidx.annotation.Keep;
import com.inmobi.media.C3087ne;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Keep
@Metadata
/* loaded from: classes5.dex */
public final class TimeoutConfigurations$ABConfig {
    @NotNull
    private TimeoutConfigurations$AdABConfig audio;
    @NotNull
    private TimeoutConfigurations$AdABConfig banner;
    @NotNull

    /* renamed from: int  reason: not valid java name */
    private TimeoutConfigurations$AdABConfig f24int;
    @NotNull

    /* renamed from: native  reason: not valid java name */
    private TimeoutConfigurations$AdABConfig f25native;

    public TimeoutConfigurations$ABConfig() {
        C3087ne.Companion.getClass();
        this.banner = new TimeoutConfigurations$AdABConfig(C3087ne.f(), C3087ne.e(), C3087ne.d());
        this.f24int = new TimeoutConfigurations$AdABConfig(C3087ne.i(), C3087ne.h(), C3087ne.g());
        this.f25native = new TimeoutConfigurations$AdABConfig(C3087ne.l(), C3087ne.k(), C3087ne.j());
        this.audio = new TimeoutConfigurations$AdABConfig(C3087ne.c(), C3087ne.b(), C3087ne.a());
    }

    @NotNull
    public final TimeoutConfigurations$AdABConfig getAudio() {
        return this.audio;
    }

    @NotNull
    public final TimeoutConfigurations$AdABConfig getBanner() {
        return this.banner;
    }

    @NotNull
    public final TimeoutConfigurations$AdABConfig getInterstitial() {
        return this.f24int;
    }

    @NotNull
    public final TimeoutConfigurations$AdABConfig getNative() {
        return this.f25native;
    }

    public final boolean isValid() {
        if (this.banner.isValid() && this.f24int.isValid() && this.f25native.isValid() && this.audio.isValid()) {
            return true;
        }
        return false;
    }
}
