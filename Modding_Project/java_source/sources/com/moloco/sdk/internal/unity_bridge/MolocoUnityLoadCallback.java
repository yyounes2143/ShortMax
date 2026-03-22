package com.moloco.sdk.internal.unity_bridge;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes6.dex */
public interface MolocoUnityLoadCallback {
    void onAdLoadFailed(@NotNull String str, @NotNull String str2);

    void onAdLoadSuccess(@NotNull String str);
}
