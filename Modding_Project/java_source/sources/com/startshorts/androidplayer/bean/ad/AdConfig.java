package com.startshorts.androidplayer.bean.ad;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdNewConfig.kt */
@Metadata
/* loaded from: classes6.dex */
public final class AdConfig {
    @Nullable
    private final BackHomeInt backHomeInt;
    @Nullable
    private final FreeEpisodeInt freeEpisodeInt;
    @Nullable
    private final HotSplash hotSplash;

    public AdConfig() {
        this(null, null, null, 7, null);
    }

    public static /* synthetic */ AdConfig copy$default(AdConfig adConfig, FreeEpisodeInt freeEpisodeInt, BackHomeInt backHomeInt, HotSplash hotSplash, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            freeEpisodeInt = adConfig.freeEpisodeInt;
        }
        if ((i10 & 2) != 0) {
            backHomeInt = adConfig.backHomeInt;
        }
        if ((i10 & 4) != 0) {
            hotSplash = adConfig.hotSplash;
        }
        return adConfig.copy(freeEpisodeInt, backHomeInt, hotSplash);
    }

    @Nullable
    public final FreeEpisodeInt component1() {
        return this.freeEpisodeInt;
    }

    @Nullable
    public final BackHomeInt component2() {
        return this.backHomeInt;
    }

    @Nullable
    public final HotSplash component3() {
        return this.hotSplash;
    }

    @NotNull
    public final AdConfig copy(@Nullable FreeEpisodeInt freeEpisodeInt, @Nullable BackHomeInt backHomeInt, @Nullable HotSplash hotSplash) {
        return new AdConfig(freeEpisodeInt, backHomeInt, hotSplash);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdConfig)) {
            return false;
        }
        AdConfig adConfig = (AdConfig) obj;
        if (Intrinsics.areEqual(this.freeEpisodeInt, adConfig.freeEpisodeInt) && Intrinsics.areEqual(this.backHomeInt, adConfig.backHomeInt) && Intrinsics.areEqual(this.hotSplash, adConfig.hotSplash)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final BackHomeInt getBackHomeInt() {
        return this.backHomeInt;
    }

    @Nullable
    public final FreeEpisodeInt getFreeEpisodeInt() {
        return this.freeEpisodeInt;
    }

    @Nullable
    public final HotSplash getHotSplash() {
        return this.hotSplash;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        FreeEpisodeInt freeEpisodeInt = this.freeEpisodeInt;
        int i10 = 0;
        if (freeEpisodeInt == null) {
            hashCode = 0;
        } else {
            hashCode = freeEpisodeInt.hashCode();
        }
        int i11 = hashCode * 31;
        BackHomeInt backHomeInt = this.backHomeInt;
        if (backHomeInt == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = backHomeInt.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        HotSplash hotSplash = this.hotSplash;
        if (hotSplash != null) {
            i10 = hotSplash.hashCode();
        }
        return i12 + i10;
    }

    @NotNull
    public String toString() {
        return "AdConfig(freeEpisodeInt=" + this.freeEpisodeInt + ", backHomeInt=" + this.backHomeInt + ", hotSplash=" + this.hotSplash + ')';
    }

    public AdConfig(@Nullable FreeEpisodeInt freeEpisodeInt, @Nullable BackHomeInt backHomeInt, @Nullable HotSplash hotSplash) {
        this.freeEpisodeInt = freeEpisodeInt;
        this.backHomeInt = backHomeInt;
        this.hotSplash = hotSplash;
    }

    public /* synthetic */ AdConfig(FreeEpisodeInt freeEpisodeInt, BackHomeInt backHomeInt, HotSplash hotSplash, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : freeEpisodeInt, (i10 & 2) != 0 ? null : backHomeInt, (i10 & 4) != 0 ? null : hotSplash);
    }
}
