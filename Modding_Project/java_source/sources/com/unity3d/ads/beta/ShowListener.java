package com.unity3d.ads.beta;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ShowListener.kt */
@Metadata
/* loaded from: classes7.dex */
public interface ShowListener<UnityAd> {
    void showClick(UnityAd unityad);

    void showComplete(UnityAd unityad, @NotNull ShowFinishState showFinishState);

    void showFailed(UnityAd unityad, @NotNull UnityAdsError unityAdsError);

    void showImpression(UnityAd unityad);

    void showStart(UnityAd unityad);
}
