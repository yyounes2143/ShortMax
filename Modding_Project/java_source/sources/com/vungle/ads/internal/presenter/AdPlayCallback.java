package com.vungle.ads.internal.presenter;

import com.vungle.ads.VungleError;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdPlayCallback.kt */
@Metadata
/* loaded from: classes7.dex */
public interface AdPlayCallback {
    void onAdClick(@Nullable String str);

    void onAdEnd(@Nullable String str);

    void onAdImpression(@Nullable String str);

    void onAdLeftApplication(@Nullable String str);

    void onAdRewarded(@Nullable String str);

    void onAdStart(@Nullable String str);

    void onFailure(@NotNull VungleError vungleError);
}
