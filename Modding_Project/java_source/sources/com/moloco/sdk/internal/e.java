package com.moloco.sdk.internal;

import android.content.Context;
import com.moloco.sdk.publisher.Banner;
import com.moloco.sdk.publisher.InterstitialAd;
import com.moloco.sdk.publisher.NativeAd;
import com.moloco.sdk.publisher.RewardedInterstitialAd;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public interface e {
    @NotNull
    Banner a(@NotNull Context context, @NotNull com.moloco.sdk.internal.services.r rVar, @NotNull String str, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 a0Var, @NotNull n0 n0Var, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 g0Var, @NotNull com.moloco.sdk.internal.publisher.w wVar, @NotNull a aVar, @NotNull m mVar, @NotNull com.moloco.sdk.acm.recorder.a aVar2);

    @NotNull
    Banner b(@NotNull Context context, @NotNull com.moloco.sdk.internal.services.r rVar, @NotNull String str, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 a0Var, @NotNull n0 n0Var, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 g0Var, @NotNull com.moloco.sdk.internal.publisher.w wVar, @NotNull a aVar, @NotNull m mVar, @NotNull com.moloco.sdk.acm.recorder.a aVar2);

    @NotNull
    InterstitialAd c(@NotNull Context context, @NotNull com.moloco.sdk.internal.services.r rVar, @NotNull String str, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 a0Var, @NotNull n0 n0Var, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l lVar, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 g0Var, @NotNull com.moloco.sdk.internal.publisher.w wVar, @NotNull com.moloco.sdk.acm.recorder.a aVar);

    @NotNull
    Banner d(@NotNull Context context, @NotNull com.moloco.sdk.internal.services.r rVar, @NotNull String str, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 a0Var, @NotNull n0 n0Var, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 g0Var, @NotNull com.moloco.sdk.internal.publisher.w wVar, @NotNull a aVar, @NotNull m mVar, @NotNull com.moloco.sdk.acm.recorder.a aVar2);

    @NotNull
    RewardedInterstitialAd e(@NotNull Context context, @NotNull com.moloco.sdk.internal.services.r rVar, @NotNull String str, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 a0Var, @NotNull n0 n0Var, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l lVar, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 g0Var, @NotNull com.moloco.sdk.internal.publisher.w wVar, @NotNull com.moloco.sdk.acm.recorder.a aVar);

    @NotNull
    NativeAd f(@NotNull Context context, @NotNull com.moloco.sdk.internal.services.r rVar, @NotNull com.moloco.sdk.internal.services.b0 b0Var, @NotNull String str, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 a0Var, @NotNull n0 n0Var, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l lVar, @NotNull a aVar, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 g0Var, @NotNull com.moloco.sdk.internal.publisher.w wVar, @NotNull com.moloco.sdk.internal.services.j jVar, @NotNull com.moloco.sdk.internal.services.l lVar2, @NotNull com.moloco.sdk.acm.recorder.a aVar2);
}
