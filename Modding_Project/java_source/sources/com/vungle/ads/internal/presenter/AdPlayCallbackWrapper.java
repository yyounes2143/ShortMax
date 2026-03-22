package com.vungle.ads.internal.presenter;

import com.vungle.ads.VungleError;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdPlayCallback.kt */
@Metadata
/* loaded from: classes7.dex */
public class AdPlayCallbackWrapper implements AdPlayCallback {
    @NotNull
    private final AdPlayCallback adPlayCallback;

    public AdPlayCallbackWrapper(@NotNull AdPlayCallback adPlayCallback) {
        Intrinsics.checkNotNullParameter(adPlayCallback, "adPlayCallback");
        this.adPlayCallback = adPlayCallback;
    }

    @Override // com.vungle.ads.internal.presenter.AdPlayCallback
    public void onAdClick(@Nullable String str) {
        this.adPlayCallback.onAdClick(str);
    }

    @Override // com.vungle.ads.internal.presenter.AdPlayCallback
    public void onAdEnd(@Nullable String str) {
        this.adPlayCallback.onAdEnd(str);
    }

    @Override // com.vungle.ads.internal.presenter.AdPlayCallback
    public void onAdImpression(@Nullable String str) {
        this.adPlayCallback.onAdImpression(str);
    }

    @Override // com.vungle.ads.internal.presenter.AdPlayCallback
    public void onAdLeftApplication(@Nullable String str) {
        this.adPlayCallback.onAdLeftApplication(str);
    }

    @Override // com.vungle.ads.internal.presenter.AdPlayCallback
    public void onAdRewarded(@Nullable String str) {
        this.adPlayCallback.onAdRewarded(str);
    }

    @Override // com.vungle.ads.internal.presenter.AdPlayCallback
    public void onAdStart(@Nullable String str) {
        this.adPlayCallback.onAdStart(str);
    }

    @Override // com.vungle.ads.internal.presenter.AdPlayCallback
    public void onFailure(@NotNull VungleError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.adPlayCallback.onFailure(error);
    }
}
