package com.startshorts.androidplayer.bean.ad;

import com.startshorts.androidplayer.bean.configure.AdmobPreloadConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdNewConfig.kt */
@Metadata
/* loaded from: classes6.dex */
public final class AdNewConfig {
    @Nullable
    private final AdConfig adConfig;
    @Nullable
    private final AdmobPreloadConfig admobPreloadConfig;

    public AdNewConfig() {
        this(null, null, 3, null);
    }

    public static /* synthetic */ AdNewConfig copy$default(AdNewConfig adNewConfig, AdConfig adConfig, AdmobPreloadConfig admobPreloadConfig, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            adConfig = adNewConfig.adConfig;
        }
        if ((i10 & 2) != 0) {
            admobPreloadConfig = adNewConfig.admobPreloadConfig;
        }
        return adNewConfig.copy(adConfig, admobPreloadConfig);
    }

    @Nullable
    public final AdConfig component1() {
        return this.adConfig;
    }

    @Nullable
    public final AdmobPreloadConfig component2() {
        return this.admobPreloadConfig;
    }

    @NotNull
    public final AdNewConfig copy(@Nullable AdConfig adConfig, @Nullable AdmobPreloadConfig admobPreloadConfig) {
        return new AdNewConfig(adConfig, admobPreloadConfig);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdNewConfig)) {
            return false;
        }
        AdNewConfig adNewConfig = (AdNewConfig) obj;
        if (Intrinsics.areEqual(this.adConfig, adNewConfig.adConfig) && Intrinsics.areEqual(this.admobPreloadConfig, adNewConfig.admobPreloadConfig)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final AdConfig getAdConfig() {
        return this.adConfig;
    }

    @Nullable
    public final AdmobPreloadConfig getAdmobPreloadConfig() {
        return this.admobPreloadConfig;
    }

    public int hashCode() {
        int hashCode;
        AdConfig adConfig = this.adConfig;
        int i10 = 0;
        if (adConfig == null) {
            hashCode = 0;
        } else {
            hashCode = adConfig.hashCode();
        }
        int i11 = hashCode * 31;
        AdmobPreloadConfig admobPreloadConfig = this.admobPreloadConfig;
        if (admobPreloadConfig != null) {
            i10 = admobPreloadConfig.hashCode();
        }
        return i11 + i10;
    }

    @NotNull
    public String toString() {
        return "AdNewConfig(adConfig=" + this.adConfig + ", admobPreloadConfig=" + this.admobPreloadConfig + ')';
    }

    public AdNewConfig(@Nullable AdConfig adConfig, @Nullable AdmobPreloadConfig admobPreloadConfig) {
        this.adConfig = adConfig;
        this.admobPreloadConfig = admobPreloadConfig;
    }

    public /* synthetic */ AdNewConfig(AdConfig adConfig, AdmobPreloadConfig admobPreloadConfig, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : adConfig, (i10 & 2) != 0 ? null : admobPreloadConfig);
    }
}
