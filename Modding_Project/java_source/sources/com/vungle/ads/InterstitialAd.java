package com.vungle.ads;

import android.content.Context;
import com.vungle.ads.internal.InterstitialAdInternal;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: InterstitialAd.kt */
@Metadata
/* loaded from: classes7.dex */
public final class InterstitialAd extends BaseFullscreenAd {
    public /* synthetic */ InterstitialAd(Context context, String str, AdConfig adConfig, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, (i10 & 4) != 0 ? new AdConfig() : adConfig);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InterstitialAd(@NotNull Context context, @NotNull String placementId, @NotNull AdConfig adConfig) {
        super(context, placementId, adConfig);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
    }

    @Override // com.vungle.ads.BaseAd
    @NotNull
    public InterstitialAdInternal constructAdInternal$vungle_ads_release(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new InterstitialAdInternal(context);
    }
}
