package com.unity3d.ads.beta;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ShowListener.kt */
@Metadata
/* loaded from: classes7.dex */
public interface RewardedShowListener extends ShowListener<RewardedAd> {
    void showDidReceiveReward(@NotNull RewardedAd rewardedAd);
}
