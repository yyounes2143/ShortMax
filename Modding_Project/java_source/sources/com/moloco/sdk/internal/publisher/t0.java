package com.moloco.sdk.internal.publisher;

import com.moloco.sdk.publisher.MolocoAd;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public interface t0 {
    void a(@NotNull com.moloco.sdk.internal.c0 c0Var);

    void onAdClicked(@NotNull MolocoAd molocoAd);

    void onAdHidden(@NotNull MolocoAd molocoAd);

    void onAdShowSuccess(@NotNull MolocoAd molocoAd);
}
