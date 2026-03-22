package com.inmobi.ads.listeners;

import com.inmobi.ads.AudioStatus;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiAudio;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes5.dex */
public abstract class AudioAdEventListener extends AdEventListener<InMobiAudio> {
    public void onAdDismissed(@NotNull InMobiAudio ad2) {
        Intrinsics.checkNotNullParameter(ad2, "ad");
    }

    public void onAdDisplayFailed(@NotNull InMobiAudio ad2) {
        Intrinsics.checkNotNullParameter(ad2, "ad");
    }

    public void onAdDisplayed(@NotNull InMobiAudio ad2) {
        Intrinsics.checkNotNullParameter(ad2, "ad");
    }

    public void onAdFetchFailed(@NotNull InMobiAudio ad2, @NotNull InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(ad2, "ad");
        Intrinsics.checkNotNullParameter(status, "status");
    }

    public void onAudioStatusChanged(@NotNull InMobiAudio ad2, @NotNull AudioStatus audioStatus) {
        Intrinsics.checkNotNullParameter(ad2, "ad");
        Intrinsics.checkNotNullParameter(audioStatus, "audioStatus");
    }

    public void onRewardsUnlocked(@NotNull InMobiAudio ad2, @NotNull Map<Object, ? extends Object> rewards) {
        Intrinsics.checkNotNullParameter(ad2, "ad");
        Intrinsics.checkNotNullParameter(rewards, "rewards");
    }

    public void onUserLeftApplication(@NotNull InMobiAudio ad2) {
        Intrinsics.checkNotNullParameter(ad2, "ad");
    }
}
