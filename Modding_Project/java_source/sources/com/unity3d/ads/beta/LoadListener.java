package com.unity3d.ads.beta;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: LoadListener.kt */
@Metadata
/* loaded from: classes7.dex */
public interface LoadListener<UnityAd> {
    void onAdLoaded(@Nullable UnityAd unityad, @Nullable UnityAdsError unityAdsError);
}
