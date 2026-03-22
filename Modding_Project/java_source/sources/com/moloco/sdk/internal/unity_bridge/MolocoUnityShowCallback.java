package com.moloco.sdk.internal.unity_bridge;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes6.dex */
public interface MolocoUnityShowCallback {
    void onAdClicked(@NotNull String str);

    void onAdHidden(@NotNull String str);

    void onAdRewarded(@NotNull String str);

    void onAdShowFailed(@NotNull String str, @NotNull String str2);

    void onAdShowSuccess(@NotNull String str);
}
