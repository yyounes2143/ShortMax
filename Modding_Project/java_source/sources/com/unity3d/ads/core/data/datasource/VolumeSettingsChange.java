package com.unity3d.ads.core.data.datasource;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidDynamicDeviceInfoDataSource.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class VolumeSettingsChange {

    /* compiled from: AndroidDynamicDeviceInfoDataSource.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class MuteChange extends VolumeSettingsChange {
        private final boolean isMuted;

        public MuteChange(boolean z10) {
            super(null);
            this.isMuted = z10;
        }

        public static /* synthetic */ MuteChange copy$default(MuteChange muteChange, boolean z10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                z10 = muteChange.isMuted;
            }
            return muteChange.copy(z10);
        }

        public final boolean component1() {
            return this.isMuted;
        }

        @NotNull
        public final MuteChange copy(boolean z10) {
            return new MuteChange(z10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof MuteChange) && this.isMuted == ((MuteChange) obj).isMuted) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            boolean z10 = this.isMuted;
            if (z10) {
                return 1;
            }
            return z10 ? 1 : 0;
        }

        public final boolean isMuted() {
            return this.isMuted;
        }

        @NotNull
        public String toString() {
            return "MuteChange(isMuted=" + this.isMuted + ')';
        }
    }

    /* compiled from: AndroidDynamicDeviceInfoDataSource.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class VolumeChange extends VolumeSettingsChange {
        private final double volume;

        public VolumeChange(double d10) {
            super(null);
            this.volume = d10;
        }

        public static /* synthetic */ VolumeChange copy$default(VolumeChange volumeChange, double d10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                d10 = volumeChange.volume;
            }
            return volumeChange.copy(d10);
        }

        public final double component1() {
            return this.volume;
        }

        @NotNull
        public final VolumeChange copy(double d10) {
            return new VolumeChange(d10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof VolumeChange) && Double.compare(this.volume, ((VolumeChange) obj).volume) == 0) {
                return true;
            }
            return false;
        }

        public final double getVolume() {
            return this.volume;
        }

        public int hashCode() {
            return Double.hashCode(this.volume);
        }

        @NotNull
        public String toString() {
            return "VolumeChange(volume=" + this.volume + ')';
        }
    }

    public /* synthetic */ VolumeSettingsChange(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private VolumeSettingsChange() {
    }
}
