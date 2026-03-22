package com.google.ads.mediation.mintegral;

import android.content.Context;
import com.mbridge.msdk.newinterstitial.out.NewInterstitialWithCodeListener;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: MintegralFactory.kt */
@Metadata
/* loaded from: classes4.dex */
public interface MintegralNewInterstitialAdWrapper {
    void createAd(@NotNull Context context, @NotNull String str, @NotNull String str2);

    void load();

    void playVideoMute(int i10);

    void setInterstitialVideoListener(@NotNull NewInterstitialWithCodeListener newInterstitialWithCodeListener);

    void show();
}
