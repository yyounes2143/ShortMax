package com.startshorts.androidplayer.bean.configure;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PlayerPreloadConfig.kt */
@Metadata
/* loaded from: classes6.dex */
public final class PlayerPreloadConfig {
    private final int preloadCount;
    private final int preloadSize;
    @NotNull
    private final String resolution;
    private final int startBufferLimit;
    private final int stopBufferLimit;

    public PlayerPreloadConfig(@NotNull String resolution, int i10, int i11, int i12, int i13) {
        Intrinsics.checkNotNullParameter(resolution, "resolution");
        this.resolution = resolution;
        this.preloadCount = i10;
        this.preloadSize = i11;
        this.startBufferLimit = i12;
        this.stopBufferLimit = i13;
    }

    public static /* synthetic */ PlayerPreloadConfig copy$default(PlayerPreloadConfig playerPreloadConfig, String str, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            str = playerPreloadConfig.resolution;
        }
        if ((i14 & 2) != 0) {
            i10 = playerPreloadConfig.preloadCount;
        }
        int i15 = i10;
        if ((i14 & 4) != 0) {
            i11 = playerPreloadConfig.preloadSize;
        }
        int i16 = i11;
        if ((i14 & 8) != 0) {
            i12 = playerPreloadConfig.startBufferLimit;
        }
        int i17 = i12;
        if ((i14 & 16) != 0) {
            i13 = playerPreloadConfig.stopBufferLimit;
        }
        return playerPreloadConfig.copy(str, i15, i16, i17, i13);
    }

    @NotNull
    public final String component1() {
        return this.resolution;
    }

    public final int component2() {
        return this.preloadCount;
    }

    public final int component3() {
        return this.preloadSize;
    }

    public final int component4() {
        return this.startBufferLimit;
    }

    public final int component5() {
        return this.stopBufferLimit;
    }

    @NotNull
    public final PlayerPreloadConfig copy(@NotNull String resolution, int i10, int i11, int i12, int i13) {
        Intrinsics.checkNotNullParameter(resolution, "resolution");
        return new PlayerPreloadConfig(resolution, i10, i11, i12, i13);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlayerPreloadConfig)) {
            return false;
        }
        PlayerPreloadConfig playerPreloadConfig = (PlayerPreloadConfig) obj;
        if (Intrinsics.areEqual(this.resolution, playerPreloadConfig.resolution) && this.preloadCount == playerPreloadConfig.preloadCount && this.preloadSize == playerPreloadConfig.preloadSize && this.startBufferLimit == playerPreloadConfig.startBufferLimit && this.stopBufferLimit == playerPreloadConfig.stopBufferLimit) {
            return true;
        }
        return false;
    }

    public final int getPreloadCount() {
        return this.preloadCount;
    }

    public final int getPreloadSize() {
        return this.preloadSize;
    }

    @NotNull
    public final String getResolution() {
        return this.resolution;
    }

    public final int getStartBufferLimit() {
        return this.startBufferLimit;
    }

    public final int getStopBufferLimit() {
        return this.stopBufferLimit;
    }

    public int hashCode() {
        return (((((((this.resolution.hashCode() * 31) + Integer.hashCode(this.preloadCount)) * 31) + Integer.hashCode(this.preloadSize)) * 31) + Integer.hashCode(this.startBufferLimit)) * 31) + Integer.hashCode(this.stopBufferLimit);
    }

    @NotNull
    public String toString() {
        return "PlayerPreloadConfig(resolution=" + this.resolution + ", preloadCount=" + this.preloadCount + ", preloadSize=" + this.preloadSize + ", startBufferLimit=" + this.startBufferLimit + ", stopBufferLimit=" + this.stopBufferLimit + ')';
    }
}
