package com.vungle.ads.internal;

import android.content.Context;
import com.vungle.ads.internal.model.Placement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: InterstitialAdInternal.kt */
@Metadata
/* loaded from: classes7.dex */
public final class InterstitialAdInternal extends FullscreenAdInternal {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InterstitialAdInternal(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.vungle.ads.internal.AdInternal
    public boolean isValidAdTypeForPlacement(@NotNull Placement placement) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        if (!placement.isInterstitial() && !placement.isAppOpen()) {
            return false;
        }
        return true;
    }
}
